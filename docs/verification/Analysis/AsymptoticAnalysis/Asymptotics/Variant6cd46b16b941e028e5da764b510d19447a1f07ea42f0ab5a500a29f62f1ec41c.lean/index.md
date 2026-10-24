# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f18ef1da1710e0f2166e404c25e9ccb8f99f0db1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f18ef1da1710e0f2166e404c25e9ccb8f99f0db1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Theta` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isTheta_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/istheta-ofreal--39fbab907fea18483b814c08.md) | 27 | `result-track:39fbab907fea18483b814c080fa4411bd4336c97a6c3f9c92b321b776d4a8266` |
| 2 | `theorem` | [isLittleO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/islittleo-ofreal-left--7de17bdbcfefbcfb1cb4c20e.md) | 31 | `result-track:7de17bdbcfefbcfb1cb4c20e1bff71851657b18b55c057e9e07fa10093824e0e` |
| 3 | `theorem` | [isLittleO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/islittleo-ofreal-right--a62908c7940c55816c2ec762.md) | 35 | `result-track:a62908c7940c55816c2ec762c0209751392f736669eb119ca57bb47ae4cb8269` |
| 4 | `theorem` | [isBigO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/isbigo-ofreal-left--782b5c997766be1d29bdeeb2.md) | 39 | `result-track:782b5c997766be1d29bdeeb2c82557beab0d5220760b9b358ffd151872eabec4` |
| 5 | `theorem` | [isBigO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/isbigo-ofreal-right--463a4e9edc70a23d6eab2829.md) | 43 | `result-track:463a4e9edc70a23d6eab282973be56a4b0faf833019872fe46befc235aa35833` |
| 6 | `theorem` | [isTheta_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/istheta-ofreal-left--1b212a1ab6577ff3ced39053.md) | 47 | `result-track:1b212a1ab6577ff3ced39053351639a10440c0c434f9f57bed079a888cbe978a` |
| 7 | `theorem` | [isTheta_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/istheta-ofreal-right--b40b960c26662effcb85f89b.md) | 51 | `result-track:b40b960c26662effcb85f89bb91b3b0665af5ce58969bbb302f30bc826a73d3b` |
| 8 | `lemma` | [isBigO_comp_ofReal_nhds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/isbigo-comp-ofreal-nhds--9888eccb00d8d0e0dab0e7e7.md) | 56 | `result-track:9888eccb00d8d0e0dab0e7e7b3e07446f9c55303c4d9a8a6777cabd5915d80ca` |
| 9 | `lemma` | [isBigO_comp_ofReal_nhds_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant6cd46b16b941e028e5da764b510d19447a1f07ea42f0ab5a500a29f62f1ec41c.lean/declarations/isbigo-comp-ofreal-nhds-ne--51390261584d903408ae845e.md) | 60 | `result-track:51390261584d903408ae845efd0c50f092e332efed44c32dc977f65a14fd0f02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
