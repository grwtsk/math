# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Inductions.Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2c5db37c2cb72ba1ac3d558ce45b146ed6f1fab",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2c5db37c2cb72ba1ac3d558ce45b146ed6f1fab`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx--a43556970917b926e65df936.md) | 36 | `declaration-track:a43556970917b926e65df93635187a4c1b1af27a466431b97258e4db2ba685e5` |
| 2 | `theorem` | [coeff_divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/coeff-divx--7fa4dfe5f47cc737a33eeee6.md) | 40 | `result-track:7fa4dfe5f47cc737a33eeee65c4d07dc1702748a1f363ee38ef74c2d6f03d545` |
| 3 | `theorem` | [divX_mul_X_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-mul-x-add--7ac9302741d212c8bd2585f7.md) | 43 | `result-track:7ac9302741d212c8bd2585f7450e9e342f288b6c66c076fdf8118c68cfbc9660` |
| 4 | `theorem` | [X_mul_divX_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/x-mul-divx-add--5c8c1484dfd7fd685a6a6ea1.md) | 47 | `result-track:5c8c1484dfd7fd685a6a6ea1b5f0f9a8e0ce8e8bdff4be8499c4e9ccccdc08ad` |
| 5 | `theorem` | [divX_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-c--5f539ba30df02af8c72206cd.md) | 51 | `result-track:5f539ba30df02af8c72206cd3db2e5a0749abc88ee4fae2551a1548361b219b6` |
| 6 | `theorem` | [divX_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-eq-zero-iff--af29a60a70c3a6b2c8505586.md) | 54 | `result-track:af29a60a70c3a6b2c8505586cb0409a32e7b053d4ff25ef74540c4b570a76a81` |
| 7 | `theorem` | [divX_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-add--5b91a005cae0461f3ea06ce4.md) | 57 | `result-track:5b91a005cae0461f3ea06ce44450b6b4354ef039c36732190e8c2b23e6569a55` |
| 8 | `theorem` | [divX_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-zero--2abde2ff50e3b08ea3d51d96.md) | 61 | `result-track:2abde2ff50e3b08ea3d51d96ea9a3e761c37b1825b171c4927218b87687949f7` |
| 9 | `theorem` | [divX_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-one--f98355275db88be33476cd90.md) | 64 | `result-track:f98355275db88be33476cd90524a1bb9584ef323f0d0a824dab64cf71c1832d2` |
| 10 | `theorem` | [divX_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-c-mul--ef95903e1347e5bd7d9bc707.md) | 69 | `result-track:ef95903e1347e5bd7d9bc707589c926b62693e57a3d12d2f6da248f859ed2fa1` |
| 11 | `theorem` | [divX_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-x-pow--fa841f2b87efa12c7e2c6e00.md) | 73 | `result-track:fa841f2b87efa12c7e2c6e00fb16ceafba9d88be296db39c1c8da8163166459d` |
| 12 | `def` | [divX_hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-hom--ad402ddbc58712e9946469b7.md) | 81 | `declaration-track:ad402ddbc58712e9946469b79dcef861aeca2a83de08d5fbca8e4fbf32fcf1ac` |
| 13 | `theorem` | [divX_hom_toFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-hom-tofun--4b5df76c2ea3fb7d970b16a1.md) | 86 | `result-track:4b5df76c2ea3fb7d970b16a1ce6fd93d0122afa993c2ff92735c70f532ed8d6d` |
| 14 | `theorem` | [natDegree_divX_eq_natDegree_tsub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/natdegree-divx-eq-natdegree-tsub-one--616ec0744c0d15f9b0055e77.md) | 88 | `result-track:616ec0744c0d15f9b0055e774b9ae28139406386730aa121818b06bff88b25e8` |
| 15 | `theorem` | [natDegree_divX_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/natdegree-divx-le--93af592603db77514bf020ea.md) | 98 | `result-track:93af592603db77514bf020eaa1582c8f04a41ff474bf552e538d2a168e39a479` |
| 16 | `theorem` | [divX_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/divx-c-mul-x-pow--48650cbd72595388a8daacff.md) | 101 | `result-track:48650cbd72595388a8daacfffc27ac0c814c5f574819cb9c443761b6da3af7af` |
| 17 | `theorem` | [degree_divX_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/degree-divx-lt--b822ed11d4cd9b7da207b3ff.md) | 104 | `result-track:b822ed11d4cd9b7da207b3ffe50e7d171d056c5ca1bdc85b33859db4a8592a80` |
| 18 | `def` | [recOnHorner](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/reconhorner--abbce68ad6a26c6571b02a74.md) | 132 | `declaration-track:abbce68ad6a26c6571b02a749b0c89a0bf2167c8c987af6d4746214d98c8a2ab` |
| 19 | `theorem` | [degree_pos_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/degree-pos-induction-on--c61717c91ebc62ef9f4cd3f9.md) | 161 | `result-track:c61717c91ebc62ef9f4cd3f94008857a78ccc80fabccb1fee3ba8068f2b094e4` |
| 20 | `theorem` | [natDegree_ne_zero_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/declarations/natdegree-ne-zero-induction-on--e9c3030de23daf95cf22f70c.md) | 189 | `result-track:e9c3030de23daf95cf22f70cf8df4fcd397232435b0225e71e18fc29e3a57e45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
