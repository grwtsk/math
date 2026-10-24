# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35d5eee323d63cd154a91f5820a4b79f9d744306",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35d5eee323d63cd154a91f5820a4b79f9d744306`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Invariant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/aeval--a1ee2021c9db8fa7116dac83.md) | 44 | `declaration-track:a1ee2021c9db8fa7116dac83f91be4e4e0d3b02a48c036d1d5308017ba6f7084` |
| 2 | `instance` | [AEval.instAddCommGroup](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/aeval-instaddcommgroup--c9a0d7bf9d93bab7b840e145.md) | 47 | `declaration-track:c9a0d7bf9d93bab7b840e145ea965246aa3bd43e0864641b7148143fb70dee46` |
| 3 | `instance` | [instAddCommMonoid](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/instaddcommmonoid--2800d0cc7bf1e936a9253b93.md) | 56 | `declaration-track:2800d0cc7bf1e936a9253b939378266c4ed8f19303dd87d061302ef49afab4bb` |
| 4 | `instance` | [instModuleOrig](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/instmoduleorig--fd3518b548f859dce758c0b0.md) | 58 | `declaration-track:fd3518b548f859dce758c0b0cce272ed736110d132ef366e99aa1f6f86fe94f8` |
| 5 | `instance` | [instFiniteOrig](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/instfiniteorig--8c1772b1be46654969ba0c5f.md) | 60 | `declaration-track:8c1772b1be46654969ba0c5ffea529413a01d10f72668dc7fe34916a569c8174` |
| 6 | `instance` | [instModulePolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/instmodulepolynomial--78a7e943ea079f98954f9536.md) | 63 | `declaration-track:78a7e943ea079f98954f9536984cd9568fa52a2c60441c524257b016218e63e9` |
| 7 | `def` | [of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/of--dbc724e5ea77b82fd09c2f73.md) | 69 | `declaration-track:dbc724e5ea77b82fd09c2f7346c1e107dc265b34128cb57c8b92291aba0d8cc0` |
| 8 | `lemma` | [of_aeval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/of-aeval-smul--d1ec8bab2937a5c663212fcd.md) | 74 | `result-track:d1ec8bab2937a5c663212fcde5ce87e437c2137cbab8930b35341a014c3389f4` |
| 9 | `lemma` | [of_symm_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/of-symm-smul--2771d06314b0a00ebb272ed9.md) | 76 | `result-track:2771d06314b0a00ebb272ed9e8ab6fc27269f9fe4c738359b36f242779c6213d` |
| 10 | `lemma` | [C_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/c-smul--67938805829357542bae697e.md) | 79 | `result-track:67938805829357542bae697ee36ccfb39aae8c3e32e19bd45be5228a6630eed8` |
| 11 | `lemma` | [X_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/x-smul-of--e6fdd7986b1bd06111a8e1b1.md) | 82 | `result-track:e6fdd7986b1bd06111a8e1b1284c8d9732ff7c62eb406ae3d0d4cd171f2104e5` |
| 12 | `lemma` | [of_symm_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/of-symm-x-smul--f70727989ae03100ef9f2912.md) | 85 | `result-track:f70727989ae03100ef9f291245ab60b253737156ee50fa8432de921953896d92` |
| 13 | `instance` | [instIsScalarTowerOrigPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/instisscalartowerorigpolynomial--885c152b72e803b025e4e84d.md) | 89 | `declaration-track:885c152b72e803b025e4e84d9751634b51562610b22e2af2389ca664c08d04f4` |
| 14 | `instance` | [instFinitePolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/instfinitepolynomial--7f63e34354f33143ddd21475.md) | 94 | `declaration-track:7f63e34354f33143ddd21475ff4981df88048c684e9ab11a07164b498ca936c3` |
| 15 | `def` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.LinearMap.ofAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/root-grwtsk-algebra-commutativealgebra-aeval-variant7433ea4b87f91bffd139--f0684502ccf6240976d25ce0.md) | 98 | `declaration-track:f0684502ccf6240976d25ce0dbb592ee15c10b36a8ae87d5d620009ac011a923` |
| 16 | `def` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.AEval.Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.LinearEquiv.ofAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/root-grwtsk-algebra-commutativealgebra-aeval-variant7433ea4b87f91bffd139--e45a4b984e1d3d94cb0c2f43.md) | 109 | `declaration-track:e45a4b984e1d3d94cb0c2f4388d43c3213aebe438523d9da6f73d6a39a04379b` |
| 17 | `lemma` | [annihilator_eq_ker_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/annihilator-eq-ker-aeval--2ac6bb47994032f01e846e38.md) | 117 | `result-track:2ac6bb47994032f01e846e38135473abe65c646caa4790ef12998abbe4eb06fa` |
| 18 | `lemma` | [annihilator_top_eq_ker_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/annihilator-top-eq-ker-aeval--84b0631ea6e417f62c162557.md) | 125 | `result-track:84b0631ea6e417f62c162557433c2a5396f53a513dbdb52aedcc6aa3c10014fe` |
| 19 | `def` | [mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/mapsubmodule--267b413b15e083a07d6a6b70.md) | 137 | `declaration-track:267b413b15e083a07d6a6b70c0d2e7837fe2feb1701acb9d74109e3804439f1c` |
| 20 | `lemma` | [mem_mapSubmodule_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/mem-mapsubmodule-apply--c3a0a5af7b29e0d537e9aac5.md) | 152 | `result-track:c3a0a5af7b29e0d537e9aac55a90acdd232bbdbc905d13604915642b2af40412` |
| 21 | `lemma` | [mem_mapSubmodule_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/mem-mapsubmodule-symm-apply--5359531dfc99be38ddc62b5c.md) | 156 | `result-track:5359531dfc99be38ddc62b5ca1ff523773410461fe5cebf684471f91c7e98f7c` |
| 22 | `def` | [equiv_mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/equiv-mapsubmodule--4b84d267375fcfd3cc407fe4.md) | 164 | `declaration-track:4b84d267375fcfd3cc407fe4a8f3e1f0af309f2c9e3b448514b7a2f9e6d2643a` |
| 23 | `def` | [restrict_equiv_mapSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/restrict-equiv-mapsubmodule--bc26fd788632c0f24e5bbd6a.md) | 175 | `declaration-track:bc26fd788632c0f24e5bbd6a00884ea30b85d7f514142498a4c09a2edf41abee` |
| 24 | `abbrev` | [AEval'](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/aeval--ca6e20d329597d9c28dc6fb0.md) | 196 | `declaration-track:ca6e20d329597d9c28dc6fb0554a6647ff3cdf566074e2d9bd0c8973543f2ce6` |
| 25 | `abbrev` | [AEval'.of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/aeval-of--c7c5737565375dda4e405006.md) | 201 | `declaration-track:c7c5737565375dda4e405006a03be767ca6d4d2609d5fc24a1aae12568bcce4f` |
| 26 | `lemma` | [AEval'_def](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/aeval-def--eb76a2f900cf2a36b1244fb4.md) | 202 | `result-track:eb76a2f900cf2a36b1244fb442ebbd1d8e6c03dc08087beab0b73acc7b10f565` |
| 27 | `lemma` | [AEval'.X_smul_of](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/aeval-x-smul-of--75a3fd22febe1ef44d9c656a.md) | 203 | `result-track:75a3fd22febe1ef44d9c656aaba570da400dd063c47094ff6a1cd88c38593882` |
| 28 | `lemma` | [AEval'.of_symm_X_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/aeval-of-symm-x-smul--8957a59138f059c1ae7c5340.md) | 205 | `result-track:8957a59138f059c1ae7c53400db8c55208fd9f0b2a724c7420455d9ac8434555` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/AEval/Variant629c093f18f3da7957ff7d5767b11abbe153370deb40995a7227a278dfd1956d.lean/declarations/instance--e92026a04c32566fff799625.md) | 208 | `declaration-track:e92026a04c32566fff79962566c6fdbe855db0f018c1c159ecc6934caa89d432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
