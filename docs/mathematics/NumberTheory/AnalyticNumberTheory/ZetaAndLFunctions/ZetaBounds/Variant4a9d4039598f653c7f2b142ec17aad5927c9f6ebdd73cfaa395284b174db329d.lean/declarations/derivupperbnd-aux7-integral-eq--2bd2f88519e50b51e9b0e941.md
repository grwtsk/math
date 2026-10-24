# DerivUpperBnd_aux7_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:303db941-1ec0-6027-dbab-ac6bb497b20f",
  "kind": "lemma",
  "lexical_name": "DerivUpperBnd_aux7_integral_eq",
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
  "slug": "derivupperbnd-aux7-integral-eq--2bd2f88519e50b51e9b0e941",
  "source": {
    "blob": "abc3064379e29e75a5447a19e19b00c9cedea29e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2169,
    "line": 2130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd2f88519e50b51e9b0e941fe1d49cd6ea7a03f294f26e0e8998f6b94c56251",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:303db941-1ec0-6027-dbab-ac6bb497b20f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2130–2169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma DerivUpperBnd_aux7_integral_eq {a σ : ℝ} (ha : 1 ≤ a) (σpos : 0 < σ) :
    ∫ (x : ℝ) in Ioi a, x ^ (-σ - 1) * Real.log x =
      1 / σ^2 * a ^ (-σ) + 1 / σ * a ^ (-σ) * Real.log a := by
  convert integral_Ioi_of_hasDerivAt_of_nonneg'
    (DerivUpperBnd_aux7_3' (by linarith) (by linarith))
    (DerivUpperBnd_aux7_nonneg ha) (DerivUpperBnd_aux7_tendsto σpos) using 1
  ring

open MeasureTheory in
@[blueprint
  (title := "DerivUpperBnd-aux7")
  (statement := /--
  For any $s = \sigma + tI \in \C$, $1/2 \le \sigma\le 2, 3 < |t|$, and any $0 < A < 1$
  sufficiently small, and $1-A/\log |t| \le \sigma$, we have
  $$
  \left\|s \cdot \int_{N}^{\infty}
    \left(\left\lfloor x \right\rfloor + \frac{1}{2} - x\right) \cdot x^{-s-1} \cdot (-\log x)
  \right\|
  \le 2 \cdot |t| \cdot N^{-\sigma} / \sigma \cdot \log |t|.
  $$
  -/)
  (proof := /--
  Estimate $|s|= |\sigma + tI|$ by $|s|\le 2 +|t| \le 2|t|$ (since $|t|>3$).
  Estimating $|\left\lfloor x \right\rfloor+1/2-x|$ by $1$,
  and using $|x^{-s-1}| = x^{-\sigma-1}$, we have
  $$
  \left\| s \cdot \int_{N}^{\infty}
    \left(\left\lfloor x \right\rfloor + \frac{1}{2} - x\right) \cdot x^{-s-1} \cdot (-\log x)
  \right\|
  \le 2 \cdot |t|
  \int_{N}^{\infty} x^{-\sigma} \cdot (\log x).
  $$
  For the last integral, integrate by parts, getting:
  $$
  \int_{N}^{\infty} x^{-\sigma-1} \cdot (\log x) =
  \frac{1}{\sigma}N^{-\sigma} \cdot \log N + \frac1{\sigma^2} \cdot N^{-\sigma}.
  $$
  Now use $\log N \le \log |t|$ to get the result.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant4a9d4039598f653c7f2b142ec17aad5927c9f6ebdd73cfaa395284b174db329d.lean#L2130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc3064379e29e75a5447a19e19b00c9cedea29e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
