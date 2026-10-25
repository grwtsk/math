# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rational.Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64c7cced5d5bc60511755fa340dd75133b306ec4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64c7cced5d5bc60511755fa340dd75133b306ec4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [precParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/precparam--16630b82b0bae02f5654b20c.md) | 28 | `declaration-track:16630b82b0bae02f5654b20c9ca076af79162a620524eb2bd1b29fdd44fdab17` |
| 2 | `def` | [rat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/rat--1c196f0ba3d83b24310b23de.md) | 46 | `declaration-track:1c196f0ba3d83b24310b23ded45c61b15fa2435cfe8f78266b3e7736174d08f3` |
| 3 | `theorem` | [ratCast_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/ratcast-mem--9f130bfa6a65d0d994053349.md) | 52 | `result-track:9f130bfa6a65d0d994053349638e52ee418876f5394084ad6a409d580b1aad51` |
| 4 | `def` | [natDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/natdiv--4e6417c384f626b87b6bb324.md) | 61 | `declaration-track:4e6417c384f626b87b6bb324c764ad21677b97cc64a805ba30b9b020a3928d23` |
| 5 | `theorem` | [natDiv_eq_rat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/natdiv-eq-rat--ffa7a3c0747abdbb5e9f9aa4.md) | 68 | `result-track:ffa7a3c0747abdbb5e9f9aa4974bc3e30d4e258d396ed95bf9e443c5338e9c4a` |
| 6 | `theorem` | [natDiv_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/natdiv-mem--e894301557d360fb1b1978f2.md) | 76 | `result-track:e894301557d360fb1b1978f29e62e5fa9aef3a364f1dff12c33f686db1352043` |
| 7 | `def` | [scientific](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/scientific--335c31fa9f02b91f10206170.md) | 82 | `declaration-track:335c31fa9f02b91f102061701ea4b29ae9744f0de26d7c60a730c72abae665c6` |
| 8 | `theorem` | [scientific_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rational/Variant5ce4fa85d95c11ed714c277908b9957d1ac168aa6fe96bd35cde947cf785bfbe.lean/declarations/scientific-mem--89dfb1d4ae1db5cc23bf0a75.md) | 89 | `result-track:89dfb1d4ae1db5cc23bf0a7503c9c0c2c588dbb2c1e9d2191e14ff072f0cbbcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
