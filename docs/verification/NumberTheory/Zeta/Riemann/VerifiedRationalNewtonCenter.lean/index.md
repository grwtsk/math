# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.VerifiedRationalNewtonCenter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba1b01a868784a7a5691310e621bce59e7ff322b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba1b01a868784a7a5691310e621bce59e7ff322b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterRefinement`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterRefinement.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [newtonData](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/declarations/newtondata--3148e3a7818f4e7c69b73eb0.md) | 24 | `declaration-track:3148e3a7818f4e7c69b73eb035f47d3d789554a8fa50abf7d95d9859d7f3f0d3` |
| 2 | `def` | [verifyZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/declarations/verifyzero--90bb9d51c5589d2535bd48fa.md) | 35 | `declaration-track:90bb9d51c5589d2535bd48fa460d700db47332c0d7bd469a80cdfa8dd87b5195` |
| 3 | `theorem` | [centerEnclosures_of_verified](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/declarations/centerenclosures-of-verified--4a4397c72925a16215094d89.md) | 40 | `result-track:4a4397c72925a16215094d895722abd4961e74cb44b1d44e39ca5cb0e5001fdd` |
| 4 | `theorem` | [exists_zero_of_verify](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/declarations/exists-zero-of-verify--14759dfc8d3ea8575aa5b3ea.md) | 48 | `result-track:14759dfc8d3ea8575aa5b3ea9b9d7d21470f1e7b90fcfaea6d607c6908f68c05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
