# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashing.Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3dd2d6c69147e6025f42062dc45827c70901a13",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3dd2d6c69147e6025f42062dc45827c70901a13`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.IO` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 8; external provider; requires a separately pinned dependency.
- `Lake.Build.Trace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/hashmemo--2956c5c3326ce6508b094f50.md) | 15 | `declaration-track:2956c5c3326ce6508b094f505f75c14bce35a1d3c74734c71d95e53dc1b0c168` |
| 2 | `def` | [insertDeps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/insertdeps--2df8b12022fc4ef0d58f1d2b.md) | 22 | `declaration-track:2df8b12022fc4ef0d58f1d2b03a75f25befa308568b77e92af8457a36cb35187` |
| 3 | `def` | [HashMemo.filterByFilePaths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/hashmemo-filterbyfilepaths--776fac511f857a26b494dfb7.md) | 33 | `declaration-track:776fac511f857a26b494dfb7efe1ccbbccc6ea5815afe06cd3a14c4b9451c255` |
| 4 | `abbrev` | [HashM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/hashm--fc27b44f89377e03f0265fbc.md) | 42 | `declaration-track:fc27b44f89377e03f0265fbc931bba1da975c8d6801873dc5e445cb26f083487` |
| 5 | `def` | [getFileImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/getfileimports--752a59bd13e9e678e602d031.md) | 45 | `declaration-track:752a59bd13e9e678e602d031445d4ee64668b12cb614a79e60f12b839fef932d` |
| 6 | `def` | [hashFileContents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/hashfilecontents--c0026b96dec4f2c35c2457a9.md) | 54 | `declaration-track:c0026b96dec4f2c35c2457a95b23dcc421197b6248edea6be85cb4439d5e8ba4` |
| 7 | `def` | [getRootHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/getroothash--5040e9be9445af27fd968f26.md) | 65 | `declaration-track:5040e9be9445af27fd968f26803a0947ed22663376fad6ace80c7dd1288bf0c9` |
| 8 | `def` | [getFileHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/getfilehash--e917703f1861d78ebaef4bd6.md) | 78 | `declaration-track:e917703f1861d78ebaef4bd64a5a420f39c654682b68bf1c1a555b14d663f78b` |
| 9 | `def` | [roots](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/roots--4f998e9353a862e451769b04.md) | 107 | `declaration-track:4f998e9353a862e451769b04ceac98e1566d60bcbb4c1bbb69e617fbcc25c92d` |
| 10 | `def` | [getHashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variant9fb4773ae235eb515261ccbe0a132f23152d6a825e065542e72fb6830b81b590.lean/declarations/gethashmemo--99e02f0f9f57ce5c1c2268f0.md) | 110 | `declaration-track:99e02f0f9f57ce5c1c2268f07c58b59a235a42aeff4e90aadb46f8ef853deb49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
