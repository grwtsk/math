# Verification target: GRWTSK.NumberTheory.AmiceTransform.Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3be085b70a1f356a9abe33d20cabdae0ad3d94c8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3be085b70a1f356a9abe33d20cabdae0ad3d94c8`.

Source path: `GRWTSK/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AbstractMeasure.ext_mahler](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/abstractmeasure-ext-mahler--b62cc1eadf7e43bd7515d741.md) | 56 | `result-track:b62cc1eadf7e43bd7515d7412cf5ef0564f600d6b72b6086d202e74511f5e10c` |
| 2 | `def` | [amiceTransform](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/amicetransform--4f56073f4eea52b1731a568d.md) | 76 | `declaration-track:4f56073f4eea52b1731a568df2b63965c9955e3f94a03d0524b1328d00bb98a2` |
| 3 | `lemma` | [coeff_amiceTransform](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/coeff-amicetransform--11702892fe874bc387e88fa9.md) | 81 | `result-track:11702892fe874bc387e88fa95fb2d035c4ea12bcba174de54ba97f4faf696776` |
| 4 | `lemma` | [injective_amiceTransform](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/injective-amicetransform--a859d179906f365424f61e4b.md) | 92 | `result-track:a859d179906f365424f61e4b7d703fb7a3b58fb65f489261dbed827ddb7e27d1` |
| 5 | `lemma` | [invTransformSummable](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/invtransformsummable--27e42bb83a120f0a8342494f.md) | 102 | `result-track:27e42bb83a120f0a8342494f2848e370ad350f28c6a04dead12b284b2d60a2b0` |
| 6 | `def` | [invTransformₗ](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/invtransform--92d1865a060bebb2258fabe2.md) | 113 | `declaration-track:92d1865a060bebb2258fabe2526e59def87695446a94e4f84e39c9ab33672293` |
| 7 | `def` | [invTransform](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/invtransform--eef48236ed0fdfc274a07f0b.md) | 129 | `declaration-track:eef48236ed0fdfc274a07f0bd25f98c7f3b233262be234432dfb990408101876` |
| 8 | `lemma` | [invTransform_apply](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/invtransform-apply--f5421b052d8c7bdb3e59d8de.md) | 140 | `result-track:f5421b052d8c7bdb3e59d8de37477e53ba631717cec09b5a862cef47da8dd9ac` |
| 9 | `lemma` | [amiceTransform_invTransform](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/amicetransform-invtransform--672062df46d63f1fcf2e4c7a.md) | 144 | `result-track:672062df46d63f1fcf2e4c7a91c05dc022f9193fdd67d96c69960339d7896dde` |
| 10 | `def` | [amiceTransformEquiv](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/amicetransformequiv--929e552a6ddfa9019884324d.md) | 157 | `declaration-track:929e552a6ddfa9019884324d5d2f3f0b489b36f2f6a8e00235a910de2444e6a4` |
| 11 | `lemma` | [amiceTransformEquiv_apply](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/amicetransformequiv-apply--2208fd9af8bf13ad7b39f421.md) | 163 | `result-track:2208fd9af8bf13ad7b39f42152be572896893be856284d6b3d6dd64a434f9ec4` |
| 12 | `lemma` | [coeff_amiceTransformEquiv](../../../../mathematics/NumberTheory/AmiceTransform/Variantdc3e02fbcd1e428dfc121902d3998343f222e3c4616bf793b66e890bdfc043b3.lean/declarations/coeff-amicetransformequiv--f23781d835fcbb9407153b55.md) | 167 | `result-track:f23781d835fcbb9407153b55bdbd9629964ef07d2d13fd12de4941763afd1c48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
