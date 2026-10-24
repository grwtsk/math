# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JapaneseBracket.Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77cb87ee0d77bb4a9d49dba08c27c2a1df6ef5a9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77cb87ee0d77bb4a9d49dba08c27c2a1df6ef5a9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrability.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/sqrt-one-add-norm-sq-le--9b6a767744d73b8d29dfd36f.md) | 49 | `result-track:9b6a767744d73b8d29dfd36f405964da1f099e197545cf9dae26bf31da70c242` |
| 2 | `theorem` | [one_add_norm_le_sqrt_two_mul_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/one-add-norm-le-sqrt-two-mul-sqrt--7b7d68cc93851736db2c5f63.md) | 53 | `result-track:7b7d68cc93851736db2c5f63bace26107d458c573913b8b764d500151cfc9836` |
| 3 | `theorem` | [rpow_neg_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/rpow-neg-one-add-norm-sq-le--e836500f2da00fef9be0a87c.md) | 60 | `result-track:e836500f2da00fef9be0a87c396fee21bdd81b70f5ede73fc997530f054c07fe` |
| 4 | `theorem` | [le_rpow_one_add_norm_iff_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/le-rpow-one-add-norm-iff-norm-le--65f6bb8aa065b3cf27981af1.md) | 72 | `result-track:65f6bb8aa065b3cf27981af1ee2ba3222fffba626991d3f5c88a70caa069530b` |
| 5 | `theorem` | [closedBall_rpow_sub_one_eq_empty_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/closedball-rpow-sub-one-eq-empty-aux--c7bb26e1b36145efe765384d.md) | 79 | `result-track:c7bb26e1b36145efe765384d1117be931c3268cd4956b5e809158f0c3bf5e8b4` |
| 6 | `theorem` | [finite_integral_rpow_sub_one_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/finite-integral-rpow-sub-one-pow-aux--795ef8678fdac74071c6ff8a.md) | 87 | `result-track:795ef8678fdac74071c6ff8af290834e8367827555797fb32decd58bc289aa00` |
| 7 | `theorem` | [finite_integral_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/finite-integral-one-add-norm--d004dd60fa66d5bd40d82490.md) | 106 | `result-track:d004dd60fa66d5bd40d82490de436d64ba7195244e2c80ba1a9f9a56a06d7aa5` |
| 8 | `theorem` | [integrable_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/integrable-one-add-norm--59c92a77770cc441124de5f4.md) | 145 | `result-track:59c92a77770cc441124de5f452714bebaef1f03f543905808f23ceaaa1cbe2dd` |
| 9 | `theorem` | [integrable_rpow_neg_one_add_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantba1ef17cac1b37bcf0c07b70091ce77de9472d203537dd147fd7af09431452f0.lean/declarations/integrable-rpow-neg-one-add-norm-sq--af04d099528d1a1203299ebd.md) | 155 | `result-track:af04d099528d1a1203299ebdc6b10996709ded66ea0aba6ff517d7a2958e36e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
