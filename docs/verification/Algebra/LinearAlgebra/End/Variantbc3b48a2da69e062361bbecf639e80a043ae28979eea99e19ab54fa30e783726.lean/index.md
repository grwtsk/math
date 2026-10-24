# Verification target: GRWTSK.Algebra.LinearAlgebra.End.Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ae74ae6ceca88128f427e132eea545a72ae37c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ae74ae6ceca88128f427e132eea545a72ae37c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AddMonoid.End.natCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/declarations/addmonoid-end-natcast-def--4647c0c98c91dcc8bead260d.md) | 38 | `result-track:4647c0c98c91dcc8bead260d5c66e0540ac0a51f2662d39b6b158896dcba0391` |
| 2 | `def` | [Module.toAddMonoidEnd](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/declarations/module-toaddmonoidend--40ae4aac128f347ad6c25a9e.md) | 49 | `declaration-track:40ae4aac128f347ad6c25a9e88d19e8786de2a513a0675e70b070b15c4ad391e` |
| 3 | `def` | [smulAddHom](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/declarations/smuladdhom--6cb9bcd76d294a2a56ca13fd.md) | 57 | `declaration-track:6cb9bcd76d294a2a56ca13fd8e06b5a785fd401feffe385b94418ff24397fd04` |
| 4 | `theorem` | [smulAddHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/declarations/smuladdhom-apply--d11b44f8027889655fadbf86.md) | 63 | `result-track:d11b44f8027889655fadbf865b2dc585621ef05ea4d9b8a935733bbffd0b4ff0` |
| 5 | `lemma` | [IsAddUnit.smul_left](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/declarations/isaddunit-smul-left--2eb3c525b88f48b5624d5a55.md) | 68 | `result-track:2eb3c525b88f48b5624d5a55e3f698b171488004244903ae0b3bdaac187006d8` |
| 6 | `lemma` | [IsAddUnit.smul_right](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/declarations/isaddunit-smul-right--139dd899fafe26028f17d51c.md) | 74 | `result-track:139dd899fafe26028f17d51c155bebcca0e7b28df9e4c02926d12aee4f170ab5` |
| 7 | `theorem` | [AddMonoid.End.intCast_def](../../../../../mathematics/Algebra/LinearAlgebra/End/Variantbc3b48a2da69e062361bbecf639e80a043ae28979eea99e19ab54fa30e783726.lean/declarations/addmonoid-end-intcast-def--ae2da7ec2078d946259129bd.md) | 83 | `result-track:ae2da7ec2078d946259129bd801caf6b62eee7db2cf7b434639f161df1e60130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
