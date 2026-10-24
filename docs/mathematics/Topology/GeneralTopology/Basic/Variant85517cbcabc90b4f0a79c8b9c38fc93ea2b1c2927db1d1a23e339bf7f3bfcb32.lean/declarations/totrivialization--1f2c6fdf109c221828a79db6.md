# toTrivialization'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7eafdd971837effe279f752530258b3212d4e5207a235b7eb7a28b36e009eb62",
  "kind": "def",
  "lexical_name": "toTrivialization'",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "totrivialization--1f2c6fdf109c221828a79db6",
  "source": {
    "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f2c6fdf109c221828a79db66b980a3d4be341480b40166340e19db64f645ec6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7eafdd971837effe279f752530258b3212d4e5207a235b7eb7a28b36e009eb62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toTrivialization' {x : X} [Nonempty I] (h : IsEvenlyCovered f x I) :
    Trivialization I f := by
  choose _ U hxU hU hfU H hH using h
  classical exact
  { toFun e := if he : f e ∈ U then ⟨(H ⟨e, he⟩).1, (H ⟨e, he⟩).2⟩ else ⟨x, Classical.arbitrary I⟩
    invFun xi := H.symm (if hx : xi.1 ∈ U then ⟨xi.1, hx⟩ else ⟨x, hxU⟩, xi.2)
    source := f ⁻¹' U
    target := U ×ˢ Set.univ
    map_source' e (he : f e ∈ U) := by simp [he]
    map_target' _ _ := Subtype.coe_prop _
    left_inv' e (he : f e ∈ U) := by simp [he]
    right_inv' xi := by rintro ⟨hx, -⟩; simpa [hx] using fun h ↦ (h (H.symm _).2).elim
    open_source := hfU
    open_target := hU.prod isOpen_univ
    continuousOn_toFun := continuousOn_iff_continuous_domRestrict.mpr <|
      ((continuous_subtype_val.prodMap continuous_id).comp H.continuous).congr
      fun ⟨e, (he : f e ∈ U)⟩ ↦ by simp [Prod.map, he]
    continuousOn_invFun := continuousOn_iff_continuous_domRestrict.mpr <|
      ((continuous_subtype_val.comp H.symm.continuous).comp (by fun_prop :
        Continuous fun ui ↦ ⟨⟨_, ui.2.1⟩, ui.1.2⟩)).congr fun ⟨⟨x, i⟩, ⟨hx, _⟩⟩ ↦ by simp [hx]
    baseSet := U
    open_baseSet := hU
    source_eq := rfl
    target_eq := rfl
    proj_toFun e (he : f e ∈ U) := by simp [he, hH] }

/-- If `x` is evenly covered by `f`, then we can construct a trivialization of `f` at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c19662de3e595c9ce71ed4980b9b5d7fe3c51648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
