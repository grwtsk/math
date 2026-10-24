# kakeya_topos_boundary_is_surrogate_not_full_topos_claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e607170351d9f1e8ffb323aff30469840c71c77b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4f8bd79d20a6340da86852b73a06b0ed91ffc0fdae655e47278909b9c34dbf9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:025a864e-b1aa-e150-877b-70736cb5f511",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72eabf78-8278-71f0-94e0-ff57d488d227",
  "kind": "theorem",
  "lexical_name": "kakeya_topos_boundary_is_surrogate_not_full_topos_claim",
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
  "slug": "kakeya-topos-boundary-is-surrogate-not-full-topos-claim--1295d263b71f0036c578deb3",
  "source": {
    "blob": "e607170351d9f1e8ffb323aff30469840c71c77b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 561,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlKakeyaMedoidBoundary/Variantd4f8bd79d20a6340da86852b73a06b0ed91ffc0fdae655e47278909b9c34dbf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1295d263b71f0036c578deb30024259029f6777b2b403a99e1df9e84ee710d70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlKakeyaMedoidBoundary/Variantd4f8bd79d20a6340da86852b73a06b0ed91ffc0fdae655e47278909b9c34dbf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72eabf78-8278-71f0-94e0-ff57d488d227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kakeya_topos_boundary_is_surrogate_not_full_topos_claim :
    toposProtectedKakeyaBoundary.rootedCoversRepresented = true ∧
      toposProtectedKakeyaBoundary.restrictionMapsPresent = true ∧
      toposProtectedKakeyaBoundary.descentRequired = true ∧
      toposProtectedKakeyaBoundary.fullToposClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlKakeyaMedoidBoundary/Variantd4f8bd79d20a6340da86852b73a06b0ed91ffc0fdae655e47278909b9c34dbf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlKakeyaMedoidBoundary/Variantd4f8bd79d20a6340da86852b73a06b0ed91ffc0fdae655e47278909b9c34dbf9.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e607170351d9f1e8ffb323aff30469840c71c77b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
