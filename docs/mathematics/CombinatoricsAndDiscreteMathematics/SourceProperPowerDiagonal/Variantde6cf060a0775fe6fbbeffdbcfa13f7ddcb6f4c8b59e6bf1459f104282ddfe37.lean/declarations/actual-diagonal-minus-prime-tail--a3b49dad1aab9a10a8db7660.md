# actual_diagonal_minus_prime_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b3c106a-4985-63c4-3d64-ff60b1b002bd",
  "kind": "theorem",
  "lexical_name": "actual_diagonal_minus_prime_tail",
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
  "slug": "actual-diagonal-minus-prime-tail--a3b49dad1aab9a10a8db7660",
  "source": {
    "blob": "965313167fbc86c4d5fb900c2e45c2c8c74d2124",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantde6cf060a0775fe6fbbeffdbcfa13f7ddcb6f4c8b59e6bf1459f104282ddfe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3b49dad1aab9a10a8db7660bfbf3eed30829597114b66887394edbce345a213",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantde6cf060a0775fe6fbbeffdbcfa13f7ddcb6f4c8b59e6bf1459f104282ddfe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b3c106a-4985-63c4-3d64-ff60b1b002bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_diagonal_minus_prime_tail (Q A : ℝ) (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |typeTwoDiagonal A - retainedPrimeDiagonal A| ≤ powerTailBudget ⌊Q ^ 2⌋₊ := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hQU : 1 ≤ ⌊Q ^ 2⌋₊ := (Nat.one_le_floor_iff _).mpr (by nlinarith)
  have hUA : ⌊Q ^ 2⌋₊ ≤ vaughanCutoff A := by
    unfold vaughanCutoff
    exact Nat.floor_mono (by nlinarith)
  exact (actual_diagonal_minus_prime_le_budget A hA).trans
    (powerTailBudget_antitone (by change (1 : ℝ) ≤ ⌊Q ^ 2⌋₊; exact_mod_cast hQU)
      (by change (1 : ℝ) ≤ vaughanCutoff A; exact_mod_cast vaughanCutoff_pos A hA)
      (by exact_mod_cast hUA))

end RH16ProperPowerDiagonal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantde6cf060a0775fe6fbbeffdbcfa13f7ddcb6f4c8b59e6bf1459f104282ddfe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantde6cf060a0775fe6fbbeffdbcfa13f7ddcb6f4c8b59e6bf1459f104282ddfe37.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965313167fbc86c4d5fb900c2e45c2c8c74d2124` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
