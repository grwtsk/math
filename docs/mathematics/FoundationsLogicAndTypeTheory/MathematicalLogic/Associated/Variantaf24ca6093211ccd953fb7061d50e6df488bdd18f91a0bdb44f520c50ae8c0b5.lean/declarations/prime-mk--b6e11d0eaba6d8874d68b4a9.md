# prime_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bcec82955439a00366e57972c92e5f2e341947b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 667,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82e70376-4cad-fd75-e36e-43541fa3d352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cecaa9a-7b4e-5ccb-434a-a46cf2044f58",
  "kind": "theorem",
  "lexical_name": "prime_mk",
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
  "slug": "prime-mk--b6e11d0eaba6d8874d68b4a9",
  "source": {
    "blob": "2bcec82955439a00366e57972c92e5f2e341947b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 667,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e11d0eaba6d8874d68b4a90a230e3e258f49a2f6ec412c0424fdfeffc2696a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cecaa9a-7b4e-5ccb-434a-a46cf2044f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_mk {p : M} : Prime (Associates.mk p) ↔ Prime p := by
  rw [Prime, _root_.Prime, forall_associated]
  simp only [forall_associated, mk_ne_zero, isUnit_mk, mk_mul_mk, mk_dvd_mk]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variantaf24ca6093211ccd953fb7061d50e6df488bdd18f91a0bdb44f520c50ae8c0b5.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bcec82955439a00366e57972c92e5f2e341947b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
