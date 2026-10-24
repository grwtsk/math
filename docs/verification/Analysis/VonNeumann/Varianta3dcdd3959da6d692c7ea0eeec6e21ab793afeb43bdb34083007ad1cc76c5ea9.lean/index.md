# Verification target: GRWTSK.Analysis.VonNeumann.Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1fd838d78e2be13e742ad247e4c7699f830db66",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/index.md) · [Full source](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1fd838d78e2be13e742ad247e4c7699f830db66`.

Source path: `GRWTSK/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Birkhoff` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Rearrangement` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normSqMatrix](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/declarations/normsqmatrix--85a80f0c8d46347a6fb339ac.md) | 61 | `declaration-track:85a80f0c8d46347a6fb339acf29af78cc5d91fcfe1b184bd30eb80f3afb7efbe` |
| 2 | `lemma` | [normSqMatrix_mem_doublyStochastic_of_unitary](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/declarations/normsqmatrix-mem-doublystochastic-of-unitary--70e212813a83752ea7825817.md) | 68 | `result-track:70e212813a83752ea78258179eee39d6c755bcdce22601019d5f97687e9b57f2` |
| 3 | `lemma` | [re_trace_mul_eq_eigenvalue_bilinear](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/declarations/re-trace-mul-eq-eigenvalue-bilinear--ba788bda7775a6d192c31893.md) | 86 | `result-track:ba788bda7775a6d192c31893fde0b7a59d408de42718e41968875c12ad7b93bd` |
| 4 | `lemma` | [_root_.GRWTSK.Analysis.NormSqMatrix.Variant92c98919fef5f4dee319d466c1c95e45bb60d56b4808cbc5c5b33e98bb23fd1b.Antitone.monovary_antitone](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/declarations/root-grwtsk-analysis-normsqmatrix-variant92c98919fef5f4dee319d466c1c95e4--4f0ab3bdd8831e4e8ac3da30.md) | 141 | `result-track:4f0ab3bdd8831e4e8ac3da3069ef2df64bc68a6fe7450dfbb9b965908af21ff2` |
| 5 | `lemma` | [bilinear_doublyStochastic_le_of_monovary](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/declarations/bilinear-doublystochastic-le-of-monovary--d5ccd0144c7ad0bf97bc83cf.md) | 151 | `result-track:d5ccd0144c7ad0bf97bc83cfb7bd7802d8f2b818a4f35c5475094daa518b3b4c` |
| 6 | `theorem` | [vonNeumann_trace_ineq](../../../../mathematics/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/declarations/vonneumann-trace-ineq--bc4ce4ea4e525fc132ccb89b.md) | 179 | `result-track:bc4ce4ea4e525fc132ccb89b777318a10d39147c33e3d3ba159424ea7e5316f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
