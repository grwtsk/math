# prod_one_minus_div_prime_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4812ff01-a0d8-4d00-b32d-f2655deabc96",
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
  "slug": "prod-one-minus-div-prime-eq--969cd416bb8b22ef5d32a2b9",
  "source": {
    "blob": "54ba4bc8c79067a36f0e8e981b9aaa0dc8cdda6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1244,
    "line": 1221,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:969cd416bb8b22ef5d32a2b96d33db0fe2dabe2afb1475ab8b8284be4b9f7221",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4812ff01-a0d8-4d00-b32d-f2655deabc96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1221–1244.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variantc0b78547d14567b4c487dade14e09762ffbeedf668d717187a31e135cab99b0f.lean#L1221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ba4bc8c79067a36f0e8e981b9aaa0dc8cdda6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
