# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZetaConj.Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668254545fdc393b51e5c2e0fa26d68f2f53f356",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668254545fdc393b51e5c2e0fa26d68f2f53f356`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_conj_conj'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean/declarations/deriv-conj-conj--d319c1fac2abfbb870c2c388.md) | 20 | `result-track:d319c1fac2abfbb870c2c38859da936c78d0562038a3b137a90a5527d52d25cc` |
| 2 | `theorem` | [deriv_riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean/declarations/deriv-riemannzeta-conj--cdf2cad96bc07a4ac6af966c.md) | 26 | `result-track:cdf2cad96bc07a4ac6af966c5333691760a31d7468be480e96d44ab0a7065345` |
| 3 | `theorem` | [logDerivZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean/declarations/logderivzeta-conj--6c795213c12dbaeb9f7d8b46.md) | 30 | `result-track:6c795213c12dbaeb9f7d8b469f7f18dc2a4c4ecdb0daef64adc0a5af87728c21` |
| 4 | `theorem` | [logDerivZeta_conj'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean/declarations/logderivzeta-conj--8360b52d873e32c3cc09af2e.md) | 34 | `result-track:8360b52d873e32c3cc09af2e51fb3a7b11823ebb6b6de4d696a6bb4234a11cad` |
| 5 | `theorem` | [intervalIntegral_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variant6160b5a4e5cbcc346a67f973a4ed7d68f535eb79d803c10882eef74a6c2b8fb5.lean/declarations/intervalintegral-conj--9dd3f4d42f9cba57f88eb9c6.md) | 38 | `result-track:9dd3f4d42f9cba57f88eb9c6818cf26f9d567b57da69cef73bee5d0896cb34ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
