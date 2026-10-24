# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bb032e29a0d0cf41abb123507b1ca4ff6b08aaf",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bb032e29a0d0cf41abb123507b1ca4ff6b08aaf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PiToModule.fromMatrix](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/pitomodule-frommatrix--2fd3fe5ed8cff941b92bbdf5.md) | 32 | `declaration-track:2fd3fe5ed8cff941b92bbdf52048b511a5d3350d17a95a5158fe381405e3cc7d` |
| 2 | `theorem` | [PiToModule.fromMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/pitomodule-frommatrix-apply--d22d8ca96940bc7560b7f2ed.md) | 35 | `result-track:d22d8ca96940bc7560b7f2edfa92d201a4ef1d584c86a1348993bff469b98793` |
| 3 | `theorem` | [PiToModule.fromMatrix_apply_single_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/pitomodule-frommatrix-apply-single-one--91960b7975680c119e6e295e.md) | 39 | `result-track:91960b7975680c119e6e295ec289f4674efd1c2b00f24ffceab2784dde4df32c` |
| 4 | `def` | [PiToModule.fromEnd](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/pitomodule-fromend--ee97cd538e02f86c4ade0deb.md) | 46 | `declaration-track:ee97cd538e02f86c4ade0deb5143974d9da0a2b8167af86638465dfd8d99c7a8` |
| 5 | `theorem` | [PiToModule.fromEnd_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/pitomodule-fromend-apply--2e7ae277edacb3a78243072c.md) | 49 | `result-track:2e7ae277edacb3a78243072c1d6f4a25146e2e449c443dab6f3ede8916caad69` |
| 6 | `theorem` | [PiToModule.fromEnd_apply_single_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/pitomodule-fromend-apply-single-one--6030a51f49ba2a0ee4bf1024.md) | 53 | `result-track:6030a51f49ba2a0ee4bf10241d8fdb8a7eed0e9bf715352cf4faafef056d1929` |
| 7 | `theorem` | [PiToModule.fromEnd_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/pitomodule-fromend-injective--4d33d8cc6b85c19efb09f542.md) | 57 | `result-track:4d33d8cc6b85c19efb09f542190ff19206ac0f115699faad3f3e039370510cd9` |
| 8 | `def` | [Matrix.Represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents--cec4697d74ed6b68217e8614.md) | 72 | `declaration-track:cec4697d74ed6b68217e8614d07d6f05f1f286eb613db193ce6f9b7e5e370649` |
| 9 | `theorem` | [Matrix.Represents.congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-congr-fun--83686a3e7ece13f0de0f71c8.md) | 77 | `result-track:83686a3e7ece13f0de0f71c84926d126c33b3f326e10c766fc61b17a167690b1` |
| 10 | `theorem` | [Matrix.represents_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-iff--6c3e6b76e1bdd29bc00bdc05.md) | 81 | `result-track:6c3e6b76e1bdd29bc00bdc05c20f12de160b95318d24914424a05a24fda910b0` |
| 11 | `theorem` | [Matrix.represents_iff'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-iff--e75c190654e45685240988e9.md) | 86 | `result-track:e75c190654e45685240988e9de6248449245d50a326f9054bce963d57674c13c` |
| 12 | `theorem` | [Matrix.Represents.mul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-mul--54bce79ba94cdc80e2d1b5fc.md) | 98 | `result-track:54bce79ba94cdc80e2d1b5fc9bc20e44fa8d70a0613a2c2de5c309d90f750487` |
| 13 | `theorem` | [Matrix.Represents.one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-one--88f0b413a3f701e6008a1b40.md) | 107 | `result-track:88f0b413a3f701e6008a1b4047b4530eded414999e04ea7ee786be7ed4018ba5` |
| 14 | `theorem` | [Matrix.Represents.add](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-add--1540cd4d56536f8ed66c232f.md) | 113 | `result-track:1540cd4d56536f8ed66c232f3fe67d5f2fe58fb866d2c7915c4e2f7bdc0554d9` |
| 15 | `theorem` | [Matrix.Represents.zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-zero--0f1dd95b0d96f33c18c81dc0.md) | 117 | `result-track:0f1dd95b0d96f33c18c81dc0d0c8907efbd558041c3ea8051351e3f1b3a18667` |
| 16 | `theorem` | [Matrix.Represents.smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-smul--f4e4719b4f25293e2f23a24a.md) | 121 | `result-track:f4e4719b4f25293e2f23a24ad1164d0730c3152e5daa23b1f60f937cd6cf9167` |
| 17 | `theorem` | [Matrix.Represents.algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-algebramap--887bf084ee8a42f4d47f3f22.md) | 126 | `result-track:887bf084ee8a42f4d47f3f22cf75511a5aae5d2000635b9a76c667ac19c90655` |
| 18 | `theorem` | [Matrix.Represents.eq](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-represents-eq--93bfa2a16ef9d38a3a99f9a2.md) | 130 | `result-track:93bfa2a16ef9d38a3a99f9a2ebd0a8db319553350418eeb9d936eb60f01eecaf` |
| 19 | `def` | [Matrix.isRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-isrepresentation--62e44c3c6960567fb280309e.md) | 139 | `declaration-track:62e44c3c6960567fb280309ea34f3720c3d52a937ff60d7be71ff6be819bfd04` |
| 20 | `def` | [Matrix.isRepresentation.toEnd](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-isrepresentation-toend--5305c26e9942df93cd478525.md) | 151 | `declaration-track:5305c26e9942df93cd478525cbe8541104f0ffaef453f6d8c1d198989c54c5da` |
| 21 | `theorem` | [Matrix.isRepresentation.toEnd_represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-isrepresentation-toend-represents--a2e3b3b8229577dbe93d794c.md) | 161 | `result-track:a2e3b3b8229577dbe93d794cce002c37ae7fcc920e1d3d9540a5f252302f18e4` |
| 22 | `theorem` | [Matrix.isRepresentation.eq_toEnd_of_represents](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-isrepresentation-eq-toend-of-represents--d34b831b0d0d34e83768f4ff.md) | 165 | `result-track:d34b831b0d0d34e83768f4ffe7b6f273a90bbb0226bc87f15981a7c586240fcf` |
| 23 | `theorem` | [Matrix.isRepresentation.toEnd_exists_mem_ideal](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-isrepresentation-toend-exists-mem-ideal--ff2d1c216efd8d236e5d5c77.md) | 170 | `result-track:ff2d1c216efd8d236e5d5c7763453e45417bc29fda3d92c86e4cc2a0960e6253` |
| 24 | `theorem` | [Matrix.isRepresentation.toEnd_surjective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/matrix-isrepresentation-toend-surjective--d6568c5dac7a2605cfcb23cd.md) | 188 | `result-track:d6568c5dac7a2605cfcb23cdee0d2f4a68c907fcc38389f36be716adeddc3ee3` |
| 25 | `theorem` | [LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/linearmap-exists-monic-and-coeff-mem-pow-and-aeval-eq-zero-of-range-le-s--3a0b349fcd0de521c515f9fc.md) | 203 | `result-track:3a0b349fcd0de521c515f9fc1e828b1fa896b65caa157eb4d438f3f0859c0c1b` |
| 26 | `theorem` | [LinearMap.exists_monic_and_aeval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean/declarations/linearmap-exists-monic-and-aeval-eq-zero--a6aef13f4c0f34bf45eb8ea8.md) | 223 | `result-track:a6aef13f4c0f34bf45eb8ea8acde504a9127318ee01cda70b803be937feda94d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
