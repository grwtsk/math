# StyleAuditEntry.containsForbiddenGrandClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3411d12a9422948cae09fc129bbedddc9535c64451e7cb088b37e978e37e0d4a",
  "kind": "def",
  "lexical_name": "StyleAuditEntry.containsForbiddenGrandClaim",
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
  "slug": "styleauditentry-containsforbiddengrandclaim--c5c4b5d4f95a383996cf9172",
  "source": {
    "blob": "45e8dcd2ec3ac11c6dc9ce117f64c08a088cd007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StyleAudit/Variant3baffd827de1291129feb9f88edb4d9954a2e9ac8cec7195bf5c2333ca0ffffe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5c4b5d4f95a383996cf917200c01f5fe0efd70a5da73bcef759d40e3184a3fe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StyleAudit/Variant3baffd827de1291129feb9f88edb4d9954a2e9ac8cec7195bf5c2333ca0ffffe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3411d12a9422948cae09fc129bbedddc9535c64451e7cb088b37e978e37e0d4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StyleAuditEntry.containsForbiddenGrandClaim
    (E : StyleAuditEntry) : Bool :=
  forbiddenGrandClaimPhrases.any (fun phrase => E.summary.contains phrase)

/--
Non-blocking style-audit status.

On this first pass, the audit emits a Boolean report flag rather than rejecting
normal development.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StyleAudit/Variant3baffd827de1291129feb9f88edb4d9954a2e9ac8cec7195bf5c2333ca0ffffe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StyleAudit/Variant3baffd827de1291129feb9f88edb4d9954a2e9ac8cec7195bf5c2333ca0ffffe.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e8dcd2ec3ac11c6dc9ce117f64c08a088cd007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
