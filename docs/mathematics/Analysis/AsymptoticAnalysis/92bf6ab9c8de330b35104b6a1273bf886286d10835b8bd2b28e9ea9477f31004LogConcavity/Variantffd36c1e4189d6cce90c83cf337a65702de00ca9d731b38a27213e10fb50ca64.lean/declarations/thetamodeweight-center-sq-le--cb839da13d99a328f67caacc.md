# thetaModeWeight_center_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b034230-63bd-af29-5c8b-be9f4fb252f1",
  "kind": "lemma",
  "lexical_name": "thetaModeWeight_center_sq_le",
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
  "slug": "thetamodeweight-center-sq-le--cb839da13d99a328f67caacc",
  "source": {
    "blob": "c1eaf5a74df8721a31306e3208c86453b37b58da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 111,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb839da13d99a328f67caacc3e7f5cc07dc0a4811be9343ed93f8730b6dbcc84",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b034230-63bd-af29-5c8b-be9f4fb252f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma thetaModeWeight_center_sq_le (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaModeWeight m t * (thetaModeScore m t-thetaModeScore 0 t)^2 ≤
      50*(thetaModeA t)^2 *
        ((((m+1:ℕ):ℝ)^8)*Real.exp (-thetaModeA t*(((m+1:ℕ):ℝ)^2-1))) := by
  let n : ℝ := ((m+1:ℕ):ℝ)
  let A : ℝ := thetaModeA t
  have hn : 1 ≤ n := by dsimp [n]; exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have hA : 0 < A := lt_trans (by norm_num) (thetaModeA_gt_three ht)
  have hw := (thetaModeWeight_le_modeRatio m ht).trans (thetaPhiTerm_div_zero_le m ht)
  have hg0 := thetaModeScore_sub_nonnegative m ht
  have hg := thetaModeScore_sub_le m ht
  have hgsq : (thetaModeScore m t-thetaModeScore 0 t)^2 ≤ (5*A*(n^2-1))^2 := by
    have hh := pow_le_pow_left₀ hg0 hg 2
    dsimp [A,n]
    nlinarith only [hh]
  have hn2 : 1 ≤ n^2 := one_le_pow₀ hn
  have hd : (n^2-1)^2 ≤ n^4 := by
    have hh := pow_le_pow_left₀ (by linarith : 0 ≤ n^2-1) (by linarith : n^2-1 ≤ n^2) 2
    simpa [← pow_mul] using hh
  change thetaModeWeight m t*(thetaModeScore m t-thetaModeScore 0 t)^2 ≤
    50*A^2*(n^8*Real.exp (-A*(n^2-1)))
  calc
    _ ≤ (2*n^4*Real.exp (-A*(n^2-1)))*(5*A*(n^2-1))^2 :=
      mul_le_mul hw hgsq (sq_nonneg _) (by positivity)
    _ = (50*A^2*Real.exp (-A*(n^2-1))*n^4)*(n^2-1)^2 := by ring
    _ ≤ (50*A^2*Real.exp (-A*(n^2-1))*n^4)*n^4 :=
      mul_le_mul_of_nonneg_left hd (by positivity)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variantffd36c1e4189d6cce90c83cf337a65702de00ca9d731b38a27213e10fb50ca64.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1eaf5a74df8721a31306e3208c86453b37b58da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
