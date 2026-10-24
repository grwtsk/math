# Submodule.iSup_eq_toSubmodule_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67a020ee476dd4f3979130451d66a933bb5cd29e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9e1e3c5-cc30-b8c3-d0df-14043efe23cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0800bb7-893d-4197-3b68-8b4fcca7e77e",
  "kind": "theorem",
  "lexical_name": "Submodule.iSup_eq_toSubmodule_range",
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
  "slug": "submodule-isup-eq-tosubmodule-range--6d4853dafa80077a29cf4631",
  "source": {
    "blob": "67a020ee476dd4f3979130451d66a933bb5cd29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 325,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d4853dafa80077a29cf4631910ea8316ddae8e4f2ce64bdd91ea1293d2a7dc9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0800bb7-893d-4197-3b68-8b4fcca7e77e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.iSup_eq_toSubmodule_range [AddMonoid ι] [CommSemiring S] [Semiring R]
    [Algebra S R] (A : ι → Submodule S R) [SetLike.GradedMonoid A] :
    ⨆ i, A i = Subalgebra.toSubmodule (DirectSum.coeAlgHom A).range :=
  (Submodule.iSup_eq_range_dfinsupp_lsum A).trans <| SetLike.coe_injective rfl
#align submodule.supr_eq_to_submodule_range Submodule.iSup_eq_toSubmodule_range

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Varianta6692e8b9abb7a34ea96f9c63b702b2e9a39b072a60ebfbb97b41d275613e762.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67a020ee476dd4f3979130451d66a933bb5cd29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
