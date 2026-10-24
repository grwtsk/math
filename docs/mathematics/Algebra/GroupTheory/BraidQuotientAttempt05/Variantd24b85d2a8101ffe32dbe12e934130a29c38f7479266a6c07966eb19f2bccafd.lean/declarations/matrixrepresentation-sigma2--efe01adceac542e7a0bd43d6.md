# matrixRepresentation_sigma2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f11b0ae-6a91-74d0-b182-907c6b796dbd",
  "kind": "theorem",
  "lexical_name": "matrixRepresentation_sigma2",
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
  "slug": "matrixrepresentation-sigma2--efe01adceac542e7a0bd43d6",
  "source": {
    "blob": "668345986739a2f4df06c651dee5ba6fdc05eb85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 134,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efe01adceac542e7a0bd43d6b6a2699f1c1cddabc18fe256bd76be165b4edec7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f11b0ae-6a91-74d0-b182-907c6b796dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixRepresentation_sigma2 : matrixRepresentation sigma2 = lowerGenerator := by
  exact PresentedGroup.toGroup.of matrix_relator_identity

/-- Both generators have exponent one. Multiplicative is only the additive-Z type tag. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668345986739a2f4df06c651dee5ba6fdc05eb85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
