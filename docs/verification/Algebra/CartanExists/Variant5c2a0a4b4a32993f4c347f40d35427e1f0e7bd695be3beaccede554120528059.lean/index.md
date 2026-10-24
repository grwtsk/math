# Verification target: GRWTSK.Algebra.CartanExists.Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5007f7bbfaa9f73d26a58c514882ae26079ee69e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/index.md) · [Full source](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5007f7bbfaa9f73d26a58c514882ae26079ee69e`.

Source path: `GRWTSK/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.CartanSubalgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Rank` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lieCharpoly](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/liecharpoly--476c13df23de037ac06a8738.md) | 86 | `declaration-track:476c13df23de037ac06a8738f936ff7206f432e43d5407eef286de469970a298` |
| 2 | `lemma` | [lieCharpoly_monic](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/liecharpoly-monic--3346914953220d0a76bd18fe.md) | 91 | `result-track:3346914953220d0a76bd18fe68b60a6c2b68690560fc03853ba25a73e6c2b88a` |
| 3 | `lemma` | [lieCharpoly_natDegree](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/liecharpoly-natdegree--da6f28aa6c39263be4bdb487.md) | 94 | `result-track:da6f28aa6c39263be4bdb487d7d040810974f0646f32cc3672eef2a1f8e63446` |
| 4 | `lemma` | [lieCharpoly_map_eval](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/liecharpoly-map-eval--3ae67d48352f187b7aea1091.md) | 98 | `result-track:3ae67d48352f187b7aea1091f17e2f650d9e2641a8df0a6b128763a5b39e48ae` |
| 5 | `lemma` | [lieCharpoly_coeff_natDegree](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/liecharpoly-coeff-natdegree--f9723a14a3f28dfb18d4a2f0.md) | 108 | `result-track:f9723a14a3f28dfb18d4a2f010b41dda6e1af184fb1b4adbea4553d149f474a5` |
| 6 | `lemma` | [engel_isBot_of_isMin](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/engel-isbot-of-ismin--94a3b968de127532657d4f5a.md) | 136 | `result-track:94a3b968de127532657d4f5a3d2b56b63cbda88dea56ac00b3a8acf0e25f78af` |
| 7 | `lemma` | [exists_isCartanSubalgebra_engel_of_finrank_le_card](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/exists-iscartansubalgebra-engel-of-finrank-le-card--c44fc820a86ee3258c057efa.md) | 356 | `result-track:c44fc820a86ee3258c057efa56ab6f3396838e625669dd96bcb2cdfaba8c9946` |
| 8 | `lemma` | [exists_isCartanSubalgebra_engel](../../../../mathematics/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/declarations/exists-iscartansubalgebra-engel--46bb1f4319844ad792e3b427.md) | 374 | `result-track:46bb1f4319844ad792e3b427c6dc29dccab552f5a5b9f5541ecbd3684f4f570f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
