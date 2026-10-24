# Verification target: GRWTSK.Algebra.LinearAlgebra.FeshbachReconstruction.Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72a01fb15a7aa88b8438df2fc023b2b34e5f0ed0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72a01fb15a7aa88b8438df2fc023b2b34e5f0ed0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SchurComplement` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schur](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/schur--2a3000c7cb7c1d03ed378c0b.md) | 39 | `declaration-track:2a3000c7cb7c1d03ed378c0bd8bbc0fbe6626128c5b15340643d05e98f023a4d` |
| 2 | `def` | [blockMap](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/blockmap--d9df233f39c7239a19614be0.md) | 44 | `declaration-track:d9df233f39c7239a19614be06df8ae9eb56dbcf3b449d82ab8a2c69a232dce1c` |
| 3 | `theorem` | [blockMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/blockmap-apply--7a76cc3170657c838879167f.md) | 53 | `result-track:7a76cc3170657c838879167f095d60d24eb4b234b569758a956fbfce1754490c` |
| 4 | `theorem` | [blockMap_eq_fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/blockmap-eq-fromblocks--9c63645dd04671b64691149c.md) | 60 | `result-track:9c63645dd04671b64691149c8700da8656c77ac2ce8ed337d69e40b02746a187` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/lift--ee46be3ef6c993bed2c9c037.md) | 68 | `declaration-track:ee46be3ef6c993bed2c9c0370d79f6b45b986caaf78dfbf88d08bb886507d8ea` |
| 6 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/lift-apply--2f02c732c1919fe53768e878.md) | 73 | `result-track:2f02c732c1919fe53768e878f8a6f4a92a35c777467ad8af12e364ca18beca33` |
| 7 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/restrict--fd3c3734f74e1f1213cb57f3.md) | 77 | `declaration-track:fd3c3734f74e1f1213cb57f32b3fe3f5c616295719d07873b823baaec6d35108` |
| 8 | `theorem` | [restrict_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/restrict-lift--3608155e48d52604f4c411c9.md) | 81 | `result-track:3608155e48d52604f4c411c97d2e937e0b3b258629bbb5e8ab66f14c4c2521e6` |
| 9 | `theorem` | [restrict_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/restrict-comp-lift--58273b1bcbd145ce00d29f34.md) | 85 | `result-track:58273b1bcbd145ce00d29f34565aaa7af5ace104c66344a27be717faefc3d7dd` |
| 10 | `def` | [project](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/project--d949660231afc2cae02e4d87.md) | 91 | `declaration-track:d949660231afc2cae02e4d87524541b2824ef2ec89aa1f7d7d3ae3c89cc6c597` |
| 11 | `theorem` | [project_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/project-idempotent--2a36c3dab09283cdb7346921.md) | 96 | `result-track:2a36c3dab09283cdb7346921853254ed8d0ae08e32168c28eafc9dacb735711b` |
| 12 | `theorem` | [lower_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/lower-eq-zero-iff--ebaf293ee84a844723f361fe.md) | 100 | `result-track:ebaf293ee84a844723f361fe1d514cfed870a6cc572df2b03c40f27f8bd315c6` |
| 13 | `theorem` | [blockMap_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/blockmap-lift--e80f1627bdb273a872d81e82.md) | 112 | `result-track:e80f1627bdb273a872d81e82ea974a65c55c426504ec45f6bb133e4b11b8b2e9` |
| 14 | `theorem` | [blockMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/blockmap-eq-zero-iff--64a140f54ef7ab6680a34f2d.md) | 123 | `result-track:64a140f54ef7ab6680a34f2d1f10b3e451a26999cfb090682220359bc4d03697` |
| 15 | `theorem` | [kernel_eq_lift](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/kernel-eq-lift--ad8b2eab073bd448c19678c3.md) | 141 | `result-track:ad8b2eab073bd448c19678c30f89a5d3644c8e703ce505fedffe647e1120749d` |
| 16 | `def` | [kernelEquiv](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/kernelequiv--86b33a27e706134b94e387c6.md) | 155 | `declaration-track:86b33a27e706134b94e387c6a0b99a1e84f4e860b3fc5b050d32a414abd4b1f2` |
| 17 | `def` | [provenanceInvertible](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/provenanceinvertible--46c99e11e560e80e08796020.md) | 191 | `declaration-track:46c99e11e560e80e0879602088e89b574427902232e49a13618a305c48eb2533` |
| 18 | `theorem` | [feshbachLift_eq_phaseIIResidualization](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/feshbachlift-eq-phaseiiresidualization--d8f71610cbf7f841677b60d5.md) | 198 | `result-track:d8f71610cbf7f841677b60d5dd2860429d09f5225dd106282c82af1b821d8d13` |
| 19 | `theorem` | [feshbachSchur_eq_schurMatrix](../../../../../mathematics/Algebra/LinearAlgebra/FeshbachReconstruction/Variantc7d3a35cbd847a67f542593365f972a4ae8413b8b0d369201f21d5297b7617d9.lean/declarations/feshbachschur-eq-schurmatrix--adab1e459dfc8b1794f9d670.md) | 209 | `result-track:adab1e459dfc8b1794f9d6702c75e2ab3cf1c681b27f15738f575b961b6c4ce4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
