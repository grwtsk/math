# IntuitionPriority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7019a79214d064b1bb7bb5299e7edd0ab15c15362a28fd1da1ac300ec6b94fd4",
  "kind": "structure",
  "lexical_name": "IntuitionPriority",
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
  "slug": "intuitionpriority--4eb0d63c2a129cba75001685",
  "source": {
    "blob": "690c4ac33dac712fda7aec2ba5a960554b814d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4eb0d63c2a129cba75001685959de329f28345f02a376bb77ff3cbc713f66eb9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7019a79214d064b1bb7bb5299e7edd0ab15c15362a28fd1da1ac300ec6b94fd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntuitionPriority where
  /-- Exact candidate obligation identity. -/
  obligationIdentity : String
  /-- Immutable target/snapshot scope. -/
  sourceIdentity : String
  /-- Estimated proof work, distinct from consumed work. -/
  estimatedProofCost : ℕ
  /-- All observations contributing to the rank. -/
  features : List PriorityFeature
  /-- Explicit deterministic explanations of the ordering decision. -/
  reasonCodes : List String
  /-- Exact signed score used by the declared ranking rule. -/
  score : ℚ
  /-- Finite proposal work already charged. -/
  proposalCost : ℕ
  deriving DecidableEq, Repr

/-- A deterministic intuition kernel takes explicit history and budget to a finite ranked list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant92c00b2a6afed88c0d0813e1e410cc423cd93322170f0e118e0c7615062eb5e4.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `690c4ac33dac712fda7aec2ba5a960554b814d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
