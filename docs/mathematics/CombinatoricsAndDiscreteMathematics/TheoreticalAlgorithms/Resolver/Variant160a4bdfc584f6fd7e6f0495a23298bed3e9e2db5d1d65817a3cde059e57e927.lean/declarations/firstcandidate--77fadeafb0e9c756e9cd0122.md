# firstCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebf0fb327aeaf13aaf0cc4cc2688495a223119cdbcb2ab43cef9aee4a696d06d",
  "kind": "def",
  "lexical_name": "firstCandidate",
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
  "slug": "firstcandidate--77fadeafb0e9c756e9cd0122",
  "source": {
    "blob": "7c4e31f1a035aacbf662db9cce749d43775d7124",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variant160a4bdfc584f6fd7e6f0495a23298bed3e9e2db5d1d65817a3cde059e57e927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77fadeafb0e9c756e9cd012217a8d67381e538eaeed764094d935eb0ec6d2186",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variant160a4bdfc584f6fd7e6f0495a23298bed3e9e2db5d1d65817a3cde059e57e927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebf0fb327aeaf13aaf0cc4cc2688495a223119cdbcb2ab43cef9aee4a696d06d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def firstCandidate
    (cut : TensorAlignmentCut Context N D) :
    Option (TensorAlignmentCandidate Context N D) :=
  match cut.stableCandidate with
  | some certificate => some (.stable certificate)
  | none =>
      match cut.unitaryCandidates.head? with
      | some certificate => some (.unitaryExit certificate)
      | none =>
          match cut.anchorCandidates.head? with
          | some certificate => some (.anchorRebirth certificate)
          | none => none

/-- Total finite resolver; it performs no proof search or state mutation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variant160a4bdfc584f6fd7e6f0495a23298bed3e9e2db5d1d65817a3cde059e57e927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variant160a4bdfc584f6fd7e6f0495a23298bed3e9e2db5d1d65817a3cde059e57e927.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4e31f1a035aacbf662db9cce749d43775d7124` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
