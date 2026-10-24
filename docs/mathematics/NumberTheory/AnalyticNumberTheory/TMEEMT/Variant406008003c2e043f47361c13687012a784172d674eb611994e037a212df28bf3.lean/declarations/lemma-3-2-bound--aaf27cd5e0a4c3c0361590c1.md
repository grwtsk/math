# lemma_3_2_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68ca76dc598a5dfe5b54d54942ec2b81277265ec49715c9e495aff270fe959b7",
  "kind": "def",
  "lexical_name": "lemma_3_2_bound",
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
  "slug": "lemma-3-2-bound--aaf27cd5e0a4c3c0361590c1",
  "source": {
    "blob": "4ce3979ff32048626872bfc88c58371b04468b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 613,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaf27cd5e0a4c3c0361590c1838da8bed3edbb54851d06f27697e33c633908f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68ca76dc598a5dfe5b54d54942ec2b81277265ec49715c9e495aff270fe959b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lemma_3_2_bound (ε c P₀ : ℝ) : Prop :=
  ∀ (P : ℝ) (f : ℝ → ℝ),
    P₀ ≤ P →
    (∀ t, P ≤ t → 0 ≤ f t) →
    AntitoneOn f (Set.Ici P) →
    ContDiffOn ℝ 1 f (Set.Ici P) →
    Filter.Tendsto (fun t ↦ t * f t) Filter.atTop (nhds 0) →
    ∑' p : ℕ, (if Nat.Prime p ∧ P ≤ (p : ℝ) then f p * log p else 0) ≤
      (1 + ε) * ∫ t in Set.Ici P, f t +
      ε * P * f P +
      c * P * f P / (log P) ^ 2

@[blueprint
  "thm:ramare2016-3-2-a"
  (title := "Ramar\\'e 2016 Lemma 3.2a")
  (statement := /-- For $P \geq 3{,}600{,}000$ with $\varepsilon = 1/914$ and last-term constant $1/5$:
  for any $C^1$ non-negative non-increasing $f$ on $[P,\infty)$ with $\lim_{t	\to \infty} tf(t)=0$,
  $\sum_{p \geq P} f(p)\log p \leq (1+\frac{1}{914})\int_P^\infty f + \frac{Pf(P)}{914} + \frac{Pf(P)}{5\log^2 P}$. -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant406008003c2e043f47361c13687012a784172d674eb611994e037a212df28bf3.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce3979ff32048626872bfc88c58371b04468b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
