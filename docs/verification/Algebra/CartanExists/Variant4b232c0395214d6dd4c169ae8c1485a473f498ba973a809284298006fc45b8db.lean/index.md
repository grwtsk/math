# Verification target: GRWTSK.Algebra.CartanExists.Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaf0b0041db6109173adf071fcc7a19ddff763ce",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/index.md) · [Full source](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaf0b0041db6109173adf071fcc7a19ddff763ce`.

Source path: `GRWTSK/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lieCharpoly](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/liecharpoly--46b1f7f12e59f211102b035d.md) | 91 | `declaration-track:46b1f7f12e59f211102b035d83e34970cfee51dcc176ff733d52dbdf606a5dd6` |
| 2 | `lemma` | [lieCharpoly_monic](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/liecharpoly-monic--6fae8e2050f2216ee0eb49da.md) | 98 | `result-track:6fae8e2050f2216ee0eb49da30f529003bcb87d5bdaade55ecc6ac24b60fc8f4` |
| 3 | `lemma` | [lieCharpoly_natDegree](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/liecharpoly-natdegree--4899f391deb86b19f6830724.md) | 103 | `result-track:4899f391deb86b19f6830724c6e5cd7d49003f57492b6deab3ba3e6b0b1a0cdd` |
| 4 | `lemma` | [lieCharpoly_map_eval](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/liecharpoly-map-eval--705849b325814edd8b6102f4.md) | 109 | `result-track:705849b325814edd8b6102f4cb4eeabc16a6614b85e4b29d38b3d5410a82e246` |
| 5 | `lemma` | [lieCharpoly_coeff_natDegree](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/liecharpoly-coeff-natdegree--c1c1d5ff80d086b07411c4b5.md) | 121 | `result-track:c1c1d5ff80d086b07411c4b557b3980b4fcf633bba5c0f0bf19295264d2a3cc2` |
| 6 | `lemma` | [engel_isBot_of_isMin](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/engel-isbot-of-ismin--47eed93cf7f92db086fe050c.md) | 145 | `result-track:47eed93cf7f92db086fe050c4b472d7279b37f3891c3d08aaacf1b6489887b67` |
| 7 | `lemma` | [exists_isCartanSubalgebra_engel_of_finrank_le_card](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/exists-iscartansubalgebra-engel-of-finrank-le-card--3425cc92754c39e1999898d0.md) | 364 | `result-track:3425cc92754c39e1999898d04e624a7e884324bb3270686b29fa11f1f9cd1189` |
| 8 | `lemma` | [exists_isCartanSubalgebra_engel](../../../../mathematics/Algebra/CartanExists/Variant4b232c0395214d6dd4c169ae8c1485a473f498ba973a809284298006fc45b8db.lean/declarations/exists-iscartansubalgebra-engel--d76bbc72f1f91cf0b39c5857.md) | 382 | `result-track:d76bbc72f1f91cf0b39c58578b24cebdc6ef4878192534c9777acc0a90d23f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
