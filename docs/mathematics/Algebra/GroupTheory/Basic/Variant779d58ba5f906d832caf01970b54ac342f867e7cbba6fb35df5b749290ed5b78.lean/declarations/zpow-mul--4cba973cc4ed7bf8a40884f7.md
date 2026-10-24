# zpow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:375ecee9-16bd-d77c-daeb-c19c8b66dbea",
  "kind": "lemma",
  "lexical_name": "zpow_mul",
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
  "slug": "zpow-mul--4cba973cc4ed7bf8a40884f7",
  "source": {
    "blob": "4b1356d273358211ed708b374cc2b2b703089639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 505,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant779d58ba5f906d832caf01970b54ac342f867e7cbba6fb35df5b749290ed5b78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cba973cc4ed7bf8a40884f788be5abae218e2bbee2a6d6be540fd066424cb75",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant779d58ba5f906d832caf01970b54ac342f867e7cbba6fb35df5b749290ed5b78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:375ecee9-16bd-d77c-daeb-c19c8b66dbea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive mul_zsmul'] lemma zpow_mul (a : α) : ∀ m n : ℤ, a ^ (m * n) = (a ^ m) ^ n
  | (m : ℕ), (n : ℕ) => by
    rw [zpow_natCast, zpow_natCast, ← pow_mul, ← zpow_natCast]
    rfl
  | (m : ℕ), .negSucc n => by
    rw [zpow_natCast, zpow_negSucc, ← pow_mul, Int.ofNat_mul_negSucc, zpow_neg, inv_inj,
      ← zpow_natCast]
  | .negSucc m, (n : ℕ) => by
    rw [zpow_natCast, zpow_negSucc, ← inv_pow, ← pow_mul, Int.negSucc_mul_ofNat, zpow_neg, inv_pow,
      inv_inj, ← zpow_natCast]
  | .negSucc m, .negSucc n => by
    rw [zpow_negSucc, zpow_negSucc, Int.negSucc_mul_negSucc, inv_pow, inv_inv, ← pow_mul, ←
      zpow_natCast]
    rfl

@[to_additive mul_zsmul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant779d58ba5f906d832caf01970b54ac342f867e7cbba6fb35df5b749290ed5b78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant779d58ba5f906d832caf01970b54ac342f867e7cbba6fb35df5b749290ed5b78.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1356d273358211ed708b374cc2b2b703089639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
