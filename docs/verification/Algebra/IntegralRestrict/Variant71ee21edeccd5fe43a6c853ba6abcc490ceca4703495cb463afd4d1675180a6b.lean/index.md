# Verification target: GRWTSK.Algebra.IntegralRestrict.Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63f417f2adbe591569d04513fa4ac43825643dae",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63f417f2adbe591569d04513fa4ac43825643dae`.

Source path: `GRWTSK/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [galLift](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/gallift--e45ae0e730ab11c1b37eb60f.md) | 40 | `declaration-track:e45ae0e730ab11c1b37eb60fa8e7c3ff66537d5ac8e09e08669ccb6c226af0f7` |
| 2 | `def` | [galRestrictHom](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/galrestricthom--d74bd6a3d9caa30600a51777.md) | 61 | `declaration-track:d74bd6a3d9caa30600a51777746dbe3589727591b2d8b5e4b96037b75186807d` |
| 3 | `lemma` | [algebraMap_galRestrictHom_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebramap-galrestricthom-apply--52a7777a49bdcda858f26d6b.md) | 88 | `result-track:52a7777a49bdcda858f26d6b06a8b0f46c4a84206e89b768a8f849eab6773e0a` |
| 4 | `lemma` | [galRestrictHom_symm_algebraMap_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/galrestricthom-symm-algebramap-apply--c3120fb11762d6de06bc303b.md) | 93 | `result-track:c3120fb11762d6de06bc303b74606a36978cff78d57884254c603bf5c7f39292` |
| 5 | `def` | [galRestrict](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/galrestrict--8d6b97fe63c94ab09fc01f33.md) | 101 | `declaration-track:8d6b97fe63c94ab09fc01f33170cac574db0b2ceee56f87e3f6f8a3dbe3f70c2` |
| 6 | `lemma` | [coe_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/coe-galrestrict-apply--fd18b995efd284efb5d9eba0.md) | 107 | `result-track:fd18b995efd284efb5d9eba0f2abb38576afcc4c4388b0d64f5d91b80a39b577` |
| 7 | `lemma` | [galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/galrestrict-apply--515e5a769565d3d0700f90a8.md) | 112 | `result-track:515e5a769565d3d0700f90a8646353705c3058bfae180666f5171ddbb3da6c07` |
| 8 | `lemma` | [algebraMap_galRestrict_apply](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebramap-galrestrict-apply--0803e0e2fcb70edf96c88e94.md) | 115 | `result-track:0803e0e2fcb70edf96c88e947b46d5d57ec5f0daacee723659411225b364669b` |
| 9 | `lemma` | [prod_galRestrict_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/prod-galrestrict-eq-norm--3f4222049c4dbccd09c990cd.md) | 123 | `result-track:3f4222049c4dbccd09c990cd92ca56441a2a1e32025175aed5ed7a9e031cd78b` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/instance--83c8a17fb67343cfffa6ea2e.md) | 135 | `declaration-track:83c8a17fb67343cfffa6ea2e733cb9aa63311ffb2028177704ff3cb030a628dc` |
| 11 | `def` | [Algebra.intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-inttraceaux--6965f7cb6867f53d7ece502c.md) | 155 | `declaration-track:6965f7cb6867f53d7ece502c0627d4728cb0147b90e84b51f7f3856922c548ef` |
| 12 | `lemma` | [Algebra.map_intTraceAux](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-map-inttraceaux--0fd94128eed123a2ae267cc0.md) | 165 | `result-track:0fd94128eed123a2ae267cc0dc95cbce05720caa9d24a52290f5dddab9fd5e03` |
| 13 | `def` | [Algebra.intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-inttrace--27d18dadf0f80f19dfa9f96a.md) | 176 | `declaration-track:27d18dadf0f80f19dfa9f96afbd1c80494840ae1b3ae72ff7ed2cffd808b8d5c` |
| 14 | `lemma` | [Algebra.algebraMap_intTrace](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-algebramap-inttrace--0867e308e42c9998f0454de5.md) | 187 | `result-track:0867e308e42c9998f0454de525662bfb417e283106ce3e5180ea874b7152d3f8` |
| 15 | `lemma` | [Algebra.algebraMap_intTrace_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-algebramap-inttrace-fractionring--09e79a46505469990146de65.md) | 205 | `result-track:09e79a46505469990146de65096e3e8ba2a63ae8d4fe8ceb1f57178f3a6c4e23` |
| 16 | `lemma` | [Algebra.intTrace_eq_trace](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-inttrace-eq-trace--c7f9fd20d10c02deab93e1d0.md) | 218 | `result-track:c7f9fd20d10c02deab93e1d009b2e93d703662df92cb32e588a7374c2a7d6b1c` |
| 17 | `lemma` | [Algebra.intTrace_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-inttrace-eq-of-islocalization--046d15632fc4f2435ab82719.md) | 233 | `result-track:046d15632fc4f2435ab82719becf07c1a1b330ea243896739bf6716f5b003762` |
| 18 | `def` | [Algebra.intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-intnormaux--18dedef78fbebfe9be0e5134.md) | 283 | `declaration-track:18dedef78fbebfe9be0e5134ccf57df3ab7fbab54025c05b6f781fd0141f0162` |
| 19 | `lemma` | [Algebra.map_intNormAux](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-map-intnormaux--4e0ef62a037e98fc264a3d61.md) | 293 | `result-track:4e0ef62a037e98fc264a3d61025de5f08632b29e29158a9f39d43ed076eddae8` |
| 20 | `def` | [Algebra.intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-intnorm--0bb035941b373406406c0015.md) | 306 | `declaration-track:0bb035941b373406406c0015a900b2f9dc733de40d314818d34d894389b26a56` |
| 21 | `lemma` | [Algebra.algebraMap_intNorm](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-algebramap-intnorm--1e01679abb4bdedfaacb6fe0.md) | 317 | `result-track:1e01679abb4bdedfaacb6fe00297beaa566767ab646a61766742f7738113b611` |
| 22 | `lemma` | [Algebra.algebraMap_intNorm_fractionRing](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-algebramap-intnorm-fractionring--8f16ee77a323089b1acef4f0.md) | 336 | `result-track:8f16ee77a323089b1acef4f05a96e53ac8b0213c8350191966a29ef21f972e34` |
| 23 | `lemma` | [Algebra.intNorm_eq_norm](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-intnorm-eq-norm--5eec4e0f677fa52fdd57a332.md) | 349 | `result-track:5eec4e0f677fa52fdd57a332118f6eb13059338a4a28da1285201afbce9cf191` |
| 24 | `lemma` | [Algebra.intNorm_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-intnorm-zero--efe23ab6626397719ea77b56.md) | 359 | `result-track:efe23ab6626397719ea77b56e58be9ca4968b80db4e125a306fee9bbf94afc59` |
| 25 | `lemma` | [Algebra.intNorm_eq_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-intnorm-eq-zero--b81d83f82c5d087ccd2f265d.md) | 372 | `result-track:b81d83f82c5d087ccd2f265d0977f1fb4d74e4cb9da38f001dda43915663a975` |
| 26 | `lemma` | [Algebra.intNorm_ne_zero](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-intnorm-ne-zero--1e0669535421ddece540a745.md) | 383 | `result-track:1e0669535421ddece540a745ff4ee47732af73e424e3ab7476b4b0380cde196d` |
| 27 | `lemma` | [Algebra.intNorm_eq_of_isLocalization](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-intnorm-eq-of-islocalization--3bbc56e648baf8b247949e8c.md) | 390 | `result-track:3bbc56e648baf8b247949e8cbc3a1128ab056cca289123dcc3aa2c6c6d0b341d` |
| 28 | `lemma` | [Algebra.algebraMap_intNorm_of_isGalois](../../../../mathematics/Algebra/IntegralRestrict/Variant71ee21edeccd5fe43a6c853ba6abcc490ceca4703495cb463afd4d1675180a6b.lean/declarations/algebra-algebramap-intnorm-of-isgalois--57e7c669194ccabb055e3640.md) | 432 | `result-track:57e7c669194ccabb055e36402ad920ae0165aa0765eccb78485b9e14181dc11f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
