# lift_rank_le_of_injective_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ac3a82c82b62128dd2c248938f3d544be49a992",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8182c539-16a3-89f9-8eaa-5e9802a35fda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:610e8e76-4e9a-ac48-8276-fed7c6ca5449",
  "kind": "theorem",
  "lexical_name": "lift_rank_le_of_injective_injective",
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
  "slug": "lift-rank-le-of-injective-injective--cb21fcd6c90149307b750c40",
  "source": {
    "blob": "9ac3a82c82b62128dd2c248938f3d544be49a992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb21fcd6c90149307b750c408f2b06036fe3258251d236d262c0858fc00885a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:610e8e76-4e9a-ac48-8276-fed7c6ca5449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_le_of_injective_injective
    (i : R' →+* R) (j : S →+* S') (hi : Injective i) (hj : Injective j)
    (hc : (j.comp (algebraMap R S)).comp i = algebraMap R' S') :
    lift.{v'} (Module.rank R S) ≤ lift.{v} (Module.rank R' S') := by
  refine _root_.lift_rank_le_of_injective_injectiveₛ i j hi hj fun r _ ↦ ?_
  have := congr($hc r)
  simp only [RingHom.coe_comp, comp_apply] at this
  simp_rw [smul_def, AddMonoidHom.coe_coe, map_mul, this]

/-- If `S / R` and `S' / R'` are algebras, `i : R →+* R'` is a surjective ring homomorphism,
`j : S →+* S'` is an injective ring homomorphism, such that `R → R' → S'` and `R → S → S'` commute,
then the rank of `S / R` is smaller than or equal to the rank of `S' / R'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac3a82c82b62128dd2c248938f3d544be49a992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
