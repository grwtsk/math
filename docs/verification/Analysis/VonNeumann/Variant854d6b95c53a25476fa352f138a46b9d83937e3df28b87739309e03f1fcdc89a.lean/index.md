# Verification target: GRWTSK.Analysis.VonNeumann.Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "193d1bb8afafe0e94b4372d9d941df70e7561d31",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/index.md) · [Full source](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `193d1bb8afafe0e94b4372d9d941df70e7561d31`.

Source path: `GRWTSK/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean.json)

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
| 1 | `def` | [normSqMatrix](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/declarations/normsqmatrix--ade95581905c56b252f6a1eb.md) | 53 | `declaration-track:ade95581905c56b252f6a1eb23bc946f4cb1f8627540607d198ac6716d04435d` |
| 2 | `lemma` | [normSqMatrix_mem_doublyStochastic_of_unitary](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/declarations/normsqmatrix-mem-doublystochastic-of-unitary--e66ca41f5f1315b63ede2019.md) | 60 | `result-track:e66ca41f5f1315b63ede2019b43db7f5302030983cd25df13250501c24cff3d4` |
| 3 | `lemma` | [re_trace_mul_eq_eigenvalue_bilinear](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/declarations/re-trace-mul-eq-eigenvalue-bilinear--a8599667bb9ea25895926fb1.md) | 78 | `result-track:a8599667bb9ea25895926fb1a1be5ac59a8e0f4fcca9a862b389b16506e10c50` |
| 4 | `lemma` | [_root_.Antitone.monovary_antitone](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/declarations/root-antitone-monovary-antitone--728e99b87aa11232758f4964.md) | 133 | `result-track:728e99b87aa11232758f4964862cf1d5d7bffa0b855efb4dd97543dd677d050b` |
| 5 | `lemma` | [bilinear_doublyStochastic_le_of_monovary](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/declarations/bilinear-doublystochastic-le-of-monovary--aad46ef8fd3e3a2572430c5b.md) | 143 | `result-track:aad46ef8fd3e3a2572430c5ba6d79cbf6afcead63ebfb9e9f183828237d3555d` |
| 6 | `theorem` | [vonNeumann_trace_ineq](../../../../mathematics/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/declarations/vonneumann-trace-ineq--23fee8914bc0df4b26b1ea6d.md) | 171 | `result-track:23fee8914bc0df4b26b1ea6decbbeb63c76f1282a670b13431fb82a900babddf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
