# Verification target: GRWTSK.Analysis.ClassicalPNTEnvelopeDominance.Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f09ccc6c5fc8778bc5450968683d2b5b9bdbfeb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/index.md) · [Full source](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f09ccc6c5fc8778bc5450968683d2b5b9bdbfeb`.

Source path: `GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [envelope](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/declarations/envelope--bf9a18225d30925082e15fea.md) | 19 | `declaration-track:bf9a18225d30925082e15fea182c4cc5ac3521f8e5018158f7a319fb1a33969c` |
| 2 | `def` | [entrance](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/declarations/entrance--3e27fc92eb00ef2a37f81c2c.md) | 20 | `declaration-track:3e27fc92eb00ef2a37f81c2c631511aeed33c34bf0fe3f610bf70a20c2c9aa03` |
| 3 | `theorem` | [classical_pnt_envelope_dominates_quarter_power](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/declarations/classical-pnt-envelope-dominates-quarter-power--b3650d112a7299bb37b3ca60.md) | 22 | `result-track:b3650d112a7299bb37b3ca60d3d2fc0d1d23baf3d3537a4035588906d069e102` |
| 4 | `theorem` | [full_source_window_has_quarter_envelope](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/declarations/full-source-window-has-quarter-envelope--661461ce2d2be9e6947cf853.md) | 35 | `result-track:661461ce2d2be9e6947cf853f1d0c5f984ccd38812e95798058362d608fdb700` |
| 5 | `theorem` | [classical_source_window_payment_integrable](../../../../mathematics/Analysis/ClassicalPNTEnvelopeDominance/Variantf0238882d023c51ebff6d9d0e9a93eda2a774d8a2c8e0139d1e24cd665d96150.lean/declarations/classical-source-window-payment-integrable--95521fabb9313e3db4836c7e.md) | 51 | `result-track:95521fabb9313e3db4836c7efb3b9ddae771995c201d521574fe3d581cbe0d48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
