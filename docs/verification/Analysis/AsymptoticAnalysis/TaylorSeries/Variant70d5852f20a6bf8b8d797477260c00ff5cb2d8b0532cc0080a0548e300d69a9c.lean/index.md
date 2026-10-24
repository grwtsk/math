# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TaylorSeries.Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c7a2f85e0047caef810284705415b247437c97d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c7a2f85e0047caef810284705415b247437c97d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasSum_taylorSeries_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/hassum-taylorseries-on-ball--fe890d597307b0ae19e9e8f3.md) | 48 | `result-track:fe890d597307b0ae19e9e8f3230f2f949c3c7944f0463ec70ac39468cbc56cb5` |
| 2 | `lemma` | [taylorSeries_eq_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/taylorseries-eq-on-ball--86422e3f6e214b4c2c46b11a.md) | 68 | `result-track:86422e3f6e214b4c2c46b11afd5b156e785309d182770708c2613e23c6816e23` |
| 3 | `lemma` | [taylorSeries_eq_on_ball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/taylorseries-eq-on-ball--4a038949cea0ba8c131324ee.md) | 75 | `result-track:4a038949cea0ba8c131324eeb2a5c14a452c31c0d0832ca300116fa278774ec1` |
| 4 | `lemma` | [hasSum_taylorSeries_on_emetric_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/hassum-taylorseries-on-emetric-ball--3de488f755bb4118b3460351.md) | 90 | `result-track:3de488f755bb4118b3460351a8a2fa7977e959f8e4d779705917ebd0630e3c16` |
| 5 | `lemma` | [taylorSeries_eq_on_emetric_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/taylorseries-eq-on-emetric-ball--f7a5cf59b7c42f3d773fa65e.md) | 102 | `result-track:f7a5cf59b7c42f3d773fa65ec99160156223adbd9b7260932ed90043ac1d22a9` |
| 6 | `lemma` | [taylorSeries_eq_on_emetric_ball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/taylorseries-eq-on-emetric-ball--b78db914ad2112ad19619629.md) | 109 | `result-track:b78db914ad2112ad19619629e28fbae5cb37123bcf6b1f9b433ee16c893e440f` |
| 7 | `lemma` | [hasSum_taylorSeries_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/hassum-taylorseries-of-entire--2f57c0fbb559e38c7372e290.md) | 123 | `result-track:2f57c0fbb559e38c7372e2908f52a5e8d8c88ed2c3144880bd275cf23df0ecbc` |
| 8 | `lemma` | [taylorSeries_eq_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/taylorseries-eq-of-entire--dc2e7c31f44683077d1f42f3.md) | 131 | `result-track:dc2e7c31f44683077d1f42f324d6e304cad89ca9ee8e99ca784cd140958cead6` |
| 9 | `lemma` | [taylorSeries_eq_of_entire'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant70d5852f20a6bf8b8d797477260c00ff5cb2d8b0532cc0080a0548e300d69a9c.lean/declarations/taylorseries-eq-of-entire--aa29def318496430b2420ec0.md) | 137 | `result-track:aa29def318496430b2420ec0f46bcf1a419e0425c72abdc29ce1cb267ee7c2c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
