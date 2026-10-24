# Verification target: GRWTSK.Algebra.UniversalAlgebra.Power.Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "623dbacf3ebbf7ac2cef730175a637beccd1db86",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `623dbacf3ebbf7ac2cef730175a637beccd1db86`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CharZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Even.zpow_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/even-zpow-nonneg--7c943080eca1eb7085edd84a.md) | 24 | `result-track:7c943080eca1eb7085edd84ae495bb756171548d74e4f67ac48fc661d9927183` |
| 2 | `lemma` | [zpow_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-two-nonneg--207f562077b86e9c4cbdd27b.md) | 27 | `result-track:207f562077b86e9c4cbdd27b4afcad96f3eb296218fec23562c6685a6997f484` |
| 3 | `lemma` | [zpow_neg_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-neg-two-nonneg--92ae304f1d79d10b656e31ce.md) | 29 | `result-track:92ae304f1d79d10b656e31ce969d14633202f694b8e9e3cd191c4e2f53721d75` |
| 4 | `lemma` | [Even.zpow_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/even-zpow-pos--51c79a4547cfc1be20fd3e26.md) | 31 | `result-track:51c79a4547cfc1be20fd3e2668c8098c5541d45cb581688365f46cf0a82f288a` |
| 5 | `lemma` | [zpow_two_pos_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-two-pos-of-ne-zero--cd7c7aede4d7496487620c47.md) | 34 | `result-track:cd7c7aede4d7496487620c470f98ff6afea4138f45c8cbae381dbda7616c11a6` |
| 6 | `theorem` | [Even.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/even-zpow-pos-iff--82d5e34a0e97a54c6c1cb4f8.md) | 36 | `result-track:82d5e34a0e97a54c6c1cb4f8fd8f68cf27f70b8374493a6e059dc53b60c3f6cf` |
| 7 | `theorem` | [Odd.zpow_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/odd-zpow-neg-iff--cb97dcddb7360a1ac85cf6c9.md) | 40 | `result-track:cb97dcddb7360a1ac85cf6c9036100be8f3a750b5de2560af93a0779dddadc33` |
| 8 | `lemma` | [Odd.zpow_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/odd-zpow-nonneg-iff--324f43c8e98b20a15d48c944.md) | 46 | `result-track:324f43c8e98b20a15d48c944f17d1bca78a7be0d0eafd4f11d76c5ab5c65233e` |
| 9 | `theorem` | [Odd.zpow_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/odd-zpow-nonpos-iff--868d258c9d3df0f864312420.md) | 49 | `result-track:868d258c9d3df0f864312420a1d7750f3918389a875a68c5861fe0bc844cc92b` |
| 10 | `lemma` | [Odd.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/odd-zpow-pos-iff--de3e1abbf47050c437ca8442.md) | 54 | `result-track:de3e1abbf47050c437ca84422ac85e349b8099bb9d67e9c8b115a797ffc62e97` |
| 11 | `theorem` | [Even.zpow_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/even-zpow-abs--2a3e27335db81dd1afadae09.md) | 61 | `result-track:2a3e27335db81dd1afadae0912276ec229e5331cb14e0cb7346d6a3d7460f515` |
| 12 | `lemma` | [zpow_eq_zpow_iff_of_ne_zero₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-eq-zpow-iff-of-ne-zero--cbe805a2ec2ccac9c25d92e7.md) | 64 | `result-track:cbe805a2ec2ccac9c25d92e73e52a92e3836a901f97a651e6ff3cad1b5f79880` |
| 13 | `lemma` | [zpow_eq_zpow_iff_cases₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-eq-zpow-iff-cases--815f79173b976b4137d75c31.md) | 74 | `result-track:815f79173b976b4137d75c3188b4d4f624b070989dced16b9126da0d91066696` |
| 14 | `lemma` | [zpow_eq_one_iff_of_ne_zero₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-eq-one-iff-of-ne-zero--06068c5a728cbb30e7e112d2.md) | 77 | `result-track:06068c5a728cbb30e7e112d28eaa383330569cc729f643a4f544657232999687` |
| 15 | `lemma` | [zpow_eq_one_iff_cases₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-eq-one-iff-cases--6d7e549182e3c09556e502b5.md) | 80 | `result-track:6d7e549182e3c09556e502b5e4d3f1ceeee06e8e09e496f5256ee63b0ea02026` |
| 16 | `lemma` | [zpow_eq_neg_zpow_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-eq-neg-zpow-iff--057a391dc43fe7eeaf81a5a2.md) | 83 | `result-track:057a391dc43fe7eeaf81a5a240604a6555e6e63aa95db181fae83ef54d961cd5` |
| 17 | `lemma` | [zpow_eq_neg_one_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/zpow-eq-neg-one-iff--8df43bcf7e85b30304b6217b.md) | 92 | `result-track:8df43bcf7e85b30304b6217bed7b923cd2e6ea960335449119bc4d1a33b64320` |
| 18 | `theorem` | [Nat.cast_le_pow_sub_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/nat-cast-le-pow-sub-div-sub--2df2708fe80065ef288b6972.md) | 98 | `result-track:2df2708fe80065ef288b6972b826c0a7c47853ad25825af0f0ef4506d04ddb59` |
| 19 | `theorem` | [Nat.cast_le_pow_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/nat-cast-le-pow-div-sub--0ca1a91598aac352c11c9cc1.md) | 104 | `result-track:0ca1a91598aac352c11c9cc1543879f4e4108bdd8c6a182d29df423e81a02646` |
| 20 | `def` | [evalZPow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/declarations/evalzpow--695bee2b7add033029ff131d.md) | 116 | `declaration-track:695bee2b7add033029ff131dd39b8a6979f3feeda385557611bb56295d3c0870` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
