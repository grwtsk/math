# pq_ratio_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:831720cf-6a34-876e-2218-745b52d38ae5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d54294ef-96ed-8f15-c6f7-1222d79cf5ed",
  "kind": "theorem",
  "lexical_name": "pq_ratio_ge",
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
  "slug": "pq-ratio-ge--78d644e0ae5e106d6cef2881",
  "source": {
    "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1416,
    "line": 1363,
    "path": "GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78d644e0ae5e106d6cef2881f837bf20c53b91d15f5fd0999f9da5331d6aeba4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54294ef-96ed-8f15-c6f7-1222d79cf5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1363–1416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pq_ratio_ge {n : ℕ} (hn : n ≥ X₀ ^ 2) :
    1 - ((4 : ℝ) * ∏ i, ((exists_p_primes hn).choose i : ℝ))
    / ∏ i, ((exists_q_primes hn).choose i : ℝ) ≥
    1 - 4 * (1 + 1 / (log √(n : ℝ)) ^ 3) ^ 12 / n ^ (3 / 2 : ℝ) := by
  have l1 : ((1 + 1 / Real.log √n ^ 3) ^ 12 / n ^ (3 / 2 : ℝ)) =
    (n ^ (3 / 2 : ℝ) * (1 + 1 / Real.log √n ^ 3) ^ 6) /
    (n ^ (3 : ℝ) * (1 + 1 / Real.log √n ^ 3) ^ (- 6 : ℝ)) := by
    rw [rpow_neg (hε_pos hn).le, ← div_eq_mul_inv, div_div_eq_mul_div, mul_assoc,
      mul_comm, ← rpow_natCast, ← rpow_natCast (n := 6), ← rpow_add (hε_pos hn),
      ← div_div_eq_mul_div]
    · congr
      · grind
      · rw [← rpow_sub (by norm_cast; linarith)]; grind
  have l2 : n ^ (3 / 2 : ℝ) * (1 + 1 / Real.log √n ^ 3) ^ 6 = ∏ i : Fin 3,
    √n * (1 + 1 / Real.log √n ^ 3) ^ ((i : ℝ) + 1) := by
    rw [← Finset.pow_card_mul_prod, Fin.prod_univ_three, ← rpow_add (hε_pos hn),
      ← rpow_add (hε_pos hn), rpow_div_two_eq_sqrt _ (by linarith)]
    norm_num
  have l3 : n ^ (3 : ℝ) * (1 + 1 / Real.log √n ^ 3) ^ (- 6 : ℝ) =
    ∏ i : Fin 3, n * (1 + 1 / Real.log √n ^ 3) ^ (-((3 : ℝ) - i.1))  := by
    rw [← Finset.pow_card_mul_prod, Fin.prod_univ_three, ← rpow_add (hε_pos hn),
      ← rpow_add (hε_pos hn)]
    norm_num
  rw [← mul_div_assoc', ← mul_div_assoc', l1, l2, l3]
  gcongr
  · have := hε_pos hn
    exact Finset.prod_nonneg fun _ _ => by positivity
  · exact Finset.prod_pos fun _ _ => by positivity [hε_pos hn]
  · exact (exists_p_primes hn).choose_spec.2.2.1 _
  · exact fun _ _ => by positivity [hε_pos hn]
  · exact (exists_q_primes hn).choose_spec.2.2.1 _

blueprint_comment /--
\subsection{Reduction to a small epsilon-inequality}
-/

@[blueprint
  "lem:eps-bounds"
  (title := "Uniform bounds for large \\(n\\)")
  (statement := /--
  For all \(n \ge X_0^2 = 89693^2\) we have
  \[
    \frac{1}{\log^3 \sqrt{n}}
    \le 0.000675,
    \qquad
    \frac{1}{n^{3/2}} \le \frac{1}{89693}\cdot\frac{1}{n}.
  \]
  and
  \[ \frac{1}{n+\sqrt{n}} \ge \frac{1}{1 + 1/89693}\cdot\frac{1}{n}. \]
  -/)
  (proof := /-- This is a straightforward calculus and monotonicity check: the left-hand sides are
  decreasing in \(n\) for \(n \ge X_0^2\), and equality (or the claimed upper bound) holds at
  \(n=X_0^2\).  One can verify numerically or symbolically. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean#L1363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71400b521d5902842b91edafd8e491fe67e89eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
