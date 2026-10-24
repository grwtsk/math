# isMaximal_comap_of_isIntegral_of_isMaximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b519251123fc5ad17f47dd71d4752e9801793db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:774c4317-44e7-a319-ecdd-371bd4a6a0c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11a066f5-2f94-6e41-03e6-a63e8a2e3d7b",
  "kind": "theorem",
  "lexical_name": "isMaximal_comap_of_isIntegral_of_isMaximal",
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
  "slug": "ismaximal-comap-of-isintegral-of-ismaximal--00d1f972bec6de1152c64e4f",
  "source": {
    "blob": "7b519251123fc5ad17f47dd71d4752e9801793db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 201,
    "path": "GRWTSK/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00d1f972bec6de1152c64e4ff69a8286633a0a0e2de1a4c424b8147b96867c64",
  "verification": {
    "reference": "docs/verification/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a066f5-2f94-6e41-03e6-a63e8a2e3d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMaximal_comap_of_isIntegral_of_isMaximal [Algebra.IsIntegral R S] (I : Ideal S)
    [hI : I.IsMaximal] : IsMaximal (I.comap (algebraMap R S)) := by
  refine Ideal.Quotient.maximal_of_isField _ ?_
  haveI : IsPrime (I.comap (algebraMap R S)) := comap_isPrime _ _
  exact isField_of_isIntegral_of_isField
    algebraMap_quotient_injective (by rwa [← Quotient.maximal_ideal_iff_isField_quotient])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variant806bcfca9dc5ad60fb4af27e5892943bd28c8ab31e5ba79f4d78cce9f50325e1.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b519251123fc5ad17f47dd71d4752e9801793db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
