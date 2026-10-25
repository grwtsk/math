# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf7a7321999c116a59abc095dcdd97f3658fdef3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf7a7321999c116a59abc095dcdd97f3658fdef3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CasesOnSameCtor` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkOrdHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkordheader--69e295177a71dea5925cb082.md) | 37 | `declaration-track:69e295177a71dea5925cb08210e1cde4cb4397bedaea85b5f1d6a9fa1b179862` |
| 2 | `def` | [mkMatchOld](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkmatchold--2157acd7bf05f0dfd484c3f8.md) | 40 | `declaration-track:2157acd7bf05f0dfd484c3f8c02b7b7f0c848f5ed765e23006abd986d7d75e4a` |
| 3 | `def` | [mkMatchNew](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkmatchnew--60acb4e970f2896dd0dff5a9.md) | 94 | `declaration-track:60acb4e970f2896dd0dff5a9129838beb9851372b0dadbfd03746d4a89d4cb1e` |
| 4 | `def` | [mkMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkmatch--b70b80dae9a7428805e776b3.md) | 144 | `declaration-track:b70b80dae9a7428805e776b3118c3bb5f31768f35af989115afd7122c4158749` |
| 5 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkauxfunction--4ab5e2da3b38faaad0292068.md) | 150 | `declaration-track:4ab5e2da3b38faaad0292068c794e4a9990f4a405c75f453abd480d0d15891f7` |
| 6 | `def` | [mkMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkmutualblock--ffc7feb2bd60d8a603dd599b.md) | 164 | `declaration-track:ffc7feb2bd60d8a603dd599b595d0ad490edf7b3f0fcd26a81d2718360b2ba73` |
| 7 | `def` | [mkOrdInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkordinstancecmds--b5ec17f400ef62a2ca8bb773.md) | 173 | `declaration-track:b5ec17f400ef62a2ca8bb77387ea43ed4bfb8f599853bb3ecf2ea1cd667a2ff6` |
| 8 | `def` | [mkOrdEnumFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkordenumfun--b52c5b69bc6481968fbc33b5.md) | 181 | `declaration-track:b52c5b69bc6481968fbc33b540c53792d5ee6adea22de141e5bd6604a129cd2b` |
| 9 | `def` | [mkOrdEnumCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkordenumcmd--92b2fab1b8f51ae83962ebf3.md) | 185 | `declaration-track:92b2fab1b8f51ae83962ebf3ca622338363f34996e6df2db86697851b8cbe221` |
| 10 | `def` | [mkOrdInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkordinstance--ff13b0e9c5fac35cd9f1f19b.md) | 193 | `declaration-track:ff13b0e9c5fac35cd9f1f19bed709afe8b191009deedb71847e26ecb8e520b76` |
| 11 | `def` | [mkOrdInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/mkordinstancehandler--44d8cdf1200ad998b5d974b8.md) | 202 | `declaration-track:44d8cdf1200ad998b5d974b878b183ebf840f7dc4b27577198e2eafeba4b019e` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ord/Variant22b13de454605cc8006adc0bc1a8dd11dcfecaf2ef6e1bc09bf9db32e1f76fed.lean/declarations/builtin-initialize--d18ee9b10688bb2e8dc0478f.md) | 210 | `declaration-track:d18ee9b10688bb2e8dc0478f52e348cc9c401cf087117648ee12227edc8ba002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
