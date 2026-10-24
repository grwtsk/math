# Verification target: GRWTSK.Algebra.LinearAlgebra.Gamma.Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaa4b7b2b8d70f98cfa625e6e5bec4cc3ba2fcc0",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaa4b7b2b8d70f98cfa625e6e5bec4cc3ba2fcc0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Foundation.LogicalFoundation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GammaMode](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gammamode--e7d736b353e0539da374b4cd.md) | 6 | `declaration-track:e7d736b353e0539da374b4cd9c4524720d163fc428379e85ae4138587d34982a` |
| 2 | `inductive` | [EvolutionMode](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/evolutionmode--e0c405b08c3d262834de780a.md) | 14 | `declaration-track:e0c405b08c3d262834de780a2c9953aeaa5444bbd607b3024b540aeabbb4e44f` |
| 3 | `structure` | [PositiveRat](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/positiverat--7e1db22d4a193e899ac0620f.md) | 28 | `declaration-track:7e1db22d4a193e899ac0620f71abeca200ce8d85b8778761a428a9fdee33d562` |
| 4 | `structure` | [Gamma](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma--0952ad627e532d83f223fdfd.md) | 32 | `declaration-track:0952ad627e532d83f223fdfd617fbce6a4df6a0c8b046f1488c1732366da4aed` |
| 5 | `inductive` | [SemanticStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/semanticstatus--fb8a31683ea7f0ceda7462b6.md) | 66 | `declaration-track:fb8a31683ea7f0ceda7462b6ed79f97c932d8c4a3c7aad8004ebd8f6c68a23e9` |
| 6 | `inductive` | [DomainStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/domainstatus--65dc3089bb9bde92640f8751.md) | 76 | `declaration-track:65dc3089bb9bde92640f87510652e29395b636c22fae1e76fd76916d7b3a3fd0` |
| 7 | `inductive` | [BranchStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/branchstatus--6a3a48cf34c74054a9976003.md) | 83 | `declaration-track:6a3a48cf34c74054a9976003d604af62939f68ac11134605d28385084560f733` |
| 8 | `inductive` | [ClaimStatus](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/claimstatus--a12cdffd76d08a7a9f67097e.md) | 89 | `declaration-track:a12cdffd76d08a7a9f67097e4a10bdbab601c59a990106fc0508c0313ce3fe15` |
| 9 | `structure` | [SemanticClaim](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/semanticclaim--f0bf2b88e26aeb937cd59642.md) | 100 | `declaration-track:f0bf2b88e26aeb937cd596422e2c9ba70e711940ebb3f191f65c0e2758531a2c` |
| 10 | `def` | [falseBijectivitySound](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/falsebijectivitysound--e1e455e57f99a5f8db68aac2.md) | 109 | `declaration-track:e1e455e57f99a5f8db68aac2a1bf6b281a8b2efcf350644c64c33e51446986a7` |
| 11 | `def` | [structural](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/structural--8a31c94eedc548844bda66ba.md) | 114 | `declaration-track:8a31c94eedc548844bda66bab759cb29fd00a0d51d391a0623774cb5f110549f` |
| 12 | `def` | [constructive](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/constructive--bbd947755f9eb0fba8f4f620.md) | 146 | `declaration-track:bbd947755f9eb0fba8f4f6200dc7019985030ba7eac8a8bd1b2be28cf593e32c` |
| 13 | `def` | [bijectiveFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/bijectiveflow--02d40b872f8cb080b0fde2e8.md) | 148 | `declaration-track:02d40b872f8cb080b0fde2e8bea96ffa5abc32a87f782fe7feee111b2a5f7905` |
| 14 | `def` | [coarse](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/coarse--98d9a0b5954757cd8bb6edd4.md) | 160 | `declaration-track:98d9a0b5954757cd8bb6edd42d6873531094e4106f4c90f2e6cafd34bf9ee940` |
| 15 | `def` | [standard](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/standard--6718b92c5fda8265bb3da7d6.md) | 165 | `declaration-track:6718b92c5fda8265bb3da7d699f104dbfd4de307ed8b86555b64e588efa36306` |
| 16 | `def` | [high](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/high--c5113925f02e6b73cd099111.md) | 177 | `declaration-track:c5113925f02e6b73cd099111a1a45130aac1d1e9e58b45da05cfa1a2d6e8b216` |
| 17 | `def` | [analytic](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/analytic--1adac0adfcd69d406f6c0bff.md) | 184 | `declaration-track:1adac0adfcd69d406f6c0bff540698b5d8c4597e3b9cf4bb92de16c1702c84a0` |
| 18 | `def` | [classical](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/classical--878c9c893c0df1d885500e8a.md) | 191 | `declaration-track:878c9c893c0df1d885500e8a86653bcf92b3743f31a357556c976515f76aeec1` |
| 19 | `def` | [measurable](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/measurable--87d88615e19f54b6683543a4.md) | 195 | `declaration-track:87d88615e19f54b6683543a49baa695b8c0a5f87fd2bafe2d6c65e97fff9bc11` |
| 20 | `def` | [fractal](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/fractal--afd5129f219e6be4c30ade07.md) | 200 | `declaration-track:afd5129f219e6be4c30ade07864fc08c1b30394aa482b083f6570fbf831dc7fe` |
| 21 | `def` | [oracle](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/oracle--768b5645b4cfb323f5c0b595.md) | 205 | `declaration-track:768b5645b4cfb323f5c0b5955a1569a068a024abe2e6d585235580016d9d834c` |
| 22 | `def` | [heatFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/heatflow--bbd070f6c6b075b633599b29.md) | 210 | `declaration-track:bbd070f6c6b075b633599b29bda449088192e9ca075b9e055aad9ae9bfc79b87` |
| 23 | `def` | [heatAveraging](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/heataveraging--654f5bc32942c5c780f6688b.md) | 216 | `declaration-track:654f5bc32942c5c780f6688b13b3d88eec3b551e251f54ee75a955cbc780395a` |
| 24 | `def` | [frameCommutingHeatFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/framecommutingheatflow--722c986557bf6c5ffb073989.md) | 222 | `declaration-track:722c986557bf6c5ffb0739898fe8d95e48fe233e4f3ffb86b77d8769eafb8614` |
| 25 | `def` | [homologyStability](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/homologystability--30b1cb98b732666ecd79bd86.md) | 231 | `declaration-track:30b1cb98b732666ecd79bd8681fbfbe8dd0dea14f8e34511f13a24a6b61ed41d` |
| 26 | `def` | [ricciFlow](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/ricciflow--9d5d80e425419491f37629b0.md) | 235 | `declaration-track:9d5d80e425419491f37629b0c97a04a4eb18f90f7c0eeaa11eba73bf660521dc` |
| 27 | `def` | [ricciSurgery](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/riccisurgery--86d61fff0d129324cd57c4a8.md) | 241 | `declaration-track:86d61fff0d129324cd57c4a87fff6e529ac5a48fb567ce82359a57e1b671bc02` |
| 28 | `def` | [extinctionTopology](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/extinctiontopology--d22ca731e09f7a2b0f4cc1a5.md) | 247 | `declaration-track:d22ca731e09f7a2b0f4cc1a58db0673d787fb8eafb826c2726a67752c0bf3ed1` |
| 29 | `def` | [infiniteTime](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/infinitetime--7cfd3c1a61ccc5d89caf0bfa.md) | 254 | `declaration-track:7cfd3c1a61ccc5d89caf0bfa117d72e5c5ed02e022818f0555d734041b127387` |
| 30 | `def` | [choice](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/choice--417ac61f936c64089abc9efb.md) | 261 | `declaration-track:417ac61f936c64089abc9efb220e528062c917f8f18a419f635a7a0a69367d12` |
| 31 | `def` | [choiceOracle](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/choiceoracle--c10a515e57c344339d5ed484.md) | 265 | `declaration-track:c10a515e57c344339d5ed484bd5ba1a3707fb47252e505f6d70cbd6319f207e5` |
| 32 | `def` | [choiceInfiniteTime](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/choiceinfinitetime--1194c0a47393f11e49aa659c.md) | 270 | `declaration-track:1194c0a47393f11e49aa659ce73ceacea2550744d949e242c5e0f34b2059d9a4` |
| 33 | `def` | [increase](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/increase--0aa02a3cf7dad5699469b9a1.md) | 276 | `declaration-track:0aa02a3cf7dad5699469b9a1e0eb082b83965dbe5d6eac3824ba9da2e4a5ef5f` |
| 34 | `def` | [decrease](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/decrease--484e870db68aeba0ab4fa640.md) | 308 | `declaration-track:484e870db68aeba0ab4fa640f8abb1a48903c63c51e0ab25ce940cdcb7ebedda` |
| 35 | `def` | [Valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/valid--8442c9d51f892f3d2016df10.md) | 340 | `declaration-track:8442c9d51f892f3d2016df100ca47cc38201cc2c69ec8eb5f1f562f8a174214a` |
| 36 | `def` | [flagLe](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/flagle--beff2d4163bb34aafc6df2b9.md) | 342 | `declaration-track:beff2d4163bb34aafc6df2b99e0431ed9472d0b4a5ebe55f1e5a7f13f2699066` |
| 37 | `def` | [Le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/le--2acd073be43ea444ca74c238.md) | 345 | `declaration-track:2acd073be43ea444ca74c238a09f2759a2b3afdf653b555eb6adea80acbe13f0` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/instance--de0b69021b25dfc557cea228.md) | 371 | `declaration-track:de0b69021b25dfc557cea228f84611b4a37552e494733149946516ea1d82e41e` |
| 39 | `theorem` | [gamma_structural_valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-structural-valid--d95fe11a3cbf854aa54f2285.md) | 374 | `result-track:d95fe11a3cbf854aa54f2285a16a0fdd4c288d5d58042204b428e4923d8f36bf` |
| 40 | `theorem` | [gamma_decrease_valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-decrease-valid--94cd003f4427bd1956edd280.md) | 378 | `result-track:94cd003f4427bd1956edd2801bde151dd8631e91dda8d5255cdce3f0273cfaff` |
| 41 | `theorem` | [gamma_increase_valid](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-increase-valid--75110bbebcd31ca228aa0663.md) | 383 | `result-track:75110bbebcd31ca228aa06630bea432a039c1d5e9b7af29817a9bbfd35bcad8b` |
| 42 | `theorem` | [pred_le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/pred-le--cee4408a18cb57408bb3a41e.md) | 388 | `result-track:cee4408a18cb57408bb3a41e5af1b4a3fee4cb06e48abb1e276d5fe762d196ff` |
| 43 | `theorem` | [flag_false_le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/flag-false-le--9b9c3197dd82a2754e3aad19.md) | 391 | `result-track:9b9c3197dd82a2754e3aad190557ff56082f2fabe898c00b94446a86018ef305` |
| 44 | `theorem` | [flag_le_true](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/flag-le-true--e83e2c5bf385b5bf6785b60a.md) | 395 | `result-track:e83e2c5bf385b5bf6785b60a6a5941c3d780a1b0eb8a5d6b39e5debc0a12254e` |
| 45 | `theorem` | [gamma_decrease_le](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-decrease-le--7394d55f5c7853dbd606c954.md) | 399 | `result-track:7394d55f5c7853dbd606c954885685255207092a3fb0b3299fde2c6377506f76` |
| 46 | `theorem` | [gamma_le_increase](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-le-increase--109c3097f17f9aea2f87fc5e.md) | 420 | `result-track:109c3097f17f9aea2f87fc5e365f9fc230fd28474b6caadc92b8eaa7c90a7994` |
| 47 | `theorem` | [gamma_preorder_refl](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-preorder-refl--b1fc982453a2685f2db38363.md) | 434 | `result-track:b1fc982453a2685f2db383634bbd272900118ba56a032b867410fe22d6ea27d3` |
| 48 | `theorem` | [flag_trans](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/flag-trans--82975b4f7181350252c44e16.md) | 446 | `result-track:82975b4f7181350252c44e16e0995b49979fdf3718e3f20a180f6951371266f5` |
| 49 | `theorem` | [gamma_preorder_trans](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-preorder-trans--bd2f5cb059e72e321fc7489f.md) | 451 | `result-track:bd2f5cb059e72e321fc7489f15eae62376bc05a35f412dd157835d546997215b` |
| 50 | `theorem` | [gamma_foundation_monotone](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-foundation-monotone--6c83fd633274428e47214649.md) | 473 | `result-track:6c83fd633274428e472146494ccea76a61ce16660e12367df39373c810ecbc4b` |
| 51 | `theorem` | [gamma_preserveBijectivity_requires_bijective_foundation](../../../../../mathematics/Algebra/LinearAlgebra/Gamma/Variant202c4f8b1272b717cbc48ac588f0af192c18a07cab96f0f668482ffc9acb18b4.lean/declarations/gamma-preservebijectivity-requires-bijective-foundation--b4239344b6f544594613de5b.md) | 478 | `result-track:b4239344b6f544594613de5b408458baba1154ab5c6f746fd3aeeaab52f91e76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
