# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IntervalSucc.Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "027d4f9013eacd8ef0559a1aa13a95248124f6c1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `027d4f9013eacd8ef0559a1aa13a95248124f6c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pairwise.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Archimedean` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [biUnion_Ico_Ioc_map_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/biunion-ico-ioc-map-succ--e42b3e22a41d29e30e21c06d.md) | 44 | `result-track:e42b3e22a41d29e30e21c06db40e485b7482fcf665d4f2502bf705cc67eb2a45` |
| 2 | `theorem` | [pairwise_disjoint_on_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioc-succ--5174319ce8df0bc868c0b50a.md) | 60 | `result-track:5174319ce8df0bc868c0b50a9009d1924b510b940a58a8da5d729dc6ea698446` |
| 3 | `theorem` | [pairwise_disjoint_on_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ico-succ--0549977c16368c82cab3d21d.md) | 68 | `result-track:0549977c16368c82cab3d21d0e110913cc3a192ebeb7804c8dcaa883d58b3a71` |
| 4 | `theorem` | [pairwise_disjoint_on_Ioo_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioo-succ--c6f5360e75ccba769a61c90a.md) | 76 | `result-track:c6f5360e75ccba769a61c90a2639855e7c54be70db4b2990a392dec6542625fd` |
| 5 | `theorem` | [pairwise_disjoint_on_Ioc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioc-pred--c7fc8d9fabf038d53bb73bce.md) | 82 | `result-track:c7fc8d9fabf038d53bb73bce5a1f69c0be203854d4bc90745e047da45f0d7439` |
| 6 | `theorem` | [pairwise_disjoint_on_Ico_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ico-pred--af65c385d659db1616d50515.md) | 88 | `result-track:af65c385d659db1616d50515e3fe23620a720d5c418d8a49b8464343042f51f6` |
| 7 | `theorem` | [pairwise_disjoint_on_Ioo_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioo-pred--b5c9de943cc48d70629265f3.md) | 94 | `result-track:b5c9de943cc48d70629265f305c32e5f459c4bb4c884a2658c596327f2c12c9a` |
| 8 | `theorem` | [pairwise_disjoint_on_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioc-succ--1bf6ff92cf5548a571fe3942.md) | 106 | `result-track:1bf6ff92cf5548a571fe3942cf6bf2cc618ba3f01f2ac4155408cd9982f03c54` |
| 9 | `theorem` | [pairwise_disjoint_on_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ico-succ--dba7b7340ddf7fabfc9b8295.md) | 112 | `result-track:dba7b7340ddf7fabfc9b829507b83f514371c4d8907f9db130d5f044c609af0b` |
| 10 | `theorem` | [pairwise_disjoint_on_Ioo_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioo-succ--196d4580bc03341b3c4aef4f.md) | 118 | `result-track:196d4580bc03341b3c4aef4f423fb6219a576f700d0aa639ed2e874a67a08b86` |
| 11 | `theorem` | [pairwise_disjoint_on_Ioc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioc-pred--e5b9b7c749e870da7245aa8c.md) | 124 | `result-track:e5b9b7c749e870da7245aa8c6f02877562b32ded9da0d2db7f89c80efbe8d108` |
| 12 | `theorem` | [pairwise_disjoint_on_Ico_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ico-pred--1c3273d65c73845374a28f22.md) | 130 | `result-track:1c3273d65c73845374a28f220d0869afaa2b1db142bd309d6caeb1db43e5a672` |
| 13 | `theorem` | [pairwise_disjoint_on_Ioo_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant2799b2e8149765fc80f6125cdade317cd870d452ed08cda7632d5724a2863ba2.lean/declarations/pairwise-disjoint-on-ioo-pred--ff1f7b4288d791d6998c535b.md) | 136 | `result-track:ff1f7b4288d791d6998c535be543179d1ab2388f145744e7966c8cbd7f821ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
