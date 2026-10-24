# Verification target: GRWTSK.Algebra.LinearAlgebra.Induced.Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "111dea6307881f12dbfd4fc37e93f0f1a7d27032",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `111dea6307881f12dbfd4fc37e93f0f1a7d27032`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean.json)

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
| 1 | `abbrev` | [IndV](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/indv--b5128f8bafd20b7df71a823b.md) | 67 | `declaration-track:b5128f8bafd20b7df71a823b582b505d0de6c2100382285694a79660d5667cc3` |
| 2 | `abbrev` | [IndV.mk](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/indv-mk--a49f92a9c6c98b87d7997e11.md) | 72 | `declaration-track:a49f92a9c6c98b87d7997e114f50913ca54f49ae9b283a231077aa1bcebc9840` |
| 3 | `lemma` | [IndV.hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/indv-hom-ext--dde4cf2776a3c65700ff15de.md) | 76 | `result-track:dde4cf2776a3c65700ff15de6aec5e8cf2f56cf72062f6f610f771bb770e0e46` |
| 4 | `def` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/ind--eb967d51c33d9cf51de993d3.md) | 85 | `declaration-track:eb967d51c33d9cf51de993d31146c261276b96840d06395fa0aa7e0e197e08be` |
| 5 | `lemma` | [ind_mk](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/ind-mk--dee58338138cf1dd53e9d3b5.md) | 92 | `result-track:dee58338138cf1dd53e9d3b5bf2efb8231463fd64e5b1f931a21004c861a2ae2` |
| 6 | `abbrev` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/ind--019deae98af1a9e851da4342.md) | 110 | `declaration-track:019deae98af1a9e851da43421b1b81d7e711220005aa7a44ec830bb3c41f5438` |
| 7 | `def` | [indMap](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/indmap--d0d53f94275f93163c9fcde7.md) | 114 | `declaration-track:d0d53f94275f93163c9fcde70c960d1c984c861d8f61529b574c44ccb660220b` |
| 8 | `def` | [indFunctor](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/indfunctor--6b84ebddd59bf2f719d73e7e.md) | 123 | `declaration-track:6b84ebddd59bf2f719d73e7e41988dc4bb74065abc76b8eca1ee0ad0f6acaa74` |
| 9 | `def` | [indResHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/indreshomequiv--6f3e26fafd46e1a7ed0acf0e.md) | 140 | `declaration-track:6f3e26fafd46e1a7ed0acf0e5983c73d97240fe7a0d6415816b2bba2048a1350` |
| 10 | `def` | [indResAdjunction](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/indresadjunction--51dd69adb14b7b3ff6631c44.md) | 163 | `declaration-track:51dd69adb14b7b3ff6631c44044fb0c42bbb7164e0a06bb117fb283a31073a11` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/instance--318ea39af051b031561a517e.md) | 171 | `declaration-track:318ea39af051b031561a517eeaee367f8cd2d3fef04d1d45f91cab5db3f737c1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/instance--7b54ccac5bd2c2debaadcd88.md) | 174 | `declaration-track:7b54ccac5bd2c2debaadcd8825e9bd9eef3039202d6fe0e25e10f70471318cb9` |
| 13 | `def` | [coinvariantsTensorIndHom](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/coinvariantstensorindhom--69495c8b3877d79804d14cd1.md) | 189 | `declaration-track:69495c8b3877d79804d14cd18048e3ad40e7604b89cb2bb06826f41cdafb3b72` |
| 14 | `lemma` | [coinvariantsTensorIndHom_mk_tmul_indVMk](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/coinvariantstensorindhom-mk-tmul-indvmk--9e74a93afc6a8e28441e96b4.md) | 205 | `result-track:9e74a93afc6a8e28441e96b4a7ea31c37a06f460fa0ffe231c64a6fb21edf3eb` |
| 15 | `def` | [coinvariantsTensorIndInv](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/coinvariantstensorindinv--7a95fa88260666c8992a1046.md) | 214 | `declaration-track:7a95fa88260666c8992a1046eddae3b96649604febf20e62ab54da47981ef1b4` |
| 16 | `lemma` | [coinvariantsTensorIndInv_mk_tmul_indMk](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/coinvariantstensorindinv-mk-tmul-indmk--b7e0ac98c98bc6e6da85822c.md) | 228 | `result-track:b7e0ac98c98bc6e6da85822c9d766be7b4075b8e3de9a29cb64fec8d8bf807ac` |
| 17 | `def` | [coinvariantsTensorIndIso](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/coinvariantstensorindiso--aefa9eba2f23701f37e9c55c.md) | 239 | `declaration-track:aefa9eba2f23701f37e9c55c80e46dcea99e85df1792f063f4b3b61aeffee515` |
| 18 | `def` | [coinvariantsTensorIndNatIso](../../../../../mathematics/Algebra/LinearAlgebra/Induced/Variant487de80c3cdcb692b7d3810488117ca4336e8fc4de800756255690835fd0e931.lean/declarations/coinvariantstensorindnatiso--9280118c2442b7aec541ab9f.md) | 257 | `declaration-track:9280118c2442b7aec541ab9fd0ccfbab8967a77ed8da8574d174975e479f5702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
