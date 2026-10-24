# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JapaneseBracket.Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d86d9ae7feaa31beacc09ee085e123e57ca273",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d86d9ae7feaa31beacc09ee085e123e57ca273`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/sqrt-one-add-norm-sq-le--ee7887a539b60de8774c3445.md) | 42 | `result-track:ee7887a539b60de8774c344571840f53bef49de4545f4a03c31635c53a2a37ac` |
| 2 | `theorem` | [one_add_norm_le_sqrt_two_mul_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/one-add-norm-le-sqrt-two-mul-sqrt--10c5a26d976397e54f81421f.md) | 46 | `result-track:10c5a26d976397e54f81421f15a6e8c9f0f3e28217764f3a4d748e9545b7a4da` |
| 3 | `theorem` | [rpow_neg_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/rpow-neg-one-add-norm-sq-le--819f713eb24cecc7233647ea.md) | 53 | `result-track:819f713eb24cecc7233647ea4321de2f0bbbac357f86ff3e3a1e295052692e5f` |
| 4 | `theorem` | [le_rpow_one_add_norm_iff_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/le-rpow-one-add-norm-iff-norm-le--5e7335de7cd8d7130ac140e3.md) | 65 | `result-track:5e7335de7cd8d7130ac140e3dd5e03bf42461ee38c7f7e04504a302c2927a6ae` |
| 5 | `theorem` | [closedBall_rpow_sub_one_eq_empty_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/closedball-rpow-sub-one-eq-empty-aux--505a0beda523aa2894290f61.md) | 72 | `result-track:505a0beda523aa2894290f61599db967484fa384c4d16aa08fb45f445a434830` |
| 6 | `theorem` | [finite_integral_rpow_sub_one_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/finite-integral-rpow-sub-one-pow-aux--20eff9598edc3a7ab6df868c.md) | 80 | `result-track:20eff9598edc3a7ab6df868c528dbd5bfa93efee818c9d48e959dfc826a97a91` |
| 7 | `theorem` | [finite_integral_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/finite-integral-one-add-norm--16057f01a2daacee817ec79d.md) | 99 | `result-track:16057f01a2daacee817ec79da0b07b0fad254c44767d39ecc58ad39e83dec3eb` |
| 8 | `theorem` | [integrable_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/integrable-one-add-norm--c9868c6b7ffe5d4320f05b61.md) | 138 | `result-track:c9868c6b7ffe5d4320f05b61c40ba8f9c759e028b87eafe4efca9bc587bfa199` |
| 9 | `theorem` | [integrable_rpow_neg_one_add_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/declarations/integrable-rpow-neg-one-add-norm-sq--65a5a557bf3676b0146d0040.md) | 148 | `result-track:65a5a557bf3676b0146d0040df31f9707e75178e61c0feef02c18b36fe3a2fbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
