# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Have.Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8240ce05b77f8c7cf534f4063e32d5b0a509680",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8240ce05b77f8c7cf534f4063e32d5b0a509680`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Binders` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assert` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optBinderIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/optbinderident--67ad338e6977fb0d7cff3978.md) | 25 | `declaration-track:67ad338e6977fb0d7cff3978e6daa55ffe19894e61f4bed7d491aec672a28df2` |
| 2 | `def` | [optBinderIdent.name](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/optbinderident-name--294c678889a045d17b65f812.md) | 31 | `declaration-track:294c678889a045d17b65f8124f56273c1b2e495edb159b569b2ee3e7e83f4eff` |
| 3 | `def` | [haveIdLhs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/haveidlhs--c64c2d3646d1e4abce748be5.md) | 48 | `declaration-track:c64c2d3646d1e4abce748be587972db5cf7afe32e496ca3e55b7a46af6ac76c3` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/syntax--0e87ff83bbdba34c049820a5.md) | 52 | `declaration-track:0e87ff83bbdba34c049820a58a0960d5b4e8b130fdc236c3cba4b8adb33127f6` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/syntax--11c7ac94f1fb3d6701287c7a.md) | 53 | `declaration-track:11c7ac94f1fb3d6701287c7a760f9cfca8ed18e32bcd064b8b324fb870e47011` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/syntax--0ab5f2d48b2a5d0ce890160b.md) | 54 | `declaration-track:0ab5f2d48b2a5d0ce890160ba25e38b6887e1c280739197573499bb262741ed2` |
| 7 | `def` | [haveLetCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/haveletcore--5bddbad9b016c02109b5ec8d.md) | 64 | `declaration-track:5bddbad9b016c02109b5ec8dd2968184086f9d40ace6839ac1a9b7e1c503e826` |
| 8 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/elab-rules--01a3efe76faa47e22bfb6ad7.md) | 86 | `declaration-track:01a3efe76faa47e22bfb6ad7a9323c9bfb3816383bcd034516f9035263390fc3` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/elab-rules--d7f6086cb66d60dd254121a7.md) | 94 | `declaration-track:d7f6086cb66d60dd254121a78239e23cce4a35e43388111fc22256379fed4ce3` |
| 10 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Have/Variantfca8e36992e0da499b2aeb972f77916ddd72690b4caf23725bb2c575cf8c0f90.lean/declarations/elab-rules--3945ded330e12b9e9499f17e.md) | 100 | `declaration-track:3945ded330e12b9e9499f17e6d59788d51361918114c63e1e8030041e7dceeaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
