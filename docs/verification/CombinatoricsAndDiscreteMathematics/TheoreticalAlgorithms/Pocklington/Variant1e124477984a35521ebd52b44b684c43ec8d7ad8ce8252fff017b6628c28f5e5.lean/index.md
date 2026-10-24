# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pocklington.Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38573c6f572f30b2301419d823e696edb0f225e6",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38573c6f572f30b2301419d823e696edb0f225e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeCert.Meta.SmallPrime` — import line 12; external provider; requires a separately pinned dependency.
- `PrimeCert.PredMod` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeCert.PowMod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ChineseRemainder` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ScopedNS` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.pairwise_iff_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/list-pairwise-iff-tofinset--d41f4efa8c7c7394c1f4b71d.md) | 38 | `result-track:d41f4efa8c7c7394c1f4b71d34b3d4582dfcb41b3dcf4a38e0510c92c13e73a7` |
| 2 | `theorem` | [Nat.modEq_finset_prod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/nat-modeq-finset-prod-iff--a2a3d3b5ad2c1a06df009307.md) | 44 | `result-track:a2a3d3b5ad2c1a06df0093073d0b398c0f54940805c59565caf05d0065ea476c` |
| 3 | `theorem` | [multiplicity_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/multiplicity-zero-right--e5c6746cca4b8010cf0780c4.md) | 53 | `result-track:e5c6746cca4b8010cf0780c45c8c1392c6b849380ff15d269a0f95546ddaac16` |
| 4 | `theorem` | [Nat.modEq_iff_forall_prime_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/nat-modeq-iff-forall-prime-dvd--e48a76c4fa5e00ed17dc8d73.md) | 56 | `result-track:e48a76c4fa5e00ed17dc8d73b11ac6c0e0ec626388ded5b8c29d834b31437074` |
| 5 | `theorem` | [Nat.pow_multiplicity_dvd_of_dvd_of_not_dvd_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/nat-pow-multiplicity-dvd-of-dvd-of-not-dvd-div--ca60df55391958956aac7242.md) | 77 | `result-track:ca60df55391958956aac72422e528efadae0d12a9e3beb943ca42073a8be7f64` |
| 6 | `theorem` | [pocklington_test](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklington-test--6b94b0adc94ea8f3901ccad6.md) | 108 | `result-track:6b94b0adc94ea8f3901ccad67eee19b481eb93ab626e42896aae1da57f94acf4` |
| 7 | `def` | [PocklingtonPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklingtonpred--d72c73556c8930a1f79765b4.md) | 149 | `declaration-track:d72c73556c8930a1f79765b42b8b2411a84d35884ca5abd74d0199fb4ea4f0c3` |
| 8 | `theorem` | [pocklington_certify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklington-certify--6f0e6bc213cf54673f4c86a2.md) | 152 | `result-track:6f0e6bc213cf54673f4c86a248a57674c7057c565f7e2c99f06d29b4e55ff018` |
| 9 | `theorem` | [pocklington_certifyKR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklington-certifykr--16515998f835a6d2ae87569a.md) | 167 | `result-track:16515998f835a6d2ae87569a676da2838e3a368e3e42df1086ab09f03844fe1c` |
| 10 | `theorem` | [PocklingtonPred.zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklingtonpred-zero--b6d8ec300cc3cd00b94a9ea0.md) | 178 | `result-track:b6d8ec300cc3cd00b94a9ea0f659dd9c8df4c7224453f67cc620f58f033806cf` |
| 11 | `theorem` | [PocklingtonPred.one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklingtonpred-one--db910be4245bb5f1ec98acac.md) | 182 | `result-track:db910be4245bb5f1ec98acacb9388a89e1eeb57fdb3416773e6352a116ef712a` |
| 12 | `theorem` | [PocklingtonPred.step_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklingtonpred-step-pow--9c60d317df39ac3b149d01e3.md) | 186 | `result-track:9c60d317df39ac3b149d01e3d28ec8b0fe7bfb1b2571f269272bc68332a0741d` |
| 13 | `theorem` | [PocklingtonPred.step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklingtonpred-step--e1e300bd3237ccdb94bf9500.md) | 216 | `result-track:e1e300bd3237ccdb94bf950006fbb0d62e00c5f70ed87500366df82951b9e800` |
| 14 | `theorem` | [PocklingtonPred.base_pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklingtonpred-base-pow--e5a27a89a84d943639227441.md) | 224 | `result-track:e5a27a89a84d943639227441a6b5859ccbfac604c1acc5ce67da95d119b1f512` |
| 15 | `theorem` | [PocklingtonPred.base](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/pocklingtonpred-base--5aba2979ce273f16bf7a56ee.md) | 231 | `result-track:5aba2979ce273f16bf7a56eed9e3f529a7ac9e12409f44d29668987411344387` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/syntax--2f29159fbe3664343ffa22d7.md) | 243 | `declaration-track:2f29159fbe3664343ffa22d7590536b0b10d1c8eb06e92f9e788a911dcb80843` |
| 17 | `inductive` | [PrimePow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/primepow--711d3e35464ee3ca5433a28d.md) | 245 | `declaration-track:711d3e35464ee3ca5433a28da6e77b7ad5dcfa42767f7a0d3035783008ffa605` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/instance--060f3ad08639495601d51fc0.md) | 248 | `declaration-track:060f3ad08639495601d51fc0e439a0fa2e20dae02a8619e4280b3c0a3e4176a7` |
| 19 | `def` | [parsePrimePow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/parseprimepow--fa6b0a410abf1b7ca9093e15.md) | 253 | `declaration-track:fa6b0a410abf1b7ca9093e1593595557de235f59ed9d4eadf61f0a97356c7d78` |
| 20 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/syntax--5759e311228488959cb6c490.md) | 265 | `declaration-track:5759e311228488959cb6c490bbde16b7d3791b453d21e36ac5872805b81f3b24` |
| 21 | `def` | [parseFactored](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/parsefactored--be7fefa68811984606cba1f4.md) | 267 | `declaration-track:be7fefa68811984606cba1f49a8f37aa85c5134388fe7500983e88ecebc26f04` |
| 22 | `def` | [mkPockPred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/mkpockpred--47482dd7d1d05b12f01f33d6.md) | 279 | `declaration-track:47482dd7d1d05b12f01f33d609bd74f2a894892b4e9b2f16212d795171df12d9` |
| 23 | `syntax` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/syntax--a79429ba6ae3b7e09d7a02d8.md) | 313 | `declaration-track:a79429ba6ae3b7e09d7a02d81b5733565a73f8eafe458f11ff5b1309d91d8a2b` |
| 24 | `def` | [parsePockSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/parsepockspec--11b58c3f59da36fa88df05d9.md) | 315 | `declaration-track:11b58c3f59da36fa88df05d98f8a526e60fd41436bbefba9a6cf2807af9e775b` |
| 25 | `def` | [PrimeCertExt.pock](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/primecertext-pock--42553520f26ce7b31a02e300.md) | 329 | `declaration-track:42553520f26ce7b31a02e300ce128e4d06b26adaba04f1dc0d1cb1012486589a` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/declarations/elab--a5166a126759db4cd7b2feb7.md) | 360 | `declaration-track:a5166a126759db4cd7b2feb7fe60d4d23bc2db6f4baae8285505639385b29426` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
