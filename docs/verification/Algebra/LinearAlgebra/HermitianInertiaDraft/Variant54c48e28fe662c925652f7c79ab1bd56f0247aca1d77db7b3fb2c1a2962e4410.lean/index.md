# Verification target: GRWTSK.Algebra.LinearAlgebra.HermitianInertiaDraft.Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6169035f6185d311fc0badea47cb29c249a0ef24",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6169035f6185d311fc0badea47cb29c249a0ef24`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RealificationDraft` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/spectralcoordinates--b344b0e98279126bb96da87d.md) | 22 | `declaration-track:b344b0e98279126bb96da87d57b8d04b3f05610ef7f42980c8331b642eba9a5d` |
| 2 | `theorem` | [spectralCoordinates_apply](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/spectralcoordinates-apply--837763fba2dbc9029258d9f8.md) | 27 | `result-track:837763fba2dbc9029258d9f807310265a5677634fff59ef1e0f8e4d59be067dd` |
| 3 | `def` | [realForm](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/realform--30b52932d1cdfa2cee84f496.md) | 32 | `declaration-track:30b52932d1cdfa2cee84f496c8db1129867036f9cd0664f03f5b4642135cb6b1` |
| 4 | `def` | [spectralRealEquiv](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/spectralrealequiv--de2c7d096f3cdabaf2f6c348.md) | 35 | `declaration-track:de2c7d096f3cdabaf2f6c3487cd070f84f7eba190b14f8acc5bd7ab66e881f20` |
| 5 | `theorem` | [realForm_energy](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/realform-energy--0fb2b6136ac166127086ab63.md) | 40 | `result-track:0fb2b6136ac166127086ab6355ee6aae4397ca43d6e17a37e7a4bced5a44dead` |
| 6 | `theorem` | [sigPos_realForm](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/sigpos-realform--164dcae446ab7fa25880ef18.md) | 51 | `result-track:164dcae446ab7fa25880ef1844e59421b8138c2da84e83dc246f97973efc5926` |
| 7 | `theorem` | [sigNeg_realForm](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/signeg-realform--b76932ed92027c053074590c.md) | 57 | `result-track:b76932ed92027c053074590c7fafd46458ad1f3f06fb3318dc482a3e05056532` |
| 8 | `def` | [congruenceCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/congruencecoordinates--2bbcdd96fe652951f2b2738d.md) | 64 | `declaration-track:2bbcdd96fe652951f2b2738d9de92a63104be352ff2e82e14cc819adf7363c52` |
| 9 | `theorem` | [congruenceCoordinates_apply](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/congruencecoordinates-apply--97d85a942640a1ae13dd9975.md) | 69 | `result-track:97d85a942640a1ae13dd99751c98464be4c5dc8d3c128b32a91be7121aa72f26` |
| 10 | `theorem` | [realForm_congruence](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/realform-congruence--9003403264925635aab36640.md) | 73 | `result-track:9003403264925635aab366401add0201b30715fadef29c3c3440c8a563b8da0d` |
| 11 | `theorem` | [positive_count_congruence](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/positive-count-congruence--9c5ca831f83c8b27aa72ab36.md) | 83 | `result-track:9c5ca831f83c8b27aa72ab36f1e9ecf825b185187a6ec7f58c359c51fb964ef5` |
| 12 | `theorem` | [negative_count_congruence](../../../../../mathematics/Algebra/LinearAlgebra/HermitianInertiaDraft/Variant54c48e28fe662c925652f7c79ab1bd56f0247aca1d77db7b3fb2c1a2962e4410.lean/declarations/negative-count-congruence--0ed03b5ea216f329500515c0.md) | 95 | `result-track:0ed03b5ea216f329500515c03c0b2f5d5e82520c0316147fba530528631d0681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
