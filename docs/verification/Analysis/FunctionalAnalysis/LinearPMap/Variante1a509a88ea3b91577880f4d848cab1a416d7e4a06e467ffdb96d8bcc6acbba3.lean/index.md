# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LinearPMap.Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9687806f9d1c8e46810fb22fcc90f1f4bb60d2ef",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9687806f9d1c8e46810fb22fcc90f1f4bb60d2ef`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearPMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/isformaladjoint--074a6fb31e207dc6474eb16f.md) | 78 | `declaration-track:074a6fb31e207dc6474eb16f273c18d604320fcc9d9565efb08aa8d5e695f5e7` |
| 2 | `theorem` | [IsFormalAdjoint.symm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/isformaladjoint-symm--1c847e88e5e6bb0cc2c3c935.md) | 85 | `result-track:1c847e88e5e6bb0cc2c3c935a8d85e4a394096dca6e85c3335d44e3ea4c5e0fe` |
| 3 | `def` | [adjointDomain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointdomain--c608d460f640a9cd29f3268b.md) | 96 | `declaration-track:c608d460f640a9cd29f3268b2e126dff0b6ee9b54cccbd7164df422dabf2f73e` |
| 4 | `def` | [adjointDomainMkClm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointdomainmkclm--ec55cbd42ea0c953776f4536.md) | 109 | `declaration-track:ec55cbd42ea0c953776f4536be6c5c7e04f90af5f66258f2d69bd9f9ddd8e484` |
| 5 | `theorem` | [adjointDomainMkClm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointdomainmkclm-apply--9a00f8c9b3373392122fa481.md) | 113 | `result-track:9a00f8c9b3373392122fa481b619b44a5de7f6326d1dda61304e834988825fb4` |
| 6 | `def` | [adjointDomainMkClmExtend](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointdomainmkclmextend--39767a12617ebbbed033d178.md) | 123 | `declaration-track:39767a12617ebbbed033d178faa36bdbbc2afaab8f9f55b775b735f29295cb9f` |
| 7 | `theorem` | [adjointDomainMkClmExtend_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointdomainmkclmextend-apply--767c042a36ec3a52337fba2d.md) | 129 | `result-track:767c042a36ec3a52337fba2d26b0dcdea48fb5779b26264e1ecd5942285fc9b9` |
| 8 | `def` | [adjointAux](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointaux--26f2f0c563c20746be4bae61.md) | 140 | `declaration-track:26f2f0c563c20746be4bae6114ed997ca4f8bd31573ba3e2c213c191a2d36dd6` |
| 9 | `theorem` | [adjointAux_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointaux-inner--03a4bb5ce018cfd61978e0c0.md) | 161 | `result-track:03a4bb5ce018cfd61978e0c06132edff4dfe265090d546bedb660ef9b495b192` |
| 10 | `theorem` | [adjointAux_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjointaux-unique--42837b2be50da95bfb4cb022.md) | 171 | `result-track:42837b2be50da95bfb4cb02233f7596b0eead6ec01de8eb6e0c411e6fe91afa0` |
| 11 | `def` | [adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjoint--ba7cf9a370220aabd4570395.md) | 179 | `declaration-track:ba7cf9a370220aabd45703959c224f7f9364b4b7ab2eb8191f8a0504f7f65412` |
| 12 | `theorem` | [mem_adjoint_domain_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/mem-adjoint-domain-iff--af44a0fa6e71db3ed1f9e3e2.md) | 186 | `result-track:af44a0fa6e71db3ed1f9e3e2242a397b394cc75a41eee9a424b3e0210c3bb2a9` |
| 13 | `theorem` | [mem_adjoint_domain_of_exists](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/mem-adjoint-domain-of-exists--5ac021907cdc14930b6b1c50.md) | 192 | `result-track:5ac021907cdc14930b6b1c5013dc19e3a0f3d0200a9b067c226b72f24026d1e2` |
| 14 | `theorem` | [adjoint_apply_of_not_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjoint-apply-of-not-dense--c6d0c9c271270f1728f2fb7b.md) | 202 | `result-track:c6d0c9c271270f1728f2fb7b838f323705a2293a4de73d5213c8857178f81646` |
| 15 | `theorem` | [adjoint_apply_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjoint-apply-of-dense--2a4238319431d464c8b43e6e.md) | 207 | `result-track:2a4238319431d464c8b43e6e1b8c3f00b45e9d9832ca5baafa5ee2ea283e255d` |
| 16 | `theorem` | [adjoint_apply_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjoint-apply-eq--75ccaa4ca5b4dc9b328c987f.md) | 212 | `result-track:75ccaa4ca5b4dc9b328c987f72c03e343f18b79ec73c95a7a638c0e7310ec18e` |
| 17 | `theorem` | [adjoint_isFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/adjoint-isformaladjoint--353b21907a64274743c826e5.md) | 218 | `result-track:353b21907a64274743c826e5563f963325c2bb9ba1540dc1ff8d90571e142845` |
| 18 | `theorem` | [IsFormalAdjoint.le_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/isformaladjoint-le-adjoint--c507eb7c35abbb07050eb2fc.md) | 223 | `result-track:c507eb7c35abbb07050eb2fc13e9510ae4ecec6b701f3af3f552c145da17431e` |
| 19 | `theorem` | [toPMap_adjoint_eq_adjoint_toPMap_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/topmap-adjoint-eq-adjoint-topmap-of-dense--5de871b84628561dd5c1b58d.md) | 242 | `result-track:5de871b84628561dd5c1b58d0ac8480abca21c4c0f4230d11d4ce2e6b8cc499a` |
| 20 | `instance` | [instStar](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/inststar--63ed054b6394c516a933fea4.md) | 262 | `declaration-track:63ed054b6394c516a933fea401d1dcfdbb082e3635916e2db332ecc54cb92f2b` |
| 21 | `theorem` | [isSelfAdjoint_def](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/isselfadjoint-def--a22e8cffe6a1c7989835ef0c.md) | 267 | `result-track:a22e8cffe6a1c7989835ef0c94ae36dedbccf019d6ca8fa14313536e470f3796` |
| 22 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsFormalAdjoint.Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.IsSelfAdjoint.dense_domain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/declarations/root-grwtsk-analysis-functionalanalysis-isformaladjoint-variant9c99823ba--3b8c0a568f34efc1d10e8f98.md) | 274 | `result-track:3b8c0a568f34efc1d10e8f98162839ca115e9a4da2538e6dfcb38980ed2004d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
