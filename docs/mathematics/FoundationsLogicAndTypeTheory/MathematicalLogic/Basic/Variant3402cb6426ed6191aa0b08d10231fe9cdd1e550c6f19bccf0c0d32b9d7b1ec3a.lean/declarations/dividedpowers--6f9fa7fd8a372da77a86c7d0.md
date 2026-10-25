# DividedPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c2f6e81ab4fb1d59e7cf124e16769e8e9e3eb5047ab1beff7d154a2cf461076",
  "kind": "structure",
  "lexical_name": "DividedPowers",
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
  "slug": "dividedpowers--6f9fa7fd8a372da77a86c7d0",
  "source": {
    "blob": "c0b3af1fad9e007182ccf68f5d4a9b00c557889a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f9fa7fd8a372da77a86c7d06e7dcbb366217a588ebb3797d9728c365ca107c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c2f6e81ab4fb1d59e7cf124e16769e8e9e3eb5047ab1beff7d154a2cf461076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DividedPowers where
  /-- The divided power function underlying a divided power structure -/
  dpow : ℕ → A → A
  dpow_null : ∀ {n x} (_ : x ∉ I), dpow n x = 0
  dpow_zero : ∀ {x} (_ : x ∈ I), dpow 0 x = 1
  dpow_one : ∀ {x} (_ : x ∈ I), dpow 1 x = x
  dpow_mem : ∀ {n x} (_ : n ≠ 0) (_ : x ∈ I), dpow n x ∈ I
  dpow_add : ∀ {n} {x y} (_ : x ∈ I) (_ : y ∈ I),
    dpow n (x + y) = (antidiagonal n).sum fun k ↦ dpow k.1 x * dpow k.2 y
  dpow_mul : ∀ {n} {a : A} {x} (_ : x ∈ I),
    dpow n (a * x) = a ^ n * dpow n x
  mul_dpow : ∀ {m n} {x} (_ : x ∈ I),
    dpow m x * dpow n x = choose (m + n) m * dpow (m + n) x
  dpow_comp : ∀ {m n x} (_ : n ≠ 0) (_ : x ∈ I),
    dpow m (dpow n x) = uniformBell m n * dpow (m * n) x

variable (A) in
/-- The canonical `DividedPowers` structure on the zero ideal -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3402cb6426ed6191aa0b08d10231fe9cdd1e550c6f19bccf0c0d32b9d7b1ec3a.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b3af1fad9e007182ccf68f5d4a9b00c557889a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
