# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GodelBetaFunction.Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c6d004eb98c61135f507e6eaa25fffc389970b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c6d004eb98c61135f507e6eaa25fffc389970b`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ChineseRemainder` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coprime_mul_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/coprime-mul-succ--cd986806f79210c8802c348d.md) | 57 | `result-track:cd986806f79210c8802c348ddcc9cd0adaaaeb20c5953392d6647f9c0443e216` |
| 2 | `def` | [supOfSeq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/supofseq--e116ac46b927c37d818176f7.md) | 71 | `declaration-track:e116ac46b927c37d818176f782793ae2d40c5bdcb67cd2245614001d5467a40d` |
| 3 | `def` | [coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/coprimes--09d7f4a5db3b24b39b9881b2.md) | 73 | `declaration-track:09d7f4a5db3b24b39b9881b2a8ee2fbddb71840d060642925b9f5b7a7053b137` |
| 4 | `lemma` | [coprimes_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/coprimes-lt--2292bd86fcd6aaf41c827dea.md) | 75 | `result-track:2292bd86fcd6aaf41c827dea28ffcecf333e7621c6593c0c08c6f4b8f82cce54` |
| 5 | `lemma` | [pairwise_coprime_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/pairwise-coprime-coprimes--b408e26482cf1a3fa5aab6b1.md) | 84 | `result-track:b408e26482cf1a3fa5aab6b1d724df6fbc495abb9bbd8bf3f8c783292306131b` |
| 6 | `def` | [beta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/beta--af69e9071a54594de4c53387.md) | 96 | `declaration-track:af69e9071a54594de4c53387820afff8df6ffec5af35fc052f357645d4f48057` |
| 7 | `def` | [unbeta](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/unbeta--72bab3d394b5dde4198055ab.md) | 100 | `declaration-track:72bab3d394b5dde4198055abf3402ec970ac0ab010552073d9b502809c471492` |
| 8 | `lemma` | [beta_unbeta_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/declarations/beta-unbeta-coe--b6b134fc6323263b81b619ea.md) | 107 | `result-track:b6b134fc6323263b81b619ea8a84e9e6f88ebe47948782d090a2da826fc9ed5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
