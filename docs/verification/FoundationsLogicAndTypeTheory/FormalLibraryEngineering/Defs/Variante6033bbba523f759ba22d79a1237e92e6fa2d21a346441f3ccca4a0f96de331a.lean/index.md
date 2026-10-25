# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92983d41d78bb3722c131052004caeefefcf4721",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92983d41d78bb3722c131052004caeefefcf4721`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Lemma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traverse.](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/traverse--e2c700b08cc2f3946f0e20a0.md) | 29 | `declaration-track:e2c700b08cc2f3946f0e20a0257747b10253541cf05e3bb70a1aea33b2069f18` |
| 2 | `def` | [elim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/elim--820e0e76f204b2eeb33a8bf6.md) | 36 | `declaration-track:820e0e76f204b2eeb33a8bf60be982ff92c62b7420ae2ab26b44945bd8ba492d` |
| 3 | `theorem` | [elim'_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/elim-none--adb99b2b49e683c08b42c3d1.md) | 41 | `result-track:adb99b2b49e683c08b42c3d103008f8cfd15366867a54c01fefbe5bcd32746f0` |
| 4 | `theorem` | [elim'_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/elim-some--1de3e136cb19d2026909cd4d.md) | 44 | `result-track:1de3e136cb19d2026909cd4d972d759e5e5c336897573c7e7e3375ae8bb2f3b6` |
| 5 | `theorem` | [elim'_none_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/elim-none-some--8bd618c835f4679faef576a6.md) | 47 | `result-track:8bd618c835f4679faef576a683d9dff0f65eadc8dc04d1d1ce7f09b85e7b55e4` |
| 6 | `lemma` | [elim'_eq_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/elim-eq-elim--47f3ca9881cd4ab5cbcdd40e.md) | 50 | `result-track:47f3ca9881cd4ab5cbcdd40e4a994ad74e2d40a7d0d2e9bc0506bb3c97f4b41e` |
| 7 | `abbrev` | [iget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/iget--ce46b853878de08e81671b4a.md) | 55 | `declaration-track:ce46b853878de08e81671b4a9d01c47783665481dba3e9bbbd443c4a3e766605` |
| 8 | `theorem` | [iget_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/iget-some--f905511f0ba53a997068aa21.md) | 59 | `result-track:f905511f0ba53a997068aa213ea314b3b885f1865cdf50070c12b80776c2e4dc` |
| 9 | `instance` | [merge_isCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/merge-iscommutative--9ed07df33cc128e4198ddd7f.md) | 62 | `declaration-track:9ed07df33cc128e4198ddd7f23b230d547871148109ca746d99166e082d42d11` |
| 10 | `instance` | [merge_isAssociative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/merge-isassociative--e98ce352bc7a5128b72436da.md) | 66 | `declaration-track:e98ce352bc7a5128b72436da7cb3ed02780ca5bbcee23f4dfe57b3d2c2468050` |
| 11 | `instance` | [merge_isIdempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/merge-isidempotent--c0a97cd493baf99240fc391a.md) | 70 | `declaration-track:c0a97cd493baf99240fc391aa732ec1e7f53846cc77b1b3bbbc561e9f08d6038` |
| 12 | `instance` | [merge_isId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6033bbba523f759ba22d79a1237e92e6fa2d21a346441f3ccca4a0f96de331a.lean/declarations/merge-isid--d4b1d98b13a6e0df701352eb.md) | 74 | `declaration-track:d4b1d98b13a6e0df701352eb888e27a6790a7e037da64fac63af6172ab56f94c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
