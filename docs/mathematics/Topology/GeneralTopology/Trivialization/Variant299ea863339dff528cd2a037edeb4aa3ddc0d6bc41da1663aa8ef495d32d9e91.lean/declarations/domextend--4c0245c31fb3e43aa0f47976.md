# domExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa9e368d58e8a0b4b048f044571a2cf5c6fe73e183a6abb6de5b9710db739955",
  "kind": "def",
  "lexical_name": "domExtend",
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
  "slug": "domextend--4c0245c31fb3e43aa0f47976",
  "source": {
    "blob": "91b5e7139bf1f2d442ffa4a4297aab91a9cf0168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 319,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c0245c31fb3e43aa0f47976ca9d39cf38de5b13ef2c29686de66dd5691d1d2c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa9e368d58e8a0b4b048f044571a2cf5c6fe73e183a6abb6de5b9710db739955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def domExtend {s : Set B} (e : Pretrivialization F fun z : proj ⁻¹' s ↦ proj z)
    [Nonempty (Z → F)] : Pretrivialization F proj where
  toFun z := by classical exact if h : proj z ∈ s then e ⟨z, h⟩
    else (proj z, Classical.arbitrary (Z → F) z)
  invFun x := e.invFun x
  source := Subtype.val '' e.source
  target := e.target
  map_source' _ := by
    rintro ⟨⟨z, hzp : proj z ∈ s⟩, hze, rfl⟩
    simpa [hzp, e.coe_fst hze] using e.map_source hze
  map_target' x hx := by simpa using ⟨(e.invFun x).2, e.map_target hx⟩
  left_inv' _ := by rintro ⟨⟨z, hzp : proj z ∈ s⟩, hze, rfl⟩; simp [hzp, e.symm_apply_apply hze]
  right_inv' x hx := (dite_eq_left (e.invFun x).2).trans (e.right_inv hx)
  open_target := e.open_target
  baseSet := e.baseSet
  open_baseSet := e.open_baseSet
  source_eq := by ext z; simpa [e.source_eq] using
    (e.proj_symm_apply' · ▸ (e.invFun (proj z, Classical.arbitrary (Z → F) z)).2)
  target_eq := by ext; simp [e.target_eq]
  proj_toFun _ := by rintro ⟨⟨z, hzp : proj z ∈ s⟩, hze, rfl⟩; simp [hzp, e.coe_fst hze]

/-- Extend the base of a pretrivialization from a set to the whole space. -/
@[simps toFun source target baseSet]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b5e7139bf1f2d442ffa4a4297aab91a9cf0168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
