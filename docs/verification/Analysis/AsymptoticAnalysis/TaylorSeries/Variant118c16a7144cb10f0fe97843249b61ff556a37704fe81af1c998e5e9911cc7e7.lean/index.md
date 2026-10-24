# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TaylorSeries.Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f838b289451936c60ca4e9847d1a718bc36804e5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f838b289451936c60ca4e9847d1a718bc36804e5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean.json)

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
| 1 | `lemma` | [hasSum_taylorSeries_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/hassum-taylorseries-on-ball--403205d8cd0a6b7908da8c73.md) | 45 | `result-track:403205d8cd0a6b7908da8c7365df07a52a083f35d581badc24c9df7618bdbc23` |
| 2 | `lemma` | [taylorSeries_eq_on_ball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/taylorseries-eq-on-ball--aee700676bff9db805bbe518.md) | 65 | `result-track:aee700676bff9db805bbe518a752ca2ba90f6391131a118b22c5635f2c615415` |
| 3 | `lemma` | [taylorSeries_eq_on_ball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/taylorseries-eq-on-ball--1c9f82589571b639b2c2b40a.md) | 72 | `result-track:1c9f82589571b639b2c2b40a1ab94264cfdb76705b17cde8e9333c81bfaeed52` |
| 4 | `lemma` | [hasSum_taylorSeries_on_eball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/hassum-taylorseries-on-eball--293cefba0e8fbcaee74a8657.md) | 87 | `result-track:293cefba0e8fbcaee74a8657b9e69c1ced9edd822f2b65126986306abb735d10` |
| 5 | `lemma` | [taylorSeries_eq_on_eball](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/taylorseries-eq-on-eball--2241b282784c57184bad8ee5.md) | 99 | `result-track:2241b282784c57184bad8ee5ad9580bcb81d843eada6c359adc90a70ec70c78e` |
| 6 | `lemma` | [taylorSeries_eq_on_eball'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/taylorseries-eq-on-eball--39351400cc335807088d8a9e.md) | 106 | `result-track:39351400cc335807088d8a9e778fac3316146fcee9e52b268141fc0c6ffd0d1a` |
| 7 | `lemma` | [hasSum_taylorSeries_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/hassum-taylorseries-of-entire--fc544987caf09edd59bfb89a.md) | 120 | `result-track:fc544987caf09edd59bfb89a27dfbc78a535059a9d97de1fc9997f7bc31cb92a` |
| 8 | `lemma` | [taylorSeries_eq_of_entire](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/taylorseries-eq-of-entire--463d840ff42155ce517a34ed.md) | 128 | `result-track:463d840ff42155ce517a34ed7c953e3f8945479a9f3368c9f76936ce57925eac` |
| 9 | `lemma` | [taylorSeries_eq_of_entire'](../../../../../mathematics/Analysis/AsymptoticAnalysis/TaylorSeries/Variant118c16a7144cb10f0fe97843249b61ff556a37704fe81af1c998e5e9911cc7e7.lean/declarations/taylorseries-eq-of-entire--33997fe8f4981f0c098ebb3a.md) | 134 | `result-track:33997fe8f4981f0c098ebb3a005f71058441b5c001374e0629e438402ba805e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
