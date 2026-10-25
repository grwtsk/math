# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pow.Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6c5358308b373d3d39bcdc0b094449932beeba2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6c5358308b373d3d39bcdc0b094449932beeba2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Bootstrap` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 17; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean/declarations/dvd-pow--49a885b38351349ef9160445.md) | 29 | `result-track:49a885b38351349ef916044544777675888625f6d1a8b3acf032b91019be5c63` |
| 2 | `theorem` | [ediv_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean/declarations/ediv-pow--5c623d8200a560dba3e2b328.md) | 34 | `result-track:5c623d8200a560dba3e2b3280e4c820a106b46a6d9d5edbce989e09640aa2c7f` |
| 3 | `theorem` | [tdiv_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean/declarations/tdiv-pow--ff2885613ace8fc6fef6113a.md) | 41 | `result-track:ff2885613ace8fc6fef6113abc7a195bcf089560a63befcbc08240af75e3b37c` |
| 4 | `theorem` | [fdiv_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant655287f1afc711907ef4ee460f490ce0f8bb80679811d0827291faec5b6cd5f6.lean/declarations/fdiv-pow--9cd3279cb895e8b63674b193.md) | 45 | `result-track:9cd3279cb895e8b63674b193c42a68832db9f6acf2eed98f058b3fa0fb00ed8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
