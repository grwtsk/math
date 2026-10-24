# Verification target: GRWTSK.Analysis.VonNeumann.Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/index.md) · [Full source](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ef8c701b65ada5ecdfd8d1fe0842e482d6c7981`.

Source path: `GRWTSK/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Birkhoff` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Rearrangement` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normSqMatrix](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/declarations/normsqmatrix--dedbd7cf5c179cfaed2d86dc.md) | 53 | `declaration-track:dedbd7cf5c179cfaed2d86dc7938d07d479d2eb39bb9805b598e241aefcd2baf` |
| 2 | `lemma` | [normSqMatrix_mem_doublyStochastic_of_unitary](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/declarations/normsqmatrix-mem-doublystochastic-of-unitary--ddd1c6b17448c3ae9beaf956.md) | 60 | `result-track:ddd1c6b17448c3ae9beaf956271e5951342b307afcbd959e7a25d8eefc770d6d` |
| 3 | `lemma` | [re_trace_mul_eq_eigenvalue_bilinear](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/declarations/re-trace-mul-eq-eigenvalue-bilinear--dbb375ae4e649011415eb182.md) | 78 | `result-track:dbb375ae4e649011415eb18220e90b49864837616b00670cda598868d5867573` |
| 4 | `lemma` | [_root_.Antitone.monovary_antitone](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/declarations/root-antitone-monovary-antitone--d34e737e72e4d8d32d4859f9.md) | 133 | `result-track:d34e737e72e4d8d32d4859f9062cca2ff61e9b882dc4168a1482edc2e182a7d4` |
| 5 | `lemma` | [bilinear_doublyStochastic_le_of_monovary](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/declarations/bilinear-doublystochastic-le-of-monovary--0860ad86a9642cdba35f3c02.md) | 143 | `result-track:0860ad86a9642cdba35f3c0218ddd37cac2f2c5befa667e66e8588b2c30a8e4b` |
| 6 | `theorem` | [vonNeumann_trace_ineq](../../../../mathematics/Analysis/VonNeumann/Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.lean/declarations/vonneumann-trace-ineq--dbb4047b2e7fe155f0d50642.md) | 171 | `result-track:dbb4047b2e7fe155f0d50642940d2a6ef9c203c932bce68b62293f40d261dec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
