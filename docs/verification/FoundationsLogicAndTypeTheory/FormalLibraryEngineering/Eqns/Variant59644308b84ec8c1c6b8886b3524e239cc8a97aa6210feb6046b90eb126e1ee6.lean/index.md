# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a2507e3b5079fdac4a97cedbb2629942a736fbe",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a2507e3b5079fdac4a97cedbb2629942a736fbe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.EqnsUtils` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Match.NamedPatterns` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unfoldThmType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/unfoldthmtype--748e07ba3b6b64761b85fa6c.md) | 30 | `declaration-track:748e07ba3b6b64761b85fa6c475dcb09f9f19cd7f79c65915ee54c2b13fcbe49` |
| 2 | `def` | [unfoldLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/unfoldlhs--5e096a13804741fd9490e2d4.md) | 41 | `declaration-track:5e096a13804741fd9490e2d4567ad76b8dd7118f8ffca78174d5a351f68351df` |
| 3 | `def` | [mkEqnProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/mkeqnproof--3a9737ec35faedbd46a4fafe.md) | 58 | `declaration-track:3a9737ec35faedbd46a4fafee0950ca4a402be8936b3c0e888ec90107b165173` |
| 4 | `def` | [lhsDependsOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/lhsdependson--c95309686a55b7135010d1c7.md) | 105 | `declaration-track:c95309686a55b7135010d1c760fb4ad310ff94070b79d7853ca609c63ae0af41` |
| 5 | `def` | [simpEqnType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/simpeqntype--18b5bec982f899548929964f.md) | 115 | `declaration-track:18b5bec982f899548929964ff4f03908a67fc466dd94399241d4a70ef56a3471` |
| 6 | `def` | [saveEqn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/saveeqn--b47cb9c444ae4123f93e4d3b.md) | 155 | `declaration-track:b47cb9c444ae4123f93e4d3b5b3d36fefe468439ac32d3cd59eadb23fb5c3a06` |
| 7 | `def` | [expand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/expand--e1edb2d9e444e826bbcaeabf.md) | 213 | `declaration-track:e1edb2d9e444e826bbcaeabf24c8f3c80e4c96b798a59322ac231522cba3e9b7` |
| 8 | `def` | [expandRHS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/expandrhs--c63a5b7aa4b633e8b822ea6b.md) | 219 | `declaration-track:c63a5b7aa4b633e8b822ea6b0845c4c2d988ac3949f89ee6a76fe26f267399b3` |
| 9 | `def` | [shouldUseSimpMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/shouldusesimpmatch--3097125ea414de0fdad273c2.md) | 230 | `declaration-track:3097125ea414de0fdad273c2ab14109e82bf57a4cbd4322c444f7991f2dabe55` |
| 10 | `def` | [findMatchToSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/findmatchtosplit--a0e1daa058c6366ca7e933be.md) | 241 | `declaration-track:a0e1daa058c6366ca7e933bef82c890e243ec0165048cbba071ffbe116cbb3f9` |
| 11 | `def` | [splitMatch?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/splitmatch--a2b99f79313dce1e9bae38a6.md) | 278 | `declaration-track:a2b99f79313dce1e9bae38a63a9f805139753f7ea3d9e727e0e42675331124ef` |
| 12 | `def` | [mkEqnTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/mkeqntypes--90b1eaeb5fa75891f6375597.md) | 293 | `declaration-track:90b1eaeb5fa75891f6375597460c12d449f45f33cb291dcb3f122bdd2e5aaf02` |
| 13 | `def` | [removeUnusedEqnHypotheses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/removeunusedeqnhypotheses--c3b8628c71149bfce10a7a3e.md) | 319 | `declaration-track:c3b8628c71149bfce10a7a3eafde326f4e8921e1321cd0c07e37d4758afcbd94` |
| 14 | `def` | [mkEqns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/mkeqns--d95529892559eccdced15e9f.md) | 351 | `declaration-track:d95529892559eccdced15e9fbfc2eac9eba3a7edb6cbc9f049d59308ab58b1e7` |
| 15 | `def` | [getEqnsFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/geteqnsfor--28b232b2f06556ef27165d52.md) | 382 | `declaration-track:28b232b2f06556ef27165d52699169e55de40de78a1dcbc9f27ae140922f9f96` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/declarations/builtin-initialize--2cde831e640ba15428395ad0.md) | 398 | `declaration-track:2cde831e640ba15428395ad07992c7d9180597115b4a618eaa2d05a0d7246049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
