# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0a59d1ead51158a889183a1d7c7cf849b3e462",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0a59d1ead51158a889183a1d7c7cf849b3e462`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_univ_eq_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/declarations/sup-univ-eq-isup--6682824582c6b7a7a1d2ac5b.md) | 35 | `result-track:6682824582c6b7a7a1d2ac5bc38331fc46984cbe29bcc099a981a04095614c40` |
| 2 | `theorem` | [inf_univ_eq_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/declarations/inf-univ-eq-iinf--db6d47f56872aafac0d32752.md) | 39 | `result-track:db6d47f56872aafac0d3275202db686240ad25e5edfdaab83e0a4d61032a6265` |
| 3 | `theorem` | [fold_inf_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/declarations/fold-inf-univ--1100131b0c8be5b18f90fe1b.md) | 43 | `result-track:1100131b0c8be5b18f90fe1ba09092b81a7f0bc61b9994b90615a75d5acdd7b5` |
| 4 | `theorem` | [fold_sup_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/declarations/fold-sup-univ--5c8a42d9a68fb120eef862c4.md) | 49 | `result-track:5c8a42d9a68fb120eef862c43dff72607bbef22f1707e4ad13e771a06ff0816f` |
| 5 | `lemma` | [mem_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/declarations/mem-inf--1d09c756fad2ca805d8d0fdd.md) | 53 | `result-track:1d09c756fad2ca805d8d0fddba49b15bdcf028779fd71027e6ee789000b97b42` |
| 6 | `theorem` | [Finite.exists_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/declarations/finite-exists-max--e5f53def04bd9b83a2c4dcfc.md) | 60 | `result-track:e5f53def04bd9b83a2c4dcfc462deb230a5edef57f5eec2a8f15062686d43ed5` |
| 7 | `theorem` | [Finite.exists_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant4607768b3bd7330530d1872c26169c58d3b5bf0e4906b8d38078c23db25b0a1a.lean/declarations/finite-exists-min--c3fa901e281860745e39d4f4.md) | 65 | `result-track:c3fa901e281860745e39d4f434171735ef779de897e55fbad0ddf649543bea3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
