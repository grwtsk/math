# Verification target: GRWTSK.Analysis.VonNeumann.Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c617665db1276f3678ec91246874335a52e3e1f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/index.md) · [Full source](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c617665db1276f3678ec91246874335a52e3e1f`.

Source path: `GRWTSK/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean.json)

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
| 1 | `def` | [normSqMatrix](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/declarations/normsqmatrix--fc610a1b53a34eef4710c9aa.md) | 61 | `declaration-track:fc610a1b53a34eef4710c9aa6a00d6522dc0957b7ce8b36b055f8ebc33df10d8` |
| 2 | `lemma` | [normSqMatrix_mem_doublyStochastic_of_unitary](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/declarations/normsqmatrix-mem-doublystochastic-of-unitary--ff93a5d194069d066d8680e2.md) | 68 | `result-track:ff93a5d194069d066d8680e23aedf6f2458f5362a179da156894674faefa0d67` |
| 3 | `lemma` | [re_trace_mul_eq_eigenvalue_bilinear](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/declarations/re-trace-mul-eq-eigenvalue-bilinear--e69995f28b762293801da987.md) | 86 | `result-track:e69995f28b762293801da987a18b7d109d041f98f7cea4412a11ce55ad36af78` |
| 4 | `lemma` | [_root_.GRWTSK.Analysis.NormSqMatrix.Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.Antitone.monovary_antitone](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/declarations/root-grwtsk-analysis-normsqmatrix-variant854d6b95c53a25476fa352f138a46b9--6661f1b1d2fb7c9339f56d02.md) | 141 | `result-track:6661f1b1d2fb7c9339f56d028538efedb5e2ec6445c661fc66712e9e739da234` |
| 5 | `lemma` | [bilinear_doublyStochastic_le_of_monovary](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/declarations/bilinear-doublystochastic-le-of-monovary--d1813ba4284b06caf29f3641.md) | 151 | `result-track:d1813ba4284b06caf29f3641bd519927afeb1964d9e4fddcd6f6d4a5e67fe810` |
| 6 | `theorem` | [vonNeumann_trace_ineq](../../../../mathematics/Analysis/VonNeumann/Variant6a66e4b5748521b42921303e75e1c4453c5d63647e50f391544c3e69ff6d1f45.lean/declarations/vonneumann-trace-ineq--4132a9bfadb851e96e4b9ea3.md) | 179 | `result-track:4132a9bfadb851e96e4b9ea3f93f504d1fad5e7a803c3cdb274366c76fb72fbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
