# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LinearPMap.Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52cf5873635427d22f186a1094fc4206f788091e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52cf5873635427d22f186a1094fc4206f788091e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearPMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/isformaladjoint--175d914725b8b7390385cc13.md) | 70 | `declaration-track:175d914725b8b7390385cc1325129cc58c516552230b2fee7a7a256dcc24ef11` |
| 2 | `theorem` | [IsFormalAdjoint.symm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/isformaladjoint-symm--4267dd619fd0504148edb8cb.md) | 77 | `result-track:4267dd619fd0504148edb8cb488c1934e2a40f6415c8b10448a1a7c9f3b39da9` |
| 3 | `def` | [adjointDomain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointdomain--9a9bfde54176350abad5cd1d.md) | 88 | `declaration-track:9a9bfde54176350abad5cd1d5890820e25eaf0ff61a60b539cb4d91ae817eb9a` |
| 4 | `def` | [adjointDomainMkClm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointdomainmkclm--91f584a5a9d678b910428211.md) | 101 | `declaration-track:91f584a5a9d678b910428211716749d7211247c988abcf3aceb1ce900d96be19` |
| 5 | `theorem` | [adjointDomainMkClm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointdomainmkclm-apply--a0c88de7d243f41ffe9b5eeb.md) | 105 | `result-track:a0c88de7d243f41ffe9b5eeb0e3230b1e8fce963769358b2c43e25ddda888fd2` |
| 6 | `def` | [adjointDomainMkClmExtend](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointdomainmkclmextend--26c754f7fe6e8e0ef7ebc960.md) | 115 | `declaration-track:26c754f7fe6e8e0ef7ebc960dc9e971b68b0d61074eb8629ebf8eeaf47a161d1` |
| 7 | `theorem` | [adjointDomainMkClmExtend_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointdomainmkclmextend-apply--e080bf0093ad13c10aeb23e5.md) | 121 | `result-track:e080bf0093ad13c10aeb23e5622deaf86473311de2a3d13fff9b97592d284f15` |
| 8 | `def` | [adjointAux](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointaux--5d9b11c4ced5b2e9a8d3c349.md) | 132 | `declaration-track:5d9b11c4ced5b2e9a8d3c349ab0e6f1f6de6c199f4548194009f81ffda53c705` |
| 9 | `theorem` | [adjointAux_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointaux-inner--bde31a00fd44eab5c6ad998f.md) | 153 | `result-track:bde31a00fd44eab5c6ad998f780c8c7d1ec827ffca6fa7f3380cb349ced3985c` |
| 10 | `theorem` | [adjointAux_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjointaux-unique--bd578ac13e072568cf38b7f8.md) | 163 | `result-track:bd578ac13e072568cf38b7f80a0b4a3e22402c8b763889b3f1c940afceb2c999` |
| 11 | `def` | [adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjoint--6fe9758f28aac807b231cc9e.md) | 171 | `declaration-track:6fe9758f28aac807b231cc9ef2ed8fe06059f27a047ea25d68cbb66e9461833c` |
| 12 | `theorem` | [mem_adjoint_domain_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/mem-adjoint-domain-iff--268cc9278cb0f2db845f2ae5.md) | 178 | `result-track:268cc9278cb0f2db845f2ae570f5387fea619fda63f1751496a47c79eb820451` |
| 13 | `theorem` | [mem_adjoint_domain_of_exists](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/mem-adjoint-domain-of-exists--a121351ef467e97a76a8e2bb.md) | 184 | `result-track:a121351ef467e97a76a8e2bb559582a45f1aa8d6d9b20c0f3d89f088b25a2bab` |
| 14 | `theorem` | [adjoint_apply_of_not_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjoint-apply-of-not-dense--e2f431e9ca5eb32710a85c18.md) | 194 | `result-track:e2f431e9ca5eb32710a85c182b89daadbda9a26c47461fed696e83bfb4b51881` |
| 15 | `theorem` | [adjoint_apply_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjoint-apply-of-dense--c078a6c0377eff26c1245c9b.md) | 199 | `result-track:c078a6c0377eff26c1245c9b65ec13bec3d38a5866d73206826031d0628494e3` |
| 16 | `theorem` | [adjoint_apply_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjoint-apply-eq--e4f20f338f2f88a62b0dbdb7.md) | 204 | `result-track:e4f20f338f2f88a62b0dbdb7622a3c71963cb6d69e545f9ab460090cb1443943` |
| 17 | `theorem` | [adjoint_isFormalAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/adjoint-isformaladjoint--25a08cbbc1979e1430368c6b.md) | 210 | `result-track:25a08cbbc1979e1430368c6b1225534ae6f38ae492f7c40e14d88770f2c6da5f` |
| 18 | `theorem` | [IsFormalAdjoint.le_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/isformaladjoint-le-adjoint--3719fa396c5ca2023f5884fc.md) | 215 | `result-track:3719fa396c5ca2023f5884fc582bf089bc33fe9f7c4d01399c81b8005bca05a0` |
| 19 | `theorem` | [toPMap_adjoint_eq_adjoint_toPMap_of_dense](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/topmap-adjoint-eq-adjoint-topmap-of-dense--44e9a45ef3b5a24b2b895cf3.md) | 234 | `result-track:44e9a45ef3b5a24b2b895cf36f026e3abb467abf5d57d4b57946227d465c5bae` |
| 20 | `instance` | [instStar](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/inststar--b3e55fd0f74608bd76188605.md) | 254 | `declaration-track:b3e55fd0f74608bd76188605d9ac18b9eba92c0b7e212db194fbfb4ed7482f47` |
| 21 | `theorem` | [isSelfAdjoint_def](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/isselfadjoint-def--17d91b1f964194c4bcc5093f.md) | 259 | `result-track:17d91b1f964194c4bcc5093fdef449f800f9e839d6a9fa3380806e4e039612b2` |
| 22 | `theorem` | [_root_.IsSelfAdjoint.dense_domain](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearPMap/Variant9c99823baecc3c0e5e489869a1feb7abd7a8bba70d3e44386261378a9a9f7cd1.lean/declarations/root-isselfadjoint-dense-domain--b1155f501e37db730807fd40.md) | 266 | `result-track:b1155f501e37db730807fd405a3c2067de21ab65e9e3a3e2ab47d08abba3b981` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
