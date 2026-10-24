# integral_log_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a66aa80-2bf8-e236-e396-272bc6c4100e",
  "kind": "lemma",
  "lexical_name": "integral_log_le",
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
  "slug": "integral-log-le--2d2d8ebd4cc4740f1b2e6144",
  "source": {
    "blob": "72f13f20811406bb11ec92b1f7aebf3c765af560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 374,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variantf9ff56e18758ab82394d03477e7e50c2598067fccfee17f72ea13101d43b066c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d2d8ebd4cc4740f1b2e6144e668a98c2cbee41df0cce41fd12ae7003083c2a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variantf9ff56e18758ab82394d03477e7e50c2598067fccfee17f72ea13101d43b066c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a66aa80-2bf8-e236-e396-272bc6c4100e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_log_le {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    ∫ t in a..b, log t ≤ log b * (b - a) := by
  apply le_of_abs_le
  have : ∀ t ∈ Set.uIoc a b, ‖log t‖ ≤ log b := by
    intro t ht
    rw [Set.uIoc_of_le hab, Set.mem_Ioc] at ht
    rw [norm_of_nonneg <| log_nonneg (by linarith)]
    gcongr <;> linarith
  grw [← norm_eq_abs, intervalIntegral.norm_integral_le_of_norm_le_const this,
    abs_of_nonneg (by linarith)]

@[blueprint
  "Mertens-sum-log-ge"
  (title := "Partial sum of logarithm lower bound")
  (statement := /-- For any $x \geq 1$, one has
$$ \sum_{n \leq x} \log n \geq x \log x - 2 x.$$
 -/)
  (proof := /-- We have
 \begin{align*}
 \sum_{n \leq x} \log n &= \sum_{2 \leq n \leq \lfloor x \rfloor} \log n \\
 &\geq \sum_{2 \leq n \leq \lfloor x \rfloor} \int_{n-1}^n \log t \, dt \\
 &= \int_1^{\lfloor x \rfloor} \log t \, dt \\
 &\geq \int_1^x \log t\ dt - \log x \\
 &= x \log x - x - \log x \\
 &\geq x \log x - 2 x.
\end{align*}
Here we use the monotonicity of $\log n$ (and its vanishing at $n=1$) and the crude bound $\log x \leq x$. Note: the tools at Mathlib.Analysis.SumIntegralComparisons may be useful.
 -/)
  (latexEnv := "corollary")
  (discussion := 1305)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variantf9ff56e18758ab82394d03477e7e50c2598067fccfee17f72ea13101d43b066c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/UpstreamMertens/Variantf9ff56e18758ab82394d03477e7e50c2598067fccfee17f72ea13101d43b066c.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72f13f20811406bb11ec92b1f7aebf3c765af560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
