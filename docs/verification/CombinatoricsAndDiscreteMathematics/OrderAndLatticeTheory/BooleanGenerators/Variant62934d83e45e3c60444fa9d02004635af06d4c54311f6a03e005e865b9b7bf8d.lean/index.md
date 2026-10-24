# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BooleanGenerators.Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2afbd41b6a201f41bbdee02448f4e24d2702c299",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2afbd41b6a201f41bbdee02448f4e24d2702c299`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompactlyGenerated.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanGenerators](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/booleangenerators--07e184de3300916233329111.md) | 53 | `declaration-track:07e184de3300916233329111b7f569e033feb99b6cbcadbd70079f9ea37251f1` |
| 2 | `lemma` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/mono--c007c7c7b3d6b4719fec474d.md) | 66 | `result-track:c007c7c7b3d6b4719fec474de4924809a4ce6ed2059557c24d1027735b2e1c9e` |
| 3 | `lemma` | [atomistic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/atomistic--2b2f70803df171d05e15db7f.md) | 72 | `result-track:2b2f70803df171d05e15db7f1dbd4895748a21d4ba1c7798a81912c9e04c3cdb` |
| 4 | `lemma` | [isAtomistic_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/isatomistic-of-ssup-eq-top--f4a4218132baf02926a21195.md) | 101 | `result-track:f4a4218132baf02926a211955c1dfc48306a6f9720c6ee350252bdaba3cc2501` |
| 5 | `lemma` | [mem_of_isAtom_of_le_sSup_atoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/mem-of-isatom-of-le-ssup-atoms--87a07e2d36d9457ffb0b11c6.md) | 107 | `result-track:87a07e2d36d9457ffb0b11c65a31e4ce07b01f2b5a98a2fd33ff6b6e6fc11842` |
| 6 | `lemma` | [sSup_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/ssup-inter--60b7ca10ae9c152224772d55.md) | 118 | `result-track:60b7ca10ae9c152224772d55f5c443cbdce52045db39acdaae09aa2960fdc41b` |
| 7 | `def` | [distribLattice_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/distriblattice-of-ssup-eq-top--a1a7b8db9c212ded88b74924.md) | 138 | `declaration-track:a1a7b8db9c212ded88b74924d45f61a19378f15f021dfa72e9ab298d4aa604a2` |
| 8 | `lemma` | [complementedLattice_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/complementedlattice-of-ssup-eq-top--4b0d6b064dd2dae25c002201.md) | 151 | `result-track:4b0d6b064dd2dae25c002201e8ae9e52102d0afd0756378f56640d827b78ed3e` |
| 9 | `def` | [booleanAlgebra_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/booleanalgebra-of-ssup-eq-top--6ec9d578dde191a3fe9ca155.md) | 159 | `declaration-track:6ec9d578dde191a3fe9ca155fa731ea554f83d41dfc7782a8b3078aedf0825fb` |
| 10 | `lemma` | [sSup_le_sSup_iff_of_atoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/ssup-le-ssup-iff-of-atoms--012e80acb7f5ca402d251047.md) | 164 | `result-track:012e80acb7f5ca402d251047e2d7b8c266eb528d79c94b5af399d0556cf894a2` |
| 11 | `lemma` | [eq_atoms_of_sSup_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant62934d83e45e3c60444fa9d02004635af06d4c54311f6a03e005e865b9b7bf8d.lean/declarations/eq-atoms-of-ssup-eq-top--59fbf735d36013c0c3f05ecd.md) | 171 | `result-track:59fbf735d36013c0c3f05ecdf9f800a89309aa99566550e4f7080bad92482f77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
