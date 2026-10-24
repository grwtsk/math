# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Derivation.Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ece18da772d7427d0bd68a96c358b145f83454f4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ece18da772d7427d0bd68a96c358b145f83454f4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivative'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/derivative--f3fdc28b08002e1d476cc81a.md) | 38 | `declaration-track:f3fdc28b08002e1d476cc81ad89e8eb1d58c04863a67dd015821ec52329e2ec9` |
| 2 | `theorem` | [derivation_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/derivation-c--d3840413a5873f31ee225638.md) | 48 | `result-track:d3840413a5873f31ee22563820f43933148f093fe5a8d7881ce9a8a0b2c4ed99` |
| 3 | `theorem` | [C_smul_derivation_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/c-smul-derivation-apply--6f26683a9e192509b3c17101.md) | 52 | `result-track:6f26683a9e192509b3c17101db1e9021f1e1b3943df946659b788960e6ed4819` |
| 4 | `theorem` | [derivation_ext](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/derivation-ext--10296271cc7b690ddee3b660.md) | 58 | `result-track:10296271cc7b690ddee3b6608e9592fc8afc2fb5db990a91ae73c62e7aef229e` |
| 5 | `def` | [mkDerivation](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivation--f041800b107ed83ccc1e06d4.md) | 66 | `declaration-track:f041800b107ed83ccc1e06d43453b7c18b278187082df9d7b69ea49272d7f421` |
| 6 | `lemma` | [mkDerivation_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivation-apply--c64fcb326215c2acc76782f7.md) | 71 | `result-track:c64fcb326215c2acc76782f7e9b9b42e79c844cb8bfce73129c50f366a913adc` |
| 7 | `theorem` | [mkDerivation_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivation-x--ffef20ea0f50155bf6bd5c91.md) | 76 | `result-track:ffef20ea0f50155bf6bd5c91559ab9b11d9404f55bf426ebab35012dc4449621` |
| 8 | `lemma` | [mkDerivation_one_eq_derivative'](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivation-one-eq-derivative--d77e7e8a44ae05e23de6a8cb.md) | 78 | `result-track:d77e7e8a44ae05e23de6a8cb64d84be495471f6e3f50128f1364f7a273f09ed9` |
| 9 | `lemma` | [mkDerivation_one_eq_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivation-one-eq-derivative--55a2400c0b2affa1aa515041.md) | 82 | `result-track:55a2400c0b2affa1aa515041966a32a3fbba6e54be56fadbd34b2d1e00182456` |
| 10 | `def` | [mkDerivationEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivationequiv--1a55017e5045b1d78de2cdca.md) | 87 | `declaration-track:1a55017e5045b1d78de2cdcabd266e38dc2690611cde5310b7ba40f3aac0a5eb` |
| 11 | `lemma` | [mkDerivationEquiv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivationequiv-apply--2b0575ee18ebd9c88ff7090e.md) | 96 | `result-track:2b0575ee18ebd9c88ff7090e54ffdd5bb3b47f5a953c206b3f411a74c7ea1340` |
| 12 | `lemma` | [mkDerivationEquiv_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/mkderivationequiv-symm-apply--c160ce5f0eeb17b463c448d4.md) | 100 | `result-track:c160ce5f0eeb17b463c448d4a37124f64be5cb742ebe2d865d98cdc26417cae5` |
| 13 | `def` | [compAEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/compaeval--5de64c2850926a77658a7081.md) | 126 | `declaration-track:5de64c2850926a77658a70813ea31c94e9181563fb80cc4f90d654ad8d8fd384` |
| 14 | `theorem` | [compAEval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/compaeval-eq--7f09a93488e6b73eb1e10016.md) | 140 | `result-track:7f09a93488e6b73eb1e10016a81b8394677d5c2f1248ccb694386aa209f02c89` |
| 15 | `theorem` | [comp_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Derivation/Variant7106afe0fd67b3ef1aa8866284acc1a31dcab17ed183a14312ec91677a5f6acf.lean/declarations/comp-aeval-eq--102dccb628669d66d3387dc9.md) | 154 | `result-track:102dccb628669d66d3387dc997d0fd640ffd7bc280ea71a4539549ab5f6afa30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
