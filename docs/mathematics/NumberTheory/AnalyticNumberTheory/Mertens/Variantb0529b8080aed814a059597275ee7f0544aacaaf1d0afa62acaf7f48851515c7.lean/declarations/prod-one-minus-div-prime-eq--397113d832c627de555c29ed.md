# prod_one_minus_div_prime_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f327d36731b3b37411ed5b7207cbf3046b62b1dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c117ec56-d7b2-f83e-2437-e23daf8bc8fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e04d4826-22a8-f1ce-996d-9051efb6ee1a",
  "kind": "theorem",
  "lexical_name": "prod_one_minus_div_prime_eq",
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
  "slug": "prod-one-minus-div-prime-eq--397113d832c627de555c29ed",
  "source": {
    "blob": "f327d36731b3b37411ed5b7207cbf3046b62b1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1236,
    "line": 1213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397113d832c627de555c29edab0762c162e93129b8356761d0ba844e19cc453a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e04d4826-22a8-f1ce-996d-9051efb6ee1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1213–1236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_one_minus_div_prime_eq {x : ℝ} (hx : 1 < x) :
    ∏ p ∈ Ioc 0 ⌊x⌋₊ with p.Prime, (1 - (1 : ℝ) / p) =
      exp (-eulerMascheroniConstant) * exp (E₃ x) / log x := by
  have hlog : 0 < log x := log_pos hx
  have hpos : ∀ {p : ℕ}, p.Prime → (0 : ℝ) < 1 - 1 / p := fun {p} hp ↦ by
    have : (2 : ℝ) ≤ p := mod_cast hp.two_le
    grind [one_div_le_one_div_of_le two_pos this]
  rw [E₃, exp_add, exp_add, exp_sum, exp_log hlog, exp_neg,
    prod_congr rfl fun p hp ↦ exp_log (hpos (mem_filter.mp hp).2)]
  field_simp

@[blueprint
  "Mertens-third-theorem-error-le"
  (title := "Mertens' third theorem error bound")
  (statement := /-- For any $x \geq 2$, one has
$$ E_3(x) = O\left(\frac{1}{\log x}\right) $$
-/)
  (proof := /-- Using the Taylor expansion
  $$ \log (1 - \frac{1}{p}) = \sum_{j=1}^\infty \frac{1}{jp^j} = \sum_{j=1}^\infty \frac{\Lambda(p^j)}{p^j \log p^j}$$
  one can write
  $$ E_3(x) = E_{2,\Lambda}(x) + \sum_{p \leq x} \sum_{j \geq 2: p^j > x} \frac{j}{p^j}.$$
One can bound $\sum_{j \geq 2: p^j > x} \frac{j}{p^j}$ by $O(1/p^2)$ when $p > \sqrt{x}$ and by $O(1/x)$ when $p \leq \sqrt{x}$, so the second error here is $O(1/\sqrt{x})$, giving the claim.
  -/)
  (discussion := 1330)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantb0529b8080aed814a059597275ee7f0544aacaaf1d0afa62acaf7f48851515c7.lean#L1213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f327d36731b3b37411ed5b7207cbf3046b62b1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
