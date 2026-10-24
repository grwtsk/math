# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZetaConj.Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f97c294a9eb2f5732d03163d0a3bbe41932a671",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f97c294a9eb2f5732d03163d0a3bbe41932a671`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_conj_conj'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/deriv-conj-conj--a3aa9d475b4f2bb76e3803bf.md) | 24 | `result-track:a3aa9d475b4f2bb76e3803bf43a4066f07456d4beff0fbb9744e9a5cb0d70f7d` |
| 2 | `lemma` | [conj_riemannZeta_conj_aux1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/conj-riemannzeta-conj-aux1--acf7c4328dc17fac4c5f192b.md) | 40 | `result-track:acf7c4328dc17fac4c5f192be170efea4ddb3a9350fe3de7a229888097dbf9ef` |
| 3 | `theorem` | [conj_riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/conj-riemannzeta-conj--a8de0ebe1d21e40a0d4f376f.md) | 69 | `result-track:a8de0ebe1d21e40a0d4f376f4cffd7e405b532f9d1c595deebc1203e96bdd6f2` |
| 4 | `theorem` | [riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/riemannzeta-conj--a1f3776864f20633af0b05d6.md) | 115 | `result-track:a1f3776864f20633af0b05d649e584ea7b04d9af414612fa6fd0e57847ada138` |
| 5 | `theorem` | [deriv_riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/deriv-riemannzeta-conj--d783cb4a731acd73ccc93388.md) | 128 | `result-track:d783cb4a731acd73ccc93388a6e49731f5530d9290f2e34c8da4a958830d38d6` |
| 6 | `theorem` | [logDerivZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/logderivzeta-conj--32729fd2631af6329c334b1f.md) | 132 | `result-track:32729fd2631af6329c334b1f2004344a27264e4f4332293f66fa2956b4dcd676` |
| 7 | `theorem` | [logDerivZeta_conj'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/logderivzeta-conj--42732dc17ce834600309a916.md) | 136 | `result-track:42732dc17ce834600309a91650e139cb9bf9c6752f461bb6874ef056c2e81e37` |
| 8 | `theorem` | [intervalIntegral_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18.lean/declarations/intervalintegral-conj--a5bcbac977dcbf0ec164dbd4.md) | 154 | `result-track:a5bcbac977dcbf0ec164dbd4021ee827efb729961c10d0bf9fcdd9f9f45fdf5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
