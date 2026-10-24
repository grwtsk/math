# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff37344e37c56a897fcf6f384ab8e77ae12871cf",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff37344e37c56a897fcf6f384ab8e77ae12871cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.NeLocus` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex--28ce437981576c8e2bf660a3.md) | 39 | `declaration-track:28ce437981576c8e2bf660a360aaf11576b5848304491afb781f49a053d6d683` |
| 2 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.Pi.lex_eq_dfinsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-le--6612b7aef0fec2fb7ed488f6.md) | 44 | `result-track:6612b7aef0fec2fb7ed488f6840d9870ceeb5d112f7389ba6cfcd9d5bffaa32d` |
| 3 | `theorem` | [lex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-def--18681dade2c0c0c72549ad32.md) | 50 | `result-track:18681dade2c0c0c72549ad32b5287ed337c88fdcd930fca093f6b29aedf68330` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/instance--a59c63cb561f2980cd4396ef.md) | 55 | `declaration-track:a59c63cb561f2980cd4396eff6efb76edc296d2021cd6c2708f6cf4d82ff4a40` |
| 5 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-lt-of-lt-of-preorder--00f9c450606ea3617fa66b22.md) | 58 | `result-track:00f9c450606ea3617fa66b229c41e6e1a99e06dbe6ec765142783c49482f2834` |
| 6 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-lt-of-lt--faebf26bf816956302859b18.md) | 68 | `result-track:faebf26bf816956302859b18b56b136f8fb9398d74ea8627753400ae29f43b7d` |
| 7 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-isstrictorder--f510b57184b8d64b8c2c0a97.md) | 74 | `declaration-track:f510b57184b8d64b8c2c0a97043fe5ea42b4c5cb826d7f000303d4c77d366046` |
| 8 | `instance` | [Lex.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-partialorder--778be0d892c2f6c0c4bf1d08.md) | 85 | `declaration-track:778be0d892c2f6c0c4bf1d08260816761f102fcb797e7f8d6a220a60635c1a1e` |
| 9 | `def` | [lt_trichotomy_rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lt-trichotomy-rec--63af3b8c4feec3e7b1c61ce2.md) | 96 | `declaration-track:63af3b8c4feec3e7b1c61ce29abda1864debecfa373818aa02ccafd8abae0f46` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/instance--31e4746addb4fd875f65131e.md) | 121 | `declaration-track:31e4746addb4fd875f65131e4d27d3cebbb5993716ad9a86a12062830439caf0` |
| 11 | `instance` | [Lex.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-linearorder--2038be12cd378631c743b051.md) | 126 | `declaration-track:2038be12cd378631c743b051ffb7094c56a5c3c6c8725a9681677b919c7de1cd` |
| 12 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/tolex-monotone--bc67c8b562c875f6b10f7cd6.md) | 138 | `result-track:bc67c8b562c875f6b10f7cd6c8ee37db2d3edb98f8276ce0c9802eb9f7a43684` |
| 13 | `theorem` | [lt_of_forall_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lt-of-forall-lt-of-lt--aff9469c57aef6d5249ff659.md) | 147 | `result-track:aff9469c57aef6d5249ff659816414057837625460dba2608793cbcc1b5985c0` |
| 14 | `instance` | [Lex.covariantClass_lt_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-covariantclass-lt-left--e8eecbb422f5c288a31aa37e.md) | 168 | `declaration-track:e8eecbb422f5c288a31aa37e9870c39e90a940393fe748dee9f74cd3066d567b` |
| 15 | `instance` | [Lex.covariantClass_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-covariantclass-le-left--42278d99191504fd25e92fff.md) | 173 | `declaration-track:42278d99191504fd25e92fff95a8ff2635d0296cedf35616d0ce77f94a30d1f1` |
| 16 | `instance` | [Lex.covariantClass_lt_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-covariantclass-lt-right--97aea2055e7137c74652efeb.md) | 184 | `declaration-track:97aea2055e7137c74652efeba8086418f7d87c6cd875e37ec2a55be18b201bd3` |
| 17 | `instance` | [Lex.covariantClass_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-covariantclass-le-right--34928e68a59cbe8d6e985fbf.md) | 190 | `declaration-track:34928e68a59cbe8d6e985fbfc73e8e04bdfe6e21868a4eced00949bb1ea9b23e` |
| 18 | `instance` | [Lex.orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-orderbot--17733dcc9e36cf4c750c3405.md) | 203 | `declaration-track:17733dcc9e36cf4c750c3405a5627791f102951bd8d4960548e14328a60b8226` |
| 19 | `instance` | [Lex.orderedAddCancelCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-orderedaddcancelcommmonoid--5410c6950d85eea1bb9248ad.md) | 207 | `declaration-track:5410c6950d85eea1bb9248adbd5a97b80869ce23cef43d5440a5831511db27d1` |
| 20 | `instance` | [Lex.orderedAddCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-orderedaddcommgroup--f2e99b1bed5c5dbfe44dc71d.md) | 212 | `declaration-track:f2e99b1bed5c5dbfe44dc71dfdc8e0b34fd70d01902edafdb72f164266fe8d62` |
| 21 | `instance` | [Lex.linearOrderedCancelAddCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-linearorderedcanceladdcommmonoid--adf424ca1b66eb6895966517.md) | 216 | `declaration-track:adf424ca1b66eb68959665179cbb80113fe072c777dc7df03eaaa3a451f81ffd` |
| 22 | `instance` | [Lex.linearOrderedAddCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant30365ed91ec29e0eb35b8e80910ada859d824fa8a7ff770c6d7c42fcc3cf8b9b.lean/declarations/lex-linearorderedaddcommgroup--4c0995be5f34fa869bf1ddea.md) | 222 | `declaration-track:4c0995be5f34fa869bf1ddea25fc09e9358b5d50c360877d5e7563be7ddb2668` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
