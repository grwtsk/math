# Verification target: GRWTSK.Analysis.SpecialFunctions.IntervalEvalAffine.Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efeff7616967a6a26ef787568fdf4fe3e07002e3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efeff7616967a6a26ef787568fdf4fe3e07002e3`.

Source path: `GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Transcendental` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineConfig](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/affineconfig--461a9847ef1a6aa2c618b7ef.md) | 58 | `declaration-track:461a9847ef1a6aa2c618b7ef5b8f419305dcb6dd45bf37af32c48e5226bc8cf7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/instance--da26706f18ea0ccbbab37c8c.md) | 65 | `declaration-track:da26706f18ea0ccbbab37c8cf445d9f751bbce206751e32ff63bdeb017e2d3b9` |
| 3 | `abbrev` | [AffineEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/affineenv--3eca6745d86758f0280bb1de.md) | 70 | `declaration-track:3eca6745d86758f0280bb1ded0b019d9e3b7dac05d2040c0a60daa5ece7cdf97` |
| 4 | `def` | [toAffineEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/toaffineenv--912a144456d3412c0c426aa7.md) | 75 | `declaration-track:912a144456d3412c0c426aa7e9d49a0ad10d2110ecc45233492c348a4fbac67c` |
| 5 | `def` | [evalIntervalAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/evalintervalaffine--e42938ee77a1df60432a8aca.md) | 92 | `declaration-track:e42938ee77a1df60432a8acad52678a808a789cd511517a891fa910a3dd35b38` |
| 6 | `def` | [evalAffineToInterval](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/evalaffinetointerval--62a4a1b011b54cfccbf6f9d2.md) | 168 | `declaration-track:62a4a1b011b54cfccbf6f9d2138a8a22510cc79dc5aa96e634473217bb6d56f9` |
| 7 | `def` | [checkUpperBoundAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/checkupperboundaffine--e2c8da3bc1e1331ab004e8fd.md) | 172 | `declaration-track:e2c8da3bc1e1331ab004e8fdceda5963e42dc1c284a986039fdb119e56626b92` |
| 8 | `def` | [checkLowerBoundAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/checklowerboundaffine--6c8e9ae2c4402bd5f22f8ee3.md) | 177 | `declaration-track:6c8e9ae2c4402bd5f22f8ee32c85a047374309893d192117ac702c2feccc8412` |
| 9 | `def` | [envMemAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/envmemaffine--7039d6c7319125d80649a949.md) | 184 | `declaration-track:7039d6c7319125d80649a94938b8fcfd7ee1314a3bdb1364e8105e7d2f38c8dd` |
| 10 | `def` | [evalDomainValidAffine](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/evaldomainvalidaffine--d393339dc58de60adfca2a4d.md) | 190 | `declaration-track:d393339dc58de60adfca2a4d1a02d71f6fb0e980cc06e3641d710847c3c3ab8f` |
| 11 | `theorem` | [evalDomainValidAffine_of_ExprSupported](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/evaldomainvalidaffine-of-exprsupported--90b2c418c04b35f552e4309b.md) | 214 | `result-track:90b2c418c04b35f552e4309ba0d96c5695fdc534e335c8dd6e7f3b4125b2e8e8` |
| 12 | `theorem` | [evalIntervalAffine_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/evalintervalaffine-correct--0101db4407a5dc2448566fd8.md) | 236 | `result-track:0101db4407a5dc2448566fd8798ee1fbea5b8aa2e7a9d3a548e013d539ad1bbe` |
| 13 | `theorem` | [evalIntervalAffine_toInterval_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/declarations/evalintervalaffine-tointerval-correct--6652890f5c2376b36eaf7c53.md) | 336 | `result-track:6652890f5c2376b36eaf7c538a296b173380dbc3b18920c1adafe4e0850db4d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
