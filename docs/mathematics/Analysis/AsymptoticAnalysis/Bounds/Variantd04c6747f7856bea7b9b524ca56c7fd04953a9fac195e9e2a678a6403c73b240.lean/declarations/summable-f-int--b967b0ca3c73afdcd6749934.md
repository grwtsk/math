# summable_f_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94378414-bc38-2f4a-b817-c94a1eb2d154",
  "kind": "lemma",
  "lexical_name": "summable_f_int",
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
  "slug": "summable-f-int--b967b0ca3c73afdcd6749934",
  "source": {
    "blob": "b1523984d5597f985d75b22249db7e5509d54bef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 228,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b967b0ca3c73afdcd6749934eb4978b1e1efd0dbd9dba017409a8aac4fedcd14",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94378414-bc38-2f4a-b817-c94a1eb2d154`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_f_int (k : ℕ) (a : ℝ) {t : ℝ} (ht : 0 < t) : Summable (f_int k a t) := by
  apply Summable.of_norm
  suffices ∀ n, ‖f_int k a t n‖ = ‖(Int.rec (f_nat k a t) (f_nat k (1 - a) t) : ℤ → ℝ) n‖ from
    funext this ▸ (HasSum.int_rec (summable_f_nat k a ht).hasSum
      (summable_f_nat k (1 - a) ht).hasSum).summable.norm
  intro n
  rcases n with - | m
  · simp only [f_int, f_nat, Int.ofNat_eq_natCast, Int.cast_natCast, norm_mul, norm_eq_abs, abs_pow,
      abs_abs]
  · simp only [f_int, f_nat, Int.cast_negSucc, norm_mul, norm_eq_abs, abs_pow, abs_abs,
      (by { push_cast; ring } : -↑(m + 1) + a = -(m + (1 - a))), abs_neg, neg_sq]

/-- The sum to be bounded (`ℤ` version). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1523984d5597f985d75b22249db7e5509d54bef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
