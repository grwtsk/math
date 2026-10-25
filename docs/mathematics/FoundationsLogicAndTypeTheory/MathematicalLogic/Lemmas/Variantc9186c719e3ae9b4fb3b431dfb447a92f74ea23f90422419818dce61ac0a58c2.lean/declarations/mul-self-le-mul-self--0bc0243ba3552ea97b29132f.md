# mul_self_le_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:257bffd7-7e95-357f-7ec2-d799b1807b07",
  "kind": "theorem",
  "lexical_name": "mul_self_le_mul_self",
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
  "slug": "mul-self-le-mul-self--0bc0243ba3552ea97b29132f",
  "source": {
    "blob": "0d466956e2ecf2fb2d557281db440ca0d5e6f025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 742,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bc0243ba3552ea97b29132f6b4a7fb6b8a2eb4934b5739e0fb020506433f853",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:257bffd7-7e95-357f-7ec2-d799b1807b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 742–745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_self_le_mul_self {m n : Nat} (h : m ≤ n) : m * m ≤ n * n := Nat.mul_le_mul h h

-- This name is consistent with mathlib's top level definitions for groups with zero, where there
-- are `mul_lt_mul`, `mul_lt_mul'` and `mul_lt_mul''`, all with different sets of hypotheses.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean#L742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d466956e2ecf2fb2d557281db440ca0d5e6f025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
