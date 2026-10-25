# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Match.Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "249e89b55de88b1457acca3fa26ce85855f4cf7a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `249e89b55de88b1457acca3fa26ce85855f4cf7a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Do.PatternVar` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinDo.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Match` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.MatchAltView` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Data.Array` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabDoSeqWithRefinedType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/elabdoseqwithrefinedtype--42229407190514ff687c0f67.md) | 26 | `declaration-track:42229407190514ff687c0f67104c6a5ff68e546f03d43b1cd8088581f908f10d` |
| 2 | `def` | [expandToTermMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/expandtotermmatch--91a08aa7693a2dccd66ddc9e.md) | 47 | `declaration-track:91a08aa7693a2dccd66ddc9e7cdac0f27437d4d082ceaf038badd47217bb0212` |
| 3 | `def` | [expandNonAtomicDiscrs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/expandnonatomicdiscrs--167a4527f4af19aa0856b947.md) | 79 | `declaration-track:167a4527f4af19aa0856b9478b425876c7dac2913cf475a8b28a1460ef7acf6d` |
| 4 | `def` | [tryPostponeIfDiscrTypeIsMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/trypostponeifdiscrtypeismvar--506c027c22fdd817e40b889a.md) | 96 | `declaration-track:506c027c22fdd817e40b889a139cf0f77ec15212667ed95a416f1bff96d2aa4b` |
| 5 | `def` | [mkUserNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/mkusernamefor--2212b1f5446a30ddc553aa9f.md) | 104 | `declaration-track:2212b1f5446a30ddc553aa9fa6c6f1adfb83c44293806c8e7a9a628c663778ef` |
| 6 | `def` | [elabDiscrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/elabdiscrs--b042610d72ae8778b101b77c.md) | 109 | `declaration-track:b042610d72ae8778b101b77cf420f9074ad60f44594aa25cb401517d6e72b77d` |
| 7 | `def` | [elabPatterns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/elabpatterns--a431dcb710768da371ee3ad7.md) | 122 | `declaration-track:a431dcb710768da371ee3ad7d9b65001b089c5848f64d4ec466606d3ac35d2d0` |
| 8 | `def` | [mkDepMatchMotive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/mkdepmatchmotive--6e18856c26998256c1883e02.md) | 142 | `declaration-track:6e18856c26998256c1883e02aa825f61b43caa628e4e25ad60f3195606c2d241` |
| 9 | `def` | [withElaboratedLHS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/withelaboratedlhs--48124171432bf2ac23714628.md) | 158 | `declaration-track:48124171432bf2ac23714628a13a01cd3c62211cd62ff574f5d5f047219e5b46` |
| 10 | `abbrev` | [DoMatchAltView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/domatchaltview--5a08251c636c7d393f386a05.md) | 166 | `declaration-track:5a08251c636c7d393f386a0557a67e558034a8e2f04a59a53038318d8e7a3510` |
| 11 | `def` | [elabMatchAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/elabmatchalt--85280c4f52239ff80f348fb7.md) | 168 | `declaration-track:85280c4f52239ff80f348fb7dbb9fd5ed70b49db100bdbe9d8181ad4d101bde7` |
| 12 | `def` | [elabMatchAlts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/elabmatchalts--1a4b45b6afe2f4a22f95f1db.md) | 184 | `declaration-track:1a4b45b6afe2f4a22f95f1dbbc256d4116d64d2d9ebb12adad8fccaddd01e94a` |
| 13 | `def` | [compileMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/compilematch--91e82ce34cc19743e684c802.md) | 190 | `declaration-track:91e82ce34cc19743e684c8025aebf3e889e123475dc656ba595820d885cbd159` |
| 14 | `def` | [elabDoMatchCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/elabdomatchcore--3950b5aa4219311141a47a91.md) | 204 | `declaration-track:3950b5aa4219311141a47a91fd96dad0e6f8d79b4eca729eb8433c48fbd16e02` |
| 15 | `def` | [isSyntaxMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/issyntaxmatch--002836a618b81115acf5b77a.md) | 219 | `declaration-track:002836a618b81115acf5b77ab87589fe796f94a1f0153fd3a951f3f6f43325c3` |
| 16 | `def` | [getAltsPatternVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/getaltspatternvars--752cf26cbb9a1e8df563dd51.md) | 228 | `declaration-track:752cf26cbb9a1e8df563dd515c02ce77ebf8113bbaa485dc547d9ce020984e2d` |
| 17 | `def` | [elabDoMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/declarations/elabdomatch--9fcace42d881706d90b489d4.md) | 236 | `declaration-track:9fcace42d881706d90b489d47d70a4888c1560a3d8143f3e0915ebea46cccd43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
