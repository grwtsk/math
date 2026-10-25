# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OverflowAware.Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14dbb6c7916aaf0ad59ea00c65cd318da00938ca",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14dbb6c7916aaf0ad59ea00c65cd318da00938ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addNat?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/declarations/addnat--3e503186d8975fa563a1612f.md) | 34 | `declaration-track:3e503186d8975fa563a1612f5c499e2eb4348f3b6fc261d4048e9ac7159e06e1` |
| 2 | `theorem` | [addNat?_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/declarations/addnat-eq-some--93c94adfb8bdd2b4302c23db.md) | 37 | `result-track:93c94adfb8bdd2b4302c23dbb371f9a4d131cad93df78fd89420fb7f1d7749dd` |
| 3 | `theorem` | [addNat?_eq_some_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/declarations/addnat-eq-some-iff--1f688896a080842a573a7663.md) | 40 | `result-track:1f688896a080842a573a7663336f331e1bf02d34aaecd8b47fd17d8046a3cf5a` |
| 4 | `theorem` | [addNat?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/declarations/addnat-eq-none-iff--efb0d0fce49d9897c705011d.md) | 46 | `result-track:efb0d0fce49d9897c705011d656dd78665fc56b8894b8ba9f75cfd54d1984b1b` |
| 5 | `theorem` | [addNat?_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/declarations/addnat-zero--9239ad6d43f163398dfae73e.md) | 51 | `result-track:9239ad6d43f163398dfae73e9241af6230ab101f303a2f6c0d5afcfd58b94451` |
| 6 | `theorem` | [addNat?_eq_dif](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverflowAware/Variantbc33e6f230678e18bfbe7237e567e0624a156290920a61c86ee05e5699a9a8be.lean/declarations/addnat-eq-dif--0574e329bff9d25395afe581.md) | 55 | `result-track:0574e329bff9d25395afe581ee33177d8768980cf83d205b67ba9e4449e52f52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
