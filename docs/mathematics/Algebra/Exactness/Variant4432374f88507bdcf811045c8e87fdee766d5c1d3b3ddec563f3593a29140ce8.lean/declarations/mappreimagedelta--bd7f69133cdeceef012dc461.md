# mapPreimageDelta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4b7ded9a5a10cb16b1d4eb018a85f194746f94183ed56cbeb306f61037a30ee",
  "kind": "def",
  "lexical_name": "mapPreimageDelta",
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
  "slug": "mappreimagedelta--bd7f69133cdeceef012dc461",
  "source": {
    "blob": "669174773d5962bcafa3dc45e701054efeb360b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 46,
    "path": "GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd7f69133cdeceef012dc46189f9cfdc5980bc0079c7c397bc181986bc87d0c6",
  "verification": {
    "reference": "docs/verification/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4b7ded9a5a10cb16b1d4eb018a85f194746f94183ed56cbeb306f61037a30ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def mapPreimageDelta (hf : Function.Surjective f) (x : AdicCauchySequence I N)
    {n : ℕ} {y yₙ : M} (hy : f y = x (n + 1)) (hyₙ : f yₙ = x n) :
    {d : (I ^ n • ⊤ : Submodule R M) | f d = f (yₙ - y) } :=
  have h : f (yₙ - y) ∈ Submodule.map f (I ^ n • ⊤ : Submodule R M) := by
    rw [Submodule.map_smul'', Submodule.map_top, LinearMap.range_eq_top.2 hf,
      map_sub, hyₙ, hy, ← Submodule.neg_mem_iff, neg_sub, ← SModEq.sub_mem]
    exact AdicCauchySequence.mk_eq_mk (Nat.le_succ n) x
  ⟨⟨h.choose, h.choose_spec.1⟩, h.choose_spec.2⟩

/- Inductively construct preimage of cauchy sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `669174773d5962bcafa3dc45e701054efeb360b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
