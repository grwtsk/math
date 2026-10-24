# Li_identity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2508,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c8163ca-d801-8906-b786-cd948dae0b55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cba7f14-234b-530c-a81f-37eff98503d5",
  "kind": "theorem",
  "lexical_name": "Li_identity'",
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
  "slug": "li-identity--cbdf3a15c814baf17b7fb28d",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2544,
    "line": 2508,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbdf3a15c814baf17b7fb28d8f97a629bb05ab4eb52f3fc13115334e0abf8242",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cba7f14-234b-530c-a81f-37eff98503d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2508–2544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Li_identity' {a b : ℝ} (ha : 2 ≤ a) (hb : a ≤ b) :
    ∫ t in a..b, 1 / log t ^ 2 = Li b - Li a - b / log b + a / log a :=
  have {x} (hx : 2 ≤ x) : IntervalIntegrable (fun t ↦ 1 / log t ^ 2) volume 2 x := by
    simp only [one_div]
    refine ((((continuousOn_id' _).log ?_).pow 2).inv₀ (fun t ht => ?_)).intervalIntegrable
    · rw [Set.uIcc_of_le hx]; grind
    · rw [Set.uIcc_of_le hx] at ht
      positivity [log_pos (by grind : 1 < t)]
  calc
  _ = (∫ t in 2..b, 1 / log t ^ 2) - ∫ t in 2..a, 1 / log t ^ 2 :=
    (intervalIntegral.integral_interval_sub_left (this (ha.trans hb)) (this ha)).symm
  _ = b / log b - 2 / log 2 + (∫ t in 2..b, 1 / (log t ^ 2)) - b / log b -
    (a / log a - 2 / log 2 + (∫ t in 2..a, 1 / (log t ^ 2)) - a / log a) := by ring
  _ = _ := by rw [Li_identity ha, Li_identity (ha.trans hb)]; ring

@[blueprint
  "fks2-lemma-19"
  (title := "FKS2 Lemma 19")
  (statement := /--
  Let $x_1 > x_0 \geq 2$, $N \in \N$, and let $(b_i)_{i=1}^N$ be a finite partition of
  $[\log x_0, \log x_1]$.  Then
  $$ |\int_{x_0}^{x_1} \frac{\theta(t)-t}{t \log^2 t}\ dt|
    \leq \sum_{i=1}^{N-1} \eps_{\theta,num}(e^{b_i})
    ( \Li(e^{b_{i+1}}) - \Li(e^{b_i}) + \frac{e^{b_i}}{b_i} - \frac{e^{b_{i+1}}}{b_{i+1}}).$$ -/)
  (proof := /-- We split the integral at each $e^{b_i}$ and apply the bound
  $$ |\frac{\theta(t)-t}{t}| \leq \eps_{\theta,num}(e^{b_i}), \text{ for every } e^{b_i} \leq t < e^{b_{i+1}}. $$
  Thus,
  $$ |\int_{x_0}^{x_1} \frac{\theta(t)-t}{t \log^2 t}\ dt|
    \leq \sum_{i=1}^{N-1} \int_{e^{b_i}}^{e^{b_{i+1}}}
      |\frac{\theta(t)-t}{t \log^2 t}|\ dt
    \leq \sum_{i=1}^{N-1} \eps_{\theta,num}(e^{b_i})
      \int_{e^{b_i}}^{e^{b_{i+1}}} \frac{dt}{(\log t)^2}. $$
  We conclude by using the identity: for all $2 \leq a < b$,
  $$ \int_a^b \frac{dt}{(\log t)^2}
    = \Li(b) - \frac{b}{\log b} - (\Li(a) - \frac{a}{\log a}). $$ -/)
  (latexEnv := "lemma")
  (discussion := 712)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L2508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
