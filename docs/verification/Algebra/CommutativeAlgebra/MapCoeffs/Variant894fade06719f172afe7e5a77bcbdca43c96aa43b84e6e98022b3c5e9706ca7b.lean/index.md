# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MapCoeffs.Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75ac7f3d0fd8c6898a46748649028a6a7e3aa085",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75ac7f3d0fd8c6898a46748649028a6a7e3aa085`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.DifferentialRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs--04017f1f327bc3452f50a6bb.md) | 41 | `declaration-track:04017f1f327bc3452f50a6bbd754313c9e4682f791dc29601f06276d78f32e8d` |
| 2 | `lemma` | [mapCoeffs_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs-apply--27892ff85097b5c4a0bee60f.md) | 69 | `result-track:27892ff85097b5c4a0bee60fd60d03cd4bc804ea91466f32bbbe0a40d18f6afd` |
| 3 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs-monomial--b92af70ee63bfa19f4a1d6c6.md) | 73 | `result-track:b92af70ee63bfa19f4a1d6c68f126070d64d93359408032e80e5b18b9ff5af7e` |
| 4 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs-x--0872644beca2db2e1ba8fae0.md) | 78 | `result-track:0872644beca2db2e1ba8fae0652a30d6b4a2e2087843d17861ffec9aced3b3c7` |
| 5 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs-c--131bb4323989c6f1cc20ea40.md) | 82 | `result-track:131bb4323989c6f1cc20ea40b9fcc52a23c6735f203165bb7646028c5f1171c4` |
| 6 | `theorem` | [apply_aeval_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/apply-aeval-eq--8e2f20e932d8e8b3c5a17db7.md) | 88 | `result-track:8e2f20e932d8e8b3c5a17db7e071278765a6276a06e08156b31b5728f71ac74c` |
| 7 | `theorem` | [apply_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/apply-aeval-eq--f50e7dda274ca3cb1da390fd.md) | 101 | `result-track:f50e7dda274ca3cb1da390fdd38f193358a4598b889df0e44babde44ae711701` |
| 8 | `theorem` | [apply_eval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/apply-eval-eq--baee0ea3e55c4c819b8fdbd1.md) | 112 | `result-track:baee0ea3e55c4c819b8fdbd1824e96a35cf4f15afedbdf4ac5b0a9083dd71c3c` |
| 9 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs--124bccb033bde92205d7c510.md) | 125 | `declaration-track:124bccb033bde92205d7c510cc9762dad54a9110a6f1ed44da37241b72ba682f` |
| 10 | `lemma` | [coeff_mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/coeff-mapcoeffs--b9cc16127bb13683d21807f5.md) | 129 | `result-track:b9cc16127bb13683d21807f584fc823058300b639528ad8a82340079477cc3de` |
| 11 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs-monomial--7ed5a88c71469f1db5367d10.md) | 133 | `result-track:7ed5a88c71469f1db5367d10cab63047f032e61c22c3a364f46035f136815d89` |
| 12 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs-x--bcc0002d8010ae9fa48c841f.md) | 138 | `result-track:bcc0002d8010ae9fa48c841fb3ef04124c2ad8d35683aca00b341f70010cb414` |
| 13 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/mapcoeffs-c--c502e8df52c9071f386f4b42.md) | 142 | `result-track:c502e8df52c9071f386f4b42252fd4150cb1b88e44319628a11f1177931bfde1` |
| 14 | `theorem` | [deriv_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/deriv-aeval-eq--2ea3639c8381ef1160c1156a.md) | 147 | `result-track:2ea3639c8381ef1160c1156ac02f3cc65020db82fbd575fdfd391f26679ebb00` |
| 15 | `def` | [implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/implicitderiv--d667522ec6c8cb58322bba26.md) | 157 | `declaration-track:d667522ec6c8cb58322bba26b5094a96f84c81ca88c4bf4e3431f0c1807dcf2a` |
| 16 | `lemma` | [implicitDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/implicitderiv-c--95af997e847dd9c4e353aea6.md) | 162 | `result-track:95af997e847dd9c4e353aea637cc3d74bb53ea40ac16a870022b0f3ffb2ff62a` |
| 17 | `lemma` | [implicitDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/implicitderiv-x--772ccd69f1b94f0a5408bee8.md) | 167 | `result-track:772ccd69f1b94f0a5408bee8b3d087a2e6bba4f3c7dc7cc945641002abfa4a47` |
| 18 | `lemma` | [deriv_aeval_eq_implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/deriv-aeval-eq-implicitderiv--25b79bdfddf75ce49aca6ae9.md) | 171 | `result-track:25b79bdfddf75ce49aca6ae92a7e146d1589f89f98d97cd73b284dbe82cc618a` |
| 19 | `lemma` | [algHom_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/alghom-deriv--e4db28ef4c26abc48c330022.md) | 178 | `result-track:e4db28ef4c26abc48c330022fe7f775afcd0d6029c20e88c4b340a4bd4c31134` |
| 20 | `lemma` | [algEquiv_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/algequiv-deriv--4e571c184ccfc6a552c04878.md) | 193 | `result-track:4e571c184ccfc6a552c04878b0034c2f9748671c3164b4fe5e02afeb940348a7` |
| 21 | `lemma` | [algHom_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/alghom-deriv--9a68762cd1599617f06a27fe.md) | 203 | `result-track:9a68762cd1599617f06a27fed9e5aa0ab6c4bb7e7cb06824e0710dabfea7c5eb` |
| 22 | `lemma` | [algEquiv_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/declarations/algequiv-deriv--8865f1bfe85f60e6d6d66958.md) | 210 | `result-track:8865f1bfe85f60e6d6d66958d23df723f62d34b35c4f228209f1e7e36f6037ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
