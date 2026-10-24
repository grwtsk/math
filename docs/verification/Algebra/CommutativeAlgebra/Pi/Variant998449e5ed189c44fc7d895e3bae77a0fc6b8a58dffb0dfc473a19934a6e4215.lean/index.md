# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Pi.Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c0165dd378b87f53e8126e5d115d5bbf6ad47d8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c0165dd378b87f53e8126e5d115d5bbf6ad47d8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Polynomial.hasSMulPi](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/declarations/polynomial-hassmulpi--c5eb5e009e730ed13d9d05ba.md) | 33 | `declaration-track:c5eb5e009e730ed13d9d05baacd0796536bc4d54c9837c5486e1adccccc2b061` |
| 2 | `def` | [Polynomial.hasSMulPi'](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/declarations/polynomial-hassmulpi--3bbc7d483172ea3d0cdd16e3.md) | 39 | `declaration-track:3bbc7d483172ea3d0cdd16e30f6cc9c292ace782296004762ed0a6c74750fc06` |
| 3 | `theorem` | [polynomial_smul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/declarations/polynomial-smul-apply--f9b3d5d9497d7c9422b82710.md) | 46 | `result-track:f9b3d5d9497d7c9422b8271078cd2cdb66cb06f42c9a72abc66ebee1f91b5af2` |
| 4 | `theorem` | [polynomial_smul_apply'](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/declarations/polynomial-smul-apply--dec7b4dcb70454de1c87d49c.md) | 51 | `result-track:dec7b4dcb70454de1c87d49c3d900deb8aa3c739e15ff781417be6d4472bea04` |
| 5 | `def` | [Polynomial.algebraPi](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/declarations/polynomial-algebrapi--e82a022a7ddd9015ac7bd57f.md) | 60 | `declaration-track:e82a022a7ddd9015ac7bd57f2a2b55241592c4a64b327c49eba0f946fb9c0cfc` |
| 6 | `theorem` | [Polynomial.algebraMap_pi_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/declarations/polynomial-algebramap-pi-eq-aeval--a625991a77be83630e3badb9.md) | 87 | `result-track:a625991a77be83630e3badb9b255c1d9df541115b13fc3e10c8d0ee92217563e` |
| 7 | `theorem` | [Polynomial.algebraMap_pi_self_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/declarations/polynomial-algebramap-pi-self-eq-eval--c814a1d7e65e8047b2ba216d.md) | 92 | `result-track:c814a1d7e65e8047b2ba216d837c06cfea54f4e8f5f6fc3ee2b97d7bd135d6de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
