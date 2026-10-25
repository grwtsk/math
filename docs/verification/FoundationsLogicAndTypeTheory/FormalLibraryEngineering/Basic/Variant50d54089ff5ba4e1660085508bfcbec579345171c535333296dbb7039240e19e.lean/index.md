# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33f3a6031d0765723975303cb815ab9b9180f9e2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33f3a6031d0765723975303cb815ab9b9180f9e2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveCountable` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Order.FixedPoints` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fold` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/expr--5540dda752cf048d00b6dea9.md) | 50 | `declaration-track:5540dda752cf048d00b6dea9ab564c6cae1c8ea714d3630908eca531cfec86cc` |
| 2 | `def` | [liftRen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftren--bb2a1a3d25f022dc95148dd9.md) | 63 | `declaration-track:bb2a1a3d25f022dc95148dd92440029c43719ad286783d9ca9f0f675c3edd099` |
| 3 | `def` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/rename--5a62e58057a5eb85a2f6e940.md) | 68 | `declaration-track:5a62e58057a5eb85a2f6e94065fc19f6f34daf39c3cecbd3af1be8846ef56110` |
| 4 | `def` | [liftSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftsub--ffef39c3c54637f09467d29c.md) | 76 | `declaration-track:ffef39c3c54637f09467d29c2c8e1bc236401e21fd4326e96abc99c4b03527e4` |
| 5 | `def` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/subst--9862b5bed658d1391bab229f.md) | 81 | `declaration-track:9862b5bed658d1391bab229f5a07f3f8b6ee709373b2fd643c85f4d0eb3bd687` |
| 6 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/single--eed7c3553b2c6df0717b696e.md) | 89 | `declaration-track:eed7c3553b2c6df0717b696edf1094ef463e01d1a5e7ed69dd8660e0890864b0` |
| 7 | `def` | [instantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/instantiate--fa206115a771b0a5806cd498.md) | 94 | `declaration-track:fa206115a771b0a5806cd498c624aacd58a3c99d819a1a965f860115774dd593` |
| 8 | `structure` | [Specification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/specification--556fb5da1e6dfe15bbd46ed4.md) | 99 | `declaration-track:556fb5da1e6dfe15bbd46ed4c1661ee5e163a62e7678ba4848ffc0187c5851a8` |
| 9 | `axioms` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/axioms--1296576e30ac1f3c2510f020.md) | 101 | `declaration-track:1296576e30ac1f3c2510f02017849f6cd97694c241d6ae7f1f810203886efb9a` |
| 10 | `inductive` | [Beta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/beta--32333273f63de6b67ba7906c.md) | 106 | `declaration-track:32333273f63de6b67ba7906cb337f41bf2a74cc1d5caec9f2af72888f2cf7c45` |
| 11 | `def` | [Converts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/converts--ef949095e97468843640be75.md) | 116 | `declaration-track:ef949095e97468843640be75a1c392d60843bf592c58a51b5719a6def8291cde` |
| 12 | `def` | [Normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/normal--acc908f32c2112d935354b8c.md) | 119 | `declaration-track:acc908f32c2112d935354b8c0e87c947c4dcf68d5071194ecfcaeea5cf358931` |
| 13 | `def` | [WeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/weaklynormalizing--0814361c1c0569d11401aace.md) | 122 | `declaration-track:0814361c1c0569d11401aace0423069872f5b6284112955a31127946bcdd0df3` |
| 14 | `def` | [StronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/stronglynormalizing--88d34d8f0f9a33a502f9a7f4.md) | 127 | `declaration-track:88d34d8f0f9a33a502f9a7f462e579a90c6e62489b0a312119c318493ce28c3a` |
| 15 | `inductive` | [HasType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/hastype--ac408abde7f483bfd45ac810.md) | 131 | `declaration-track:ac408abde7f483bfd45ac8105fbc0d29ababd2a2a292c3a3dc3ce68e8139b0d4` |
| 16 | `inductive` | [ValidContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/validcontext--fa8164268d34b22c4e3e36a6.md) | 150 | `declaration-track:fa8164268d34b22c4e3e36a6f504cbd47c803f58ccc6d38c24d2b91476168170` |
| 17 | `def` | [Legal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/legal--6a4f61725a59f57d647aee5b.md) | 156 | `declaration-track:6a4f61725a59f57d647aee5be42db7d9fce9a7427ed5835a0d009a60bcca4d80` |
| 18 | `def` | [SystemWeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/systemweaklynormalizing--d9999d273ded3cbb9c6c5573.md) | 160 | `declaration-track:d9999d273ded3cbb9c6c5573c0a41d582060bc2bcff35a617466dc8d872766e4` |
| 19 | `def` | [SystemStronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/systemstronglynormalizing--8cd3ce408b8f35b14e046447.md) | 164 | `declaration-track:8cd3ce408b8f35b14e046447d221b10e0585fdfb77dbab32f8ae1b9474045cee` |
| 20 | `theorem` | [valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/valid--10382a6138bcc0a4a980780d.md) | 172 | `result-track:10382a6138bcc0a4a980780dc41b22e18370cb0091de1e645ab79ff7349b1e82` |
| 21 | `theorem` | [liftRen_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftren-zero--ae834aab91785235a18591f4.md) | 188 | `result-track:ae834aab91785235a18591f4759facd90a3383c31009ec49cb5967d2c42224e3` |
| 22 | `theorem` | [liftRen_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftren-succ--81f3a81821a1feb125028463.md) | 189 | `result-track:81f3a81821a1feb125028463cfcdd96cbd411cf21446a5d15888bf616107b916` |
| 23 | `theorem` | [liftRen_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftren-id--bc43579e86e9c9e02376831a.md) | 192 | `result-track:bc43579e86e9c9e02376831af32e1245f75bafd653c5f69cdba66e6ea058c62c` |
| 24 | `theorem` | [liftRen_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftren-comp--d55159a0f9a57389dc8e42c4.md) | 196 | `result-track:d55159a0f9a57389dc8e42c4e549ecf094c041c5fb22a6508ca37c7f51f2b20c` |
| 25 | `theorem` | [rename_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/rename-id--cf44029aabd7a2f598403e23.md) | 200 | `result-track:cf44029aabd7a2f598403e23e1f3165372d079c62e07b49e20f5c1d9c9cd2341` |
| 26 | `theorem` | [rename_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/rename-comp--da5ce3f0778939ccd541a322.md) | 208 | `result-track:da5ce3f0778939ccd541a322a0d52e81da81e057426f52fd1447955b7ae2e459` |
| 27 | `theorem` | [liftSub_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftsub-zero--7fc48db2583990924810bd05.md) | 217 | `result-track:7fc48db2583990924810bd05bab20a00c4e9deeb3c228e8c4432dbab4816830d` |
| 28 | `theorem` | [liftSub_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftsub-succ--8422da0837e314786b9bfb04.md) | 218 | `result-track:8422da0837e314786b9bfb04976e53fb944d7c030e4c50281aee4e40635575c5` |
| 29 | `theorem` | [liftSub_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/liftsub-var--cc4fafc550096045b949fde7.md) | 221 | `result-track:cc4fafc550096045b949fde7a0f2a4b4e9c62b0cfcd063d7c13f7bd2eea69eba` |
| 30 | `theorem` | [subst_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/subst-var--a3f898a4ba77dfc722ed87d8.md) | 225 | `result-track:a3f898a4ba77dfc722ed87d82a8471b79b44905b2b477f46e972480a2c2972e6` |
| 31 | `theorem` | [subst_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/subst-rename--c28c740702353552b5505a37.md) | 233 | `result-track:c28c740702353552b5505a37fb5332f21e1f7db445cd4da467cfc4df1b3bc6db` |
| 32 | `theorem` | [rename_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/rename-subst--0abbc44789549c5464832e48.md) | 247 | `result-track:0abbc44789549c5464832e48c9c4ac85f14e2bf3df851e4fef1ea87fc7cf6339` |
| 33 | `theorem` | [subst_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/subst-subst--4e52928548686886e54a5bc7.md) | 266 | `result-track:4e52928548686886e54a5bc726b205451880f8efb64fc0ede673f26f4661f708` |
| 34 | `theorem` | [instantiate_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/instantiate-rename--709209e9d8707dd7aea598eb.md) | 285 | `result-track:709209e9d8707dd7aea598eb2ac577faa1ba567c271f35d0489210074a9ac221` |
| 35 | `theorem` | [instantiate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/instantiate-subst--bcf7f5b5e1d2832ba6cf3223.md) | 292 | `result-track:bcf7f5b5e1d2832ba6cf32233e75d1334afeddaf3c9825cdc3d3f34cd1462323` |
| 36 | `theorem` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/rename--c2274d8cb9747f0887130a67.md) | 309 | `result-track:c2274d8cb9747f0887130a67d1ea4e2d9f313dd36aa4f0ebdc3c71d7f9935b07` |
| 37 | `theorem` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant50d54089ff5ba4e1660085508bfcbec579345171c535333296dbb7039240e19e.lean/declarations/subst--94912e4eeeb54cebeb72d56c.md) | 321 | `result-track:94912e4eeeb54cebeb72d56c09ce02f3d140d4b9c4b0b782b830b058499ab303` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
