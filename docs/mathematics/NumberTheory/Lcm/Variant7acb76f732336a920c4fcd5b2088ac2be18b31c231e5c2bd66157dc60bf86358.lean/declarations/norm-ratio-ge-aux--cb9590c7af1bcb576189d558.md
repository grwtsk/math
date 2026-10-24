# σnorm_ratio_ge_aux

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
      "line": 777,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be4b8a74-f957-8dae-5965-a97ed558faa7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d913b113-2601-704d-919e-afa9ae0ea62d",
  "kind": "lemma",
  "lexical_name": "σnorm_ratio_ge_aux",
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
  "slug": "norm-ratio-ge-aux--cb9590c7af1bcb576189d558",
  "source": {
    "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 834,
    "line": 777,
    "path": "GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb9590c7af1bcb576189d558177d917082e7d27591f6956a32272dfef85cd8db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d913b113-2601-704d-919e-afa9ae0ea62d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–834.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma σnorm_ratio_ge_aux {k : ℕ} (n : ℕ) (hk : 2 ^ k ≤ n) :
    (∑ i ∈ Finset.range (k + 3), (1 / 2 : ℝ) ^ i) / (∑ i ∈ Finset.range (k + 1), (1 / 2 : ℝ) ^ i) ≥
      1 + 3 / (8 * n) := by
    have h_sums : (∑ i ∈ Finset.range (k + 3), (1 / 2 : ℝ) ^ i) = 2 - (1 / 2) ^ (k + 2) ∧
        (∑ i ∈ Finset.range (k + 1), (1 / 2 : ℝ) ^ i) = 2 - (1 / 2) ^ k := by
      norm_num [geom_sum_eq]; ring_nf; norm_num
    field_simp [h_sums]
    rw [h_sums.1,h_sums.2]; ring_nf; norm_num
    have h_inv : (n : ℝ)⁻¹ ≤ (1 / 2 : ℝ) ^ k := by
      simpa using inv_anti₀ (by positivity) (mod_cast hk)
    nlinarith [pow_pos (by norm_num : (0 : ℝ) < 1 / 2) k, pow_le_pow_of_le_one
      (by norm_num : (0 : ℝ) ≤ 1 / 2) (by norm_num) (show k ≥ 0 by norm_num)]

@[blueprint "lem:sigmaM-lower-final"
  (title := "Lower bound for \\(\\sigma(M)/M\\)")
  (statement := /--
  With notation as above,
  \[
    \frac{\sigma(M)}{M}
    \ge
    \frac{\sigma(L')}{L'}
    \Biggl( \prod_{i=1}^3 \Bigl(1 + \frac{1}{p_i(p_i+1)}\Bigr) \Biggr)
    \Bigl(1 + \frac{3}{8n}\Bigr).
  \]
  -/)
  (proof := /--
    By multiplicativity, we have
  $$
    \frac{\sigma(M)}{M}
    = \frac{\sigma(L')}{L'}
    \prod_p \frac{1+p^{-1}+\dots+p^{-\nu_p(M)}}{1+p^{-1}+\dots+p^{-\nu_p(L')}}.
  $$
  The contribution of $p=p_i$ is
  \[
    \frac{(1+p_i^{-1}+p_i^{-2})}{1+p^{-1}_i}
    = 1 + \frac{1}{p_i(p_i+1)}.
  \]
  The contribution of $p=2$ is
  \[
    \frac{1+2^{-1}+\dots+2^{-k-2}}{1+2^{-1}+\dots+2^{-k}},
  \]
  where \(k\) is the largest integer such that \(2^k \le n\).
  A direct calculation yields
  \[
    \frac{(1+2^{-1}+\dots+2^{-k-2})}{1+2^{-1}+\dots+2^{-k}}
    = \frac{2^{k+3}-1}{2^{k+3}-4}
    = 1 + \frac{3}{2^{k+3}-4},
  \]
  Finally, since \(2^k \le n < 2^{k+1}\), we have \(2^{k+3} < 8n\), so
  \[
    \frac{3}{2^{k+3}-4} \ge \frac{3}{8n},
  \]
  So the contribution from the prime \(2\) is at least \(1 + 3/(8n)\).

  Finally, the contribution of all other primes is at least \(1\).
  -/)
  (latexEnv := "lemma")
  (discussion := 664)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71400b521d5902842b91edafd8e491fe67e89eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
