# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zify.Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04e53d7576f74449c83b239aa93d2c03e3d2a5b3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04e53d7576f74449c83b239aa93d2c03e3d2a5b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/syntax--6c77caa9d7c7e7642890be58.md) | 70 | `declaration-track:6c77caa9d7c7e7642890be580e0bdb59e45a7506dff6dae4432b2209cb9b00a8` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/macro-rules--d7acdc3f19da4b648745eb64.md) | 72 | `declaration-track:d7acdc3f19da4b648745eb6448c968fabe249b582df9a509e20373efeaa475c1` |
| 3 | `def` | [mkZifyContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/mkzifycontext--2026b5fb35e7f120ea00a016.md) | 79 | `declaration-track:2026b5fb35e7f120ea00a0166947cb361f65e7aa1f89e3d167ebf10bc48e8dbd` |
| 4 | `def` | [applySimpResultToProp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/applysimpresulttoprop--566bc265159614c8dbe038d2.md) | 87 | `declaration-track:566bc265159614c8dbe038d29e4dec0f324889dbb8ca93006a54e7e7e4811f73` |
| 5 | `def` | [zifyProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/zifyproof--5a8bda14cf9fd1cdf5592530.md) | 98 | `declaration-track:5a8bda14cf9fd1cdf5592530b181c9b79f793e3b809957714e3bc15e9cf511dd` |
| 6 | `lemma` | [natCast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/natcast-eq--ec9be8c69b5dfa952bbed293.md) | 104 | `result-track:ec9be8c69b5dfa952bbed29396564545d5ffbee093caf0337bff95b2ae0beb6e` |
| 7 | `lemma` | [natCast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/natcast-le--aa1eaebbabfedc26aaa608eb.md) | 105 | `result-track:aa1eaebbabfedc26aaa608eb88715ce7ac499ee17b053add504371c756a92a1d` |
| 8 | `lemma` | [natCast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/natcast-lt--0943df73675aaf922f62653e.md) | 106 | `result-track:0943df73675aaf922f62653eeef01c89e77db877e29391c35d73441e54eeaffa` |
| 9 | `lemma` | [natCast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/natcast-ne--fcdbd3d6adc6e530bc39f916.md) | 107 | `result-track:fcdbd3d6adc6e530bc39f916551fbcbdf08a90bf4ee26f6a01ad0470cc92be43` |
| 10 | `lemma` | [natCast_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/natcast-dvd--8c39185e5526aeeab4d3eedb.md) | 109 | `result-track:8c39185e5526aeeab4d3eedb6801c89ea5fc70f3c27c82d01b60b11f9011246e` |
| 11 | `theorem` | [Nat.cast_sub_of_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/nat-cast-sub-of-add-le--8022c12686176bbe793ee4e0.md) | 120 | `result-track:8022c12686176bbe793ee4e06841d3389fe2b0a4111f01b200b129935044051b` |
| 12 | `theorem` | [Nat.cast_sub_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zify/Variant8147ec020850da18ed35abac61e341c51ab718a508776e2232668497d0dfc000.lean/declarations/nat-cast-sub-of-lt--a350c21f24ed91f1213b6d9c.md) | 123 | `result-track:a350c21f24ed91f1213b6d9cd3e7ad09d144ef10b5f284961c6596df9411906a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
