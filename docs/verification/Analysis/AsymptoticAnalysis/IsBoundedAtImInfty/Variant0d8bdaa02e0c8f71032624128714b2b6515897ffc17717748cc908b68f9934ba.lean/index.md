# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.IsBoundedAtImInfty.Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc51441e783cc2c0b5fb8226164a648770b57e18",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc51441e783cc2c0b5fb8226164a648770b57e18`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.EisensteinSeries.UniformConvergence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.Identities` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [summable_norm_eisSummand](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean/declarations/summable-norm-eissummand--f3db3f7011564954ce769f23.md) | 35 | `result-track:f3db3f7011564954ce769f236e58a37985bcd6f3d24726a3f0c9b603362317ed` |
| 2 | `lemma` | [norm_le_tsum_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean/declarations/norm-le-tsum-norm--db329348094824ecc6baee85.md) | 45 | `result-track:db329348094824ecc6baee8509d00fc7084a5fee9412cbc721879453f1b84846` |
| 3 | `theorem` | [isBoundedAtImInfty_eisensteinSeries_SIF](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant0d8bdaa02e0c8f71032624128714b2b6515897ffc17717748cc908b68f9934ba.lean/declarations/isboundedatiminfty-eisensteinseries-sif--84d2288cce3569345e86901c.md) | 55 | `result-track:84d2288cce3569345e86901c274eedb705eb7b149393c8af29070e50b7507a4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
