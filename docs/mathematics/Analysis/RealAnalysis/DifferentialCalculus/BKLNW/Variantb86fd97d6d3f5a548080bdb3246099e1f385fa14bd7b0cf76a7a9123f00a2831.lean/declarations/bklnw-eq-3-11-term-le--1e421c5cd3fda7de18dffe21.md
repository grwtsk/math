# bklnw_eq_3_11_term_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58f386ed-7e58-ccbf-9135-679f13f5bd4e",
  "kind": "lemma",
  "lexical_name": "bklnw_eq_3_11_term_le",
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
  "slug": "bklnw-eq-3-11-term-le--1e421c5cd3fda7de18dffe21",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1223,
    "line": 1197,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e421c5cd3fda7de18dffe21fac0f123cfd87276d8ea0d58f6d23d18e672e4df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58f386ed-7e58-ccbf-9135-679f13f5bd4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1197–1223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bklnw_eq_3_11_term_le (k : ℕ) (hk : 1 ≤ k) (ℓ : ℕ) (hℓ : 1 ≤ ℓ)
    (b : ℝ) (hbk : b ≥ 2 * k) (x : ℝ) (hx_pos : 0 < x) (hx_log : b ≤ log x) :
    (log x)^k * x ^ (-(ℓ:ℝ) / (ℓ + 1)) ≤ b ^ k * exp (- (ℓ:ℝ) * b / (ℓ + 1)) := by
  have h_x_pow : x ^ (-(ℓ:ℝ) / (ℓ + 1)) = exp (- ((ℓ:ℝ) / (ℓ + 1)) * log x) := by
    rw [rpow_def_of_pos hx_pos]
    congr 1
    ring
  have h_RHS_rw : b ^ k * exp (- (ℓ:ℝ) * b / (ℓ + 1)) = b ^ k * exp (- ((ℓ:ℝ) / (ℓ + 1)) * b) := by
    congr 2
    ring
  calc
    (log x)^k * x ^ (-(ℓ:ℝ) / (ℓ + 1))
    _ = (log x)^k * exp (- ((ℓ:ℝ) / (ℓ + 1)) * log x) := congrArg (fun y => (log x)^k * y) h_x_pow
    _ ≤ b ^ k * exp (- ((ℓ:ℝ) / (ℓ + 1)) * b) :=
        (bklnw_eq_3_11_antitone k hk ℓ hℓ b hbk) (Set.mem_Ici.mpr (le_refl b)) (Set.mem_Ici.mpr hx_log) hx_log
    _ = b ^ k * exp (- (ℓ:ℝ) * b / (ℓ + 1)) := h_RHS_rw.symm

@[blueprint
  "bklnw-eq-3-11"
  (title := "BKLNW Equation (3.11)")
  (statement := /--  Let $k=1,\ldots,5$. Assume there exist a positive integer $n$, real numbers $a_{\ell} \ge 0$ for every $\ell \in \{1, 2, \ldots, n \}$.  Let $b' > b \geq 2k$. Then $B_k \leq \tilde B_k$ where
  $$ \tilde B_k := b^{k} \sum_{\ell=1}^n a_{\ell} \exp\left(-\frac{\ell b}{\ell+1}\right) + \varepsilon(b) (b')^k. $$
  . -/)
  (proof := /-- Observe that since $x\ge e^b > e^{2k} \ge e^{\frac{k(\ell+1)}{\ell}}$, then each $a_\ell (\log x)^k x^{-\frac{\ell}{\ell + 1}}$ decreases with $x$.  The claim follows since $\varepsilon(b) (\log x)^k$ increases with $x$.
 -/)
  (latexEnv := "sublemma")
  (discussion := 1253)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L1197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
