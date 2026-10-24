# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55f4cb3eca5945887fc8e6cb815c0b378881e80c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55f4cb3eca5945887fc8e6cb815c0b378881e80c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_univ_eq_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/declarations/sup-univ-eq-isup--e2c702232b93c785c287105a.md) | 27 | `result-track:e2c702232b93c785c287105ad1e2ebb52ba2d7b0de034b13551624c86ccad44c` |
| 2 | `theorem` | [inf_univ_eq_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/declarations/inf-univ-eq-iinf--3ab5ecbc6f79ea5c606a9314.md) | 31 | `result-track:3ab5ecbc6f79ea5c606a93143c63ff467647494ee0903a9abaa77c9aed011777` |
| 3 | `theorem` | [fold_inf_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/declarations/fold-inf-univ--52e2e639f37f2f55c435be28.md) | 35 | `result-track:52e2e639f37f2f55c435be28a39ab108875e56c0ac5ad11cfc1dfe086e647054` |
| 4 | `theorem` | [fold_sup_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/declarations/fold-sup-univ--af8bba150c915be10aadbd73.md) | 41 | `result-track:af8bba150c915be10aadbd73ea68a65683a591b52ed06c84a0df8020bebaa5ba` |
| 5 | `lemma` | [mem_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/declarations/mem-inf--4b895fb2ae8e4066f19548b0.md) | 45 | `result-track:4b895fb2ae8e4066f19548b024677d71bcd76a393378e112ef6a8914d3d09d36` |
| 6 | `theorem` | [Finite.exists_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/declarations/finite-exists-max--0fa01d8d0a06f74272424d9d.md) | 52 | `result-track:0fa01d8d0a06f74272424d9dba10b934e6ae7a780d95943f4c836db8b5cf4cd6` |
| 7 | `theorem` | [Finite.exists_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant5ce47c2cfb32a14ea66ab9355b8f2ec8abfc969fd7282035f8735932f9f93067.lean/declarations/finite-exists-min--6acca02e0b0d070718d398c0.md) | 57 | `result-track:6acca02e0b0d070718d398c0bddbb149c18e2480f15c4a3a99928f652958b54b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
