# Verification target: GRWTSK.Analysis.Asymptotics.SublinearDyadic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c77c4e684f065879f2bb66206f950e3706d448d9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c77c4e684f065879f2bb66206f950e3706d448d9`.

Source path: `GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/SublinearDyadic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UpperSublinear](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/uppersublinear--7b55f9a72231f365cb70e75c.md) | 25 | `declaration-track:7b55f9a72231f365cb70e75c7d3379a3532014f92fd4e0128265133e9c785630` |
| 2 | `theorem` | [upperSublinear_iff_isLittleO](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/uppersublinear-iff-islittleo--7b10ff21824783af917286de.md) | 29 | `result-track:7b10ff21824783af917286de9a573a28c3d02c76a68d915e440e08fc2cd73db9` |
| 3 | `theorem` | [UpperSublinear.mono](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/uppersublinear-mono--6130c87ff54acc1ca25a7d98.md) | 47 | `result-track:6130c87ff54acc1ca25a7d980199d101b62cd1067d173e60458d10c6a8253a4d` |
| 4 | `theorem` | [UpperSublinear.add](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/uppersublinear-add--827778d2a5260a1318044a0a.md) | 53 | `result-track:827778d2a5260a1318044a0aab292a6ae31a05699c20ac35e2d10eee1007e558` |
| 5 | `theorem` | [upperSublinear_of_affine_bounds](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/uppersublinear-of-affine-bounds--e7bf21495019499a45119885.md) | 66 | `result-track:e7bf21495019499a451198852a36186e3e5909a45b4c8529c8e688775b38b42c` |
| 6 | `lemma` | [nat_le_two_pow](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/nat-le-two-pow--1e072517a637be0a2c163961.md) | 82 | `result-track:1e072517a637be0a2c16396194acd675fe197ecd8ab82c8d350bcca9c9303001` |
| 7 | `theorem` | [dyadic_cover](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/dyadic-cover--32417e5e68832c1aa78fdd1c.md) | 91 | `result-track:32417e5e68832c1aa78fdd1ca898f4b0d6ee8c0b095535a847e1703f5ed1bc70` |
| 8 | `theorem` | [dyadic_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/dyadic-iteration--1242501d194a5101dfec5815.md) | 105 | `result-track:1242501d194a5101dfec581539d869210844b0bc67cc28a04134bd5a4f87391b` |
| 9 | `lemma` | [prefix_le](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/prefix-le--e7c7c8dac988d3f961a60eab.md) | 117 | `result-track:e7c7c8dac988d3f961a60eab4f7934f1fab18c893e1c80c13e6104cc39e7373a` |
| 10 | `theorem` | [dyadic_tail_budget](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/dyadic-tail-budget--abadfe5d5beaa22cfacd57ec.md) | 124 | `result-track:abadfe5d5beaa22cfacd57ec4d710e8e00c09bdcf2867bec4b2797906d039ccd` |
| 11 | `theorem` | [upperSublinear_of_doubling](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/uppersublinear-of-doubling--cf470c59c1dc53ea46059fbc.md) | 146 | `result-track:cf470c59c1dc53ea46059fbc11b91f259b6a09ba88863ae5a3b73a870b0d922d` |
| 12 | `theorem` | [sublinear_log_of_doubling](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/declarations/sublinear-log-of-doubling--75bbc3a87cef8ea0b7fafb27.md) | 166 | `result-track:75bbc3a87cef8ea0b7fafb276195226b28669279818b457710358783d7c9d9e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
