# Verification target: GRWTSK.Algebra.LinearAlgebra.Composition.Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2e0f9853375a2c7f8e486a1ed9151c36b2ffb84",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2e0f9853375a2c7f8e486a1ed9151c36b2ffb84`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp--ed5c14dd23faed4fa2080665.md) | 33 | `declaration-track:ed5c14dd23faed4fa2080665fd942d5e817bdfc3b0cea3234759589069c8a595` |
| 2 | `theorem` | [comp_map_map](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-map-map--d63dd14f527f5349b866de1b.md) | 42 | `result-track:d63dd14f527f5349b866de1b0dfa6c2e4fcb091e0851dc0a48e32b6b9552f09d` |
| 3 | `theorem` | [comp_single_single](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-single-single--46cc61ef8266a49ea3ac9f1e.md) | 46 | `result-track:46cc61ef8266a49ea3ac9f1e4fa743bad91aab0bd18a26ea46b1de1352c183ff` |
| 4 | `theorem` | [comp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-symm-single--b0cdd0d732e2d05194837c19.md) | 70 | `result-track:b0cdd0d732e2d05194837c199844fc8b8f3600fd1dc78ef6dce6b0a171d89249` |
| 5 | `theorem` | [comp_diagonal_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-diagonal-diagonal--7ca3f9a27502ead063c807be.md) | 79 | `result-track:7ca3f9a27502ead063c807beb122c9efc50d9569cf6ef5acc761771a9f5708ac` |
| 6 | `theorem` | [comp_symm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-symm-diagonal--7ae4ae84d487d308e9b18df1.md) | 93 | `result-track:7ae4ae84d487d308e9b18df1e1ee950c35b17a175e40ad6de38b674064685cc4` |
| 7 | `theorem` | [comp_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-transpose--69cd57de758b4110599e9276.md) | 97 | `result-track:69cd57de758b4110599e927633c1b6ec7df163611fadccf383cd2d8f4248fa56` |
| 8 | `theorem` | [comp_map_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-map-transpose--d928ef5d9956bd9a929091b7.md) | 100 | `result-track:d928ef5d9956bd9a929091b7d98e330a39813d33fb482e79b0cf545defc36a7c` |
| 9 | `theorem` | [comp_symm_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/comp-symm-transpose--888a7d0cf0bde968ed0bbbea.md) | 103 | `result-track:888a7d0cf0bde968ed0bbbea6bd93af33a96007bc0d3b0db5c698e87f38f5726` |
| 10 | `def` | [compAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compaddequiv--ac69f35d1cc2797251e23a10.md) | 113 | `declaration-track:ac69f35d1cc2797251e23a10552baa5bb3d2ce727b84700fcc5452167e86e248` |
| 11 | `theorem` | [compAddEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compaddequiv-apply--adf48f8e66cfe1cc3d8dd211.md) | 118 | `result-track:adf48f8e66cfe1cc3d8dd211b10a16b524ae3279cb34f95230baf460d2e29fda` |
| 12 | `theorem` | [compAddEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compaddequiv-symm-apply--4b7d0b259f006614e9f2128d.md) | 122 | `result-track:4b7d0b259f006614e9f2128daed52be3b5f81cbeb700c191cd4875b04ff91055` |
| 13 | `def` | [compRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compringequiv--6b1d2e44697e1c7d4f273325.md) | 132 | `declaration-track:6b1d2e44697e1c7d4f27332528f23831e87f6a54c555b3304d332122947c5a9c` |
| 14 | `theorem` | [compRingEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compringequiv-apply--17ed4c18a85b467b4e17a65b.md) | 137 | `result-track:17ed4c18a85b467b4e17a65b9a5f98d84634482ef6c3faedce473ad6859b1c31` |
| 15 | `theorem` | [compRingEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compringequiv-symm-apply--52c571b828932e6381c4ee9f.md) | 141 | `result-track:52c571b828932e6381c4ee9f333f3915e71d4d3d6f61674b173522998b3fdf82` |
| 16 | `def` | [compLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/complinearequiv--fd070fd8bfa268da92570d68.md) | 152 | `declaration-track:fd070fd8bfa268da92570d683bdc0ec56b5b5d7f1145f5613324d5e776e331ae` |
| 17 | `def` | [compAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compalgequiv--5d56cd75049d35004dcf0b61.md) | 165 | `declaration-track:5d56cd75049d35004dcf0b61980add228b388351ec506fc37512598d00b733de` |
| 18 | `theorem` | [compAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compalgequiv-apply--fb5ccaf258bd1f1544f014db.md) | 170 | `result-track:fb5ccaf258bd1f1544f014db7b93bee7e32abfae35343e5698f6d56ee612ff3b` |
| 19 | `theorem` | [compAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Composition/Variantee70b3ca84657942582be23bcb1cc4413b85c82c21dcbfeb77e5c1ba4983e4bc.lean/declarations/compalgequiv-symm-apply--91720facfb62e9c52bd4cb4b.md) | 174 | `result-track:91720facfb62e9c52bd4cb4bbaff9b612c6dc904f4d91d8a61654a1e7bb1f1fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
