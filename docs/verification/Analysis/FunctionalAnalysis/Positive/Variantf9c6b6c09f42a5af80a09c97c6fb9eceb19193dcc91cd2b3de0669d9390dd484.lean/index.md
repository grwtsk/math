# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Positive.Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "669603024644161c644939c4322eb1dd4372ebc1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `669603024644161c644939c4322eb1dd4372ebc1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive--ddf8d08eabcf351147238eea.md) | 52 | `declaration-track:ddf8d08eabcf351147238eea8ca3474a5916865f6fd871ac6e643d98cd7dd6a9` |
| 2 | `theorem` | [IsPositive.isSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-isselfadjoint--987e190c8265df16eb231591.md) | 55 | `result-track:987e190c8265df16eb231591d62afee45794de3b0ae8876c3f47f9b99709c020` |
| 3 | `theorem` | [IsPositive.inner_nonneg_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-inner-nonneg-left--e28a71a065e25b8790d8b63c.md) | 58 | `result-track:e28a71a065e25b8790d8b63c91e2a3d3bebc0b424519379e021ff50333bb8cf5` |
| 4 | `theorem` | [IsPositive.inner_nonneg_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-inner-nonneg-right--5f3fc011d763e2d586de2dad.md) | 62 | `result-track:5f3fc011d763e2d586de2dadfa005a7e2b235911d268b17514fb2092ab703f4b` |
| 5 | `theorem` | [isPositive_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-zero--e1ba6378926bba4637759ecf.md) | 65 | `result-track:e1ba6378926bba4637759ecf783f4de23cdb1d1428205c25890f0514b550f168` |
| 6 | `theorem` | [isPositive_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-one--8ce32904c42e9db02dd50f6b.md) | 70 | `result-track:8ce32904c42e9db02dd50f6bf552104673db30b3069483108f2bf95c35a9b78b` |
| 7 | `theorem` | [IsPositive.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-add--81177ebc2a62866f0304e2ff.md) | 73 | `result-track:81177ebc2a62866f0304e2ffb61d0e849f2fd32620a0875c878ff4d04f97cb9a` |
| 8 | `theorem` | [IsPositive.conj_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-conj-adjoint--f9f0afa9c746577fea30c60f.md) | 79 | `result-track:f9f0afa9c746577fea30c60f531c9bbac454e13167be81ef48ec93740427ca47` |
| 9 | `theorem` | [IsPositive.adjoint_conj](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-adjoint-conj--06a632fca7bbdcaccea3434e.md) | 85 | `result-track:06a632fca7bbdcaccea3434e7271f7538de02b18285e4b993bb46636caab743c` |
| 10 | `theorem` | [IsPositive.conj_orthogonalProjection](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-conj-orthogonalprojection--d0546fe901d25cc722f22b39.md) | 90 | `result-track:d0546fe901d25cc722f22b39734cfd9fdf45f362d8c926d9be31c429fe71801d` |
| 11 | `theorem` | [IsPositive.orthogonalProjection_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-orthogonalprojection-comp--96e3bc1954b0cbc147464f0f.md) | 97 | `result-track:96e3bc1954b0cbc147464f0f5002df40c1ed6aec5d81df698be92f565117e94b` |
| 12 | `lemma` | [antilipschitz_of_forall_le_inner_map](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/antilipschitz-of-forall-le-inner-map--627860ce19422f6b90a9feb6.md) | 104 | `result-track:627860ce19422f6b90a9feb6bef17625b6e8c7e4251961dce5428a0a49efc482` |
| 13 | `lemma` | [isUnit_of_forall_le_norm_inner_map](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/isunit-of-forall-le-norm-inner-map--ca7960e4071d3af3045a4f46.md) | 115 | `result-track:ca7960e4071d3af3045a4f46ea213b7ac3e9e858c47efaa0da4dcd508d072f9a` |
| 14 | `theorem` | [isPositive_iff_complex](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/ispositive-iff-complex--1be8c517e13e26c621bc048c.md) | 131 | `result-track:1be8c517e13e26c621bc048c220662f68deb705a51f9078c11bc8ee05f42f77b` |
| 15 | `instance` | [instLoewnerPartialOrder](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/instloewnerpartialorder--0ea58344c852f81f25c12b48.md) | 145 | `declaration-track:0ea58344c852f81f25c12b48e56ff0dd375b0e4fd81ebbfc9deb20299405f161` |
| 16 | `lemma` | [le_def](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/le-def--16a52ed467dd69d95a832679.md) | 162 | `result-track:16a52ed467dd69d95a83267907b5b6c18b570539ec7f86b77d8f53778ab9c13f` |
| 17 | `lemma` | [nonneg_iff_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/Positive/Variantf9c6b6c09f42a5af80a09c97c6fb9eceb19193dcc91cd2b3de0669d9390dd484.lean/declarations/nonneg-iff-ispositive--02d31fd47e4a724874f4894c.md) | 164 | `result-track:02d31fd47e4a724874f4894cd001abaf70693d1dc7e567046326ab02ae699ae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
