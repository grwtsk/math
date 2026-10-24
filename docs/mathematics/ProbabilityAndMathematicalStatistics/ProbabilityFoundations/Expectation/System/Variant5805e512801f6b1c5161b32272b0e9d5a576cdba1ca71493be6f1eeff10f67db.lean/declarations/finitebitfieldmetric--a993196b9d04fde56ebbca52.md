# FiniteBitfieldMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d12626e0e67f851ef96c76a7dfe6e7dd644ccc344b7c0112e3e30324f3a87bee",
  "kind": "structure",
  "lexical_name": "FiniteBitfieldMetric",
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
  "slug": "finitebitfieldmetric--a993196b9d04fde56ebbca52",
  "source": {
    "blob": "01848d0ade5fbe253e669e207a9c5524e2405d9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a993196b9d04fde56ebbca521cf563f8149a6cbc9d401dd86e05ae0aa1d7c602",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d12626e0e67f851ef96c76a7dfe6e7dd644ccc344b7c0112e3e30324f3a87bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteBitfieldMetric (bits : Nat) where
  distance :
    Bitfield bits → Bitfield bits → ℝ
  distanceNonnegative :
    ∀ left right,
      0 ≤ distance left right
  distanceSelf :
    ∀ state,
      distance state state = 0
  distanceSeparated :
    ∀ {left right},
      distance left right = 0 →
      left = right
  distanceSymmetric :
    ∀ left right,
      distance left right =
        distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle +
          distance middle right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01848d0ade5fbe253e669e207a9c5524e2405d9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
