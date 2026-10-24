# pow_lt_one_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:335a12f8-bd72-6290-bbc1-610ac0fe99e2",
  "kind": "theorem",
  "lexical_name": "pow_lt_one_of_lt",
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
  "slug": "pow-lt-one-of-lt--2dcf3073ed9ed87f26f3a592",
  "source": {
    "blob": "8c452562c9cf9fe98dec23178a730f0e91a7d9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dcf3073ed9ed87f26f3a59218d719d7e02a6a2b9a5d5ba52beb06948e6cdc33",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:335a12f8-bd72-6290-bbc1-610ac0fe99e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_lt_one_of_lt {a : M} {n : ℕ} (h : a < 1) (hn : n ≠ 0) : a ^ n < 1 := by
  rcases Nat.exists_eq_succ_of_ne_zero hn with ⟨k, rfl⟩
  rw [pow_succ']
  exact mul_lt_one_of_lt_of_le h (pow_le_one_of_le h.le _)

end Left

@[to_additive nsmul_nonneg] alias one_le_pow_of_one_le' := Left.one_le_pow_of_le
@[to_additive nsmul_nonpos] alias pow_le_one' := Left.pow_le_one_of_le
@[to_additive nsmul_neg] alias pow_lt_one' := Left.pow_lt_one_of_lt

section Left

variable [MulLeftMono M] {a : M} {n : ℕ}

@[to_additive nsmul_left_monotone]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c452562c9cf9fe98dec23178a730f0e91a7d9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
