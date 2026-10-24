# Verification target: GRWTSK.Algebra.Defs.Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b72fdc389bee77011b3d2b00dd9624273386cb54",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b72fdc389bee77011b3d2b00dd9624273386cb54`.

Source path: `GRWTSK/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean.json)

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
| 1 | `class` | [LieAdmissibleRing](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/lieadmissiblering--19d8add36111ab35c8027efd.md) | 47 | `declaration-track:19d8add36111ab35c8027efd6bfb813732b36c34b9343d4b087aa09c0bec6c77` |
| 2 | `class` | [LieAdmissibleAlgebra](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/lieadmissiblealgebra--4cc6980fb8a1b6a021b768a4.md) | 54 | `declaration-track:4cc6980fb8a1b6a021b768a4094d26450bb42cf273476a0b3ad921630cb5dbcc` |
| 3 | `instance` | [instLieRing](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instliering--0061f9d71f4d091c18c299a9.md) | 64 | `declaration-track:0061f9d71f4d091c18c299a9a6f0cecb3048f456a0555051754b626ebd8d68c6` |
| 4 | `instance` | [instLieAlgebra](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instliealgebra--9ec6d98df46939c67cc0736e.md) | 82 | `declaration-track:9ec6d98df46939c67cc0736ee3a52147da010e65e62a1b9350b5ae1123035b30` |
| 5 | `instance` | [instLieAdmissibleRing](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instlieadmissiblering--19248b23d67e41bb3c2414b9.md) | 94 | `declaration-track:19248b23d67e41bb3c2414b9febe95169cb7a1ecedbafb107b0504b652ee2326` |
| 6 | `instance` | [instLieAdmissibleAlgebra](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instlieadmissiblealgebra--2e7cff83486288be3602563d.md) | 107 | `declaration-track:2e7cff83486288be3602563d6b2d53ee5851bf13272c9edf7ee28b53a620b784` |
| 7 | `instance` | [instLieAdmissibleRing](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instlieadmissiblering--e6594842105a25ba64688308.md) | 117 | `declaration-track:e6594842105a25ba6468830831b67c6c8fd91d40dfff4d882ce917abb492b4fd` |
| 8 | `instance` | [instLieAdmissibleAlgebra](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instlieadmissiblealgebra--b26f092af400e1f2f34494ee.md) | 130 | `declaration-track:b26f092af400e1f2f34494eeb9a640220d883201376d3fd5800806bd4fe242a6` |
| 9 | `abbrev` | [instLieAdmissibleRing](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instlieadmissiblering--a523de8ed11713ce23569126.md) | 140 | `declaration-track:a523de8ed11713ce23569126b7081fcd48b0c784df42bc23f1c1db3c650ce259` |
| 10 | `abbrev` | [instLieAdmissibleAlgebra](../../../../mathematics/Algebra/Defs/Variant59a8f200b0baed9a1f275dfa3977f9d9459d654304bcc1a906614736609b0a77.lean/declarations/instlieadmissiblealgebra--27306dced5a392ce7f63ebc3.md) | 154 | `declaration-track:27306dced5a392ce7f63ebc3d5c0d048664e6ce67274eaebe9a8c3362cf625fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
