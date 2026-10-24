# upperContinuousDivisorIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f673387707b5c58f27c957d834d51df2440b5ace8ff1a4bc05b139e0988916a",
  "kind": "def",
  "lexical_name": "upperContinuousDivisorIntegral",
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
  "slug": "uppercontinuousdivisorintegral--c1041e38b05d58cb9a59bfbd",
  "source": {
    "blob": "617d32e0eb2fc5c7de1ae9df52acc3aa8ce9ecc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 25,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variant050c1ebec0e3dc5a219c5ebd8d103b74248a0236a59825ed0973f2a0d5f0d71f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1041e38b05d58cb9a59bfbde47dca58b480ae61b5139f933d87d04d5796c251",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variant050c1ebec0e3dc5a219c5ebd8d103b74248a0236a59825ed0973f2a0d5f0d71f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f673387707b5c58f27c957d834d51df2440b5ace8ff1a4bc05b139e0988916a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def upperContinuousDivisorIntegral (A d : ℝ) : ℝ :=
  ∫ u in Ioi (1 : ℝ), logProfile A d u

/-- Literal finite I_A(U), retaining each actual signed divisor coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variant050c1ebec0e3dc5a219c5ebd8d103b74248a0236a59825ed0973f2a0d5f0d71f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceOmegaContinuousSectorAttempt02/Variant050c1ebec0e3dc5a219c5ebd8d103b74248a0236a59825ed0973f2a0d5f0d71f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `617d32e0eb2fc5c7de1ae9df52acc3aa8ce9ecc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
