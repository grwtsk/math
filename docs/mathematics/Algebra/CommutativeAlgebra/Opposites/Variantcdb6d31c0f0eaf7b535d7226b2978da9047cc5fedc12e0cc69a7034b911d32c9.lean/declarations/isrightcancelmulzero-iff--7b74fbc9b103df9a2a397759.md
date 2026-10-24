# isRightCancelMulZero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0aea98a653e3c12575fef65db4ef2570eeac722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cdb6d31c0f0eaf7b535d7226b2978da9047cc5fedc12e0cc69a7034b911d32c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16000db3-f6bd-b3e2-d0fe-158807b005e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df0a987e-9a55-12d0-233c-e14d10a3466c",
  "kind": "theorem",
  "lexical_name": "isRightCancelMulZero_iff",
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
  "slug": "isrightcancelmulzero-iff--7b74fbc9b103df9a2a397759",
  "source": {
    "blob": "a0aea98a653e3c12575fef65db4ef2570eeac722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 115,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Opposites/Variantcdb6d31c0f0eaf7b535d7226b2978da9047cc5fedc12e0cc69a7034b911d32c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b74fbc9b103df9a2a3977598db827b85d1dc371475fa6b26b367a65ba50f9ff",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Opposites/Variantcdb6d31c0f0eaf7b535d7226b2978da9047cc5fedc12e0cc69a7034b911d32c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df0a987e-9a55-12d0-233c-e14d10a3466c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRightCancelMulZero_iff :
    IsRightCancelMulZero R[X] ↔ IsRightCancelMulZero R ∧ IsCancelAdd R := by
  rw [← MulOpposite.isLeftCancelMulZero_iff, (opRingEquiv R).isLeftCancelMulZero_iff,
    isLeftCancelMulZero_iff, MulOpposite.isLeftCancelMulZero_iff, MulOpposite.isCancelAdd_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Opposites/Variantcdb6d31c0f0eaf7b535d7226b2978da9047cc5fedc12e0cc69a7034b911d32c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Opposites/Variantcdb6d31c0f0eaf7b535d7226b2978da9047cc5fedc12e0cc69a7034b911d32c9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0aea98a653e3c12575fef65db4ef2570eeac722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
