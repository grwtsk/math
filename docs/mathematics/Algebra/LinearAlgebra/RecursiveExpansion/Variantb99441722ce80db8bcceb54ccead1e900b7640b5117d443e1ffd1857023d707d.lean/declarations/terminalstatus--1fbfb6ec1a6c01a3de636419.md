# terminalStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b22af15614bfda7f3a97d937897ff4043e9fa09d5c29ff643dc2b607d65499d",
  "kind": "def",
  "lexical_name": "terminalStatus",
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
  "slug": "terminalstatus--1fbfb6ec1a6c01a3de636419",
  "source": {
    "blob": "b7d3e3a3b885f322a9a44f9aaf33916de0761ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fbfb6ec1a6c01a3de636419f551a57f6d83b5fbe3ce7faf6b0fe97ea71718bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b22af15614bfda7f3a97d937897ff4043e9fa09d5c29ff643dc2b607d65499d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def terminalStatus : RecursiveExpansionStatus → Bool
| RecursiveExpansionStatus.thresholdMet => true
| RecursiveExpansionStatus.blocked => true
| RecursiveExpansionStatus.nonGoal => true
| RecursiveExpansionStatus.requiresCertificate => true
| RecursiveExpansionStatus.requiresHumanReview => true
| RecursiveExpansionStatus.localModelUnavailable => true
| RecursiveExpansionStatus.offlineFixtureUsed => true
| _ => false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RecursiveExpansion/Variantb99441722ce80db8bcceb54ccead1e900b7640b5117d443e1ffd1857023d707d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d3e3a3b885f322a9a44f9aaf33916de0761ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
