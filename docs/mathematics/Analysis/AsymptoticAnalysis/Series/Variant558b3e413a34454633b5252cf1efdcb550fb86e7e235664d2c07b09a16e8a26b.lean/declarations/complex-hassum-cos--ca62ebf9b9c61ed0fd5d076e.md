# Complex.hasSum_cos'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "548323bcdb8860aa576640abde9136cfb5b9bd5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3d21038-351c-0a15-bc86-dfb63f5f2e76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e4b483f-7d66-e9ac-c1b4-b9cda7f22fb1",
  "kind": "theorem",
  "lexical_name": "Complex.hasSum_cos'",
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
  "slug": "complex-hassum-cos--ca62ebf9b9c61ed0fd5d076e",
  "source": {
    "blob": "548323bcdb8860aa576640abde9136cfb5b9bd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 31,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca62ebf9b9c61ed0fd5d076e823225102caf15958cf1a15530d65a55e6f08e44",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e4b483f-7d66-e9ac-c1b4-b9cda7f22fb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.hasSum_cos' (z : ℂ) :
    HasSum (fun n : ℕ => (z * Complex.I) ^ (2 * n) / ↑(2 * n)!) (Complex.cos z) := by
  rw [Complex.cos, Complex.exp_eq_exp_ℂ]
  have := ((expSeries_div_hasSum_exp ℂ (z * Complex.I)).add
    (expSeries_div_hasSum_exp ℂ (-z * Complex.I))).div_const 2
  replace := (Nat.divModEquiv 2).symm.hasSum_iff.mpr this
  dsimp [Function.comp_def] at this
  simp_rw [← mul_comm 2 _] at this
  refine this.prod_fiberwise fun k => ?_
  dsimp only
  convert hasSum_fintype (_ : Fin 2 → ℂ) using 1
  rw [Fin.sum_univ_two]
  simp_rw [Fin.val_zero, Fin.val_one, add_zero, pow_succ, pow_mul, mul_pow, neg_sq, ← two_mul,
    neg_mul, mul_neg, neg_div, add_neg_cancel, zero_div, add_zero,
    mul_div_cancel_left₀ _ (two_ne_zero : (2 : ℂ) ≠ 0)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant558b3e413a34454633b5252cf1efdcb550fb86e7e235664d2c07b09a16e8a26b.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `548323bcdb8860aa576640abde9136cfb5b9bd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
