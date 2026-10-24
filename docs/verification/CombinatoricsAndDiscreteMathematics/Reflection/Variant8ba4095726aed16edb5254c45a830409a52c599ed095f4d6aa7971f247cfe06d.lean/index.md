# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Reflection.Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00a07e25996771d0d3338f5b1cfffe0a578e9728",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00a07e25996771d0d3338f5b1cfffe0a578e9728`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/seq--fd67cbf3ec58b7fc5ffebd50.md) | 37 | `declaration-track:fd67cbf3ec58b7fc5ffebd506cc820e0e23aff467202047abe10a875f26485a3` |
| 2 | `theorem` | [seq_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/seq-eq--2f6cf384f43ab617e71a5dbf.md) | 42 | `result-track:2f6cf384f43ab617e71a5dbfc62e3402cbde0dd546379770e53530443083b0d5` |
| 3 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--6f876bebe0c10c836f54c58f.md) | 52 | `declaration-track:6f876bebe0c10c836f54c58f5bc1c17e509dad57860d36e2bbf90e6420bb047c` |
| 4 | `def` | [map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/map--367298f473ba366786ac9d69.md) | 55 | `declaration-track:367298f473ba366786ac9d699add7c3730818f4f519ebaffdc4dbd64e967ce9c` |
| 5 | `theorem` | [map_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/map-eq--07ff39497d101249306efcb0.md) | 65 | `result-track:07ff39497d101249306efcb01ec75d1f0fac3fc8546fdb587febf333c065cbf3` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--58e2d3d30286dd3f13b30aaf.md) | 68 | `declaration-track:58e2d3d30286dd3f13b30aafbd1b894268828226f1f4e2c2400730b18e0ef743` |
| 7 | `def` | [etaExpand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/etaexpand--637f0f3ab6702a22cfe946df.md) | 72 | `declaration-track:637f0f3ab6702a22cfe946dfa511c818024d8f9e84364ee429291c69d385c9f2` |
| 8 | `theorem` | [etaExpand_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/etaexpand-eq--4765008af229aa8ffa70e3c8.md) | 82 | `result-track:4765008af229aa8ffa70e3c8257d0a735d43ae4ecb697030c6e641c88db8c191` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--c2bcdf2aa08f34fd7f78083e.md) | 85 | `declaration-track:c2bcdf2aa08f34fd7f78083ecd38c4fe2cd8b59639fbaa8a8757067092b01184` |
| 10 | `def` | [Forall](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/forall--de0f81a2638116ea17e48077.md) | 89 | `declaration-track:de0f81a2638116ea17e48077c7a3bab389b2bd28116cb96401c809e68f734a5b` |
| 11 | `theorem` | [forall_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/forall-iff--dfa7307757f030aee9bb01c7.md) | 100 | `result-track:dfa7307757f030aee9bb01c7bdf52aaf884ddf54c825699a0a16ee950d522632` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--5fe53e86ca524e3e7675518c.md) | 106 | `declaration-track:5fe53e86ca524e3e7675518c0754e41bd2a3b9177238940176d78b677ad71e25` |
| 13 | `def` | [Exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/exists--24eee468af913dfaca82e969.md) | 110 | `declaration-track:24eee468af913dfaca82e969e0972939e352da4a1726d147f66b183ee6da0cba` |
| 14 | `theorem` | [exists_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/exists-iff--2f9c805b48773b68da96f4ff.md) | 120 | `result-track:2f9c805b48773b68da96f4ffaa5e8c3172208926586275f6c137e7fe7a58f76a` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--60eae2ca3523f642d4bc51c4.md) | 126 | `declaration-track:60eae2ca3523f642d4bc51c49badb611d231251a0421da98f39effe70963a667` |
| 16 | `def` | [sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/sum--2697805a2d637f2e72552bde.md) | 130 | `declaration-track:2697805a2d637f2e72552bdea1c4b1d19f50665e9ed8d2819cf42f6b2dce753a` |
| 17 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/prod--ef6ab8543cff268786dcaa6c.md) | 139 | `declaration-track:ef6ab8543cff268786dcaa6ca0d6ea66ed6925de229328b0b4fd10232abb4997` |
| 18 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--b2084217e616b7cb93018572.md) | 153 | `declaration-track:b2084217e616b7cb9301857228303278a33d80a03479f42cad64fbf45d5d3bc1` |
| 19 | `theorem` | [prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/prod-eq--83c9af96417ff0f9a6c7a370.md) | 156 | `result-track:83c9af96417ff0f9a6c7a370c8e44215a0bb1a6c0d5250c45ee7f2246bd60d12` |
| 20 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--77a3bb1bca5993fdd63fce2f.md) | 161 | `declaration-track:77a3bb1bca5993fdd63fce2f15b7fce883cfda27654724e122853409a55c482b` |
| 21 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/example--8c40769a9738e4b56016e4a5.md) | 164 | `declaration-track:8c40769a9738e4b56016e4a5e7dca7d80869024a03b57e4a76ca881483e4a5c9` |
| 22 | `def` | [mkProdEqQ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/mkprodeqq--eab9efbe7a06d16e77cba88d.md) | 172 | `declaration-track:eab9efbe7a06d16e77cba88de5a2b95db388f9c76fc2fbf02cad67321a3b7de3` |
| 23 | `def` | [mkSumEqQ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Reflection/Variant8ba4095726aed16edb5254c45a830409a52c599ed095f4d6aa7971f247cfe06d.lean/declarations/mksumeqq--7fa1752afa66e0e3367d7466.md) | 194 | `declaration-track:7fa1752afa66e0e3367d74660bc11d21f09eee0617bc21a76fd7a4c679c9bba1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
