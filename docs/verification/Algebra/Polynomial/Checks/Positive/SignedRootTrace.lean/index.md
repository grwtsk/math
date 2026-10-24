# Verification target: GRWTSK.Algebra.Polynomial.Checks.Positive.SignedRootTrace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "934f0f11f5cab47860f5614809ed26406beb7752",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `934f0f11f5cab47860f5614809ed26406beb7752`.

Source path: `GRWTSK/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Polynomial.SignedRootTrace`](../../../../../../mathematics/Algebra/Polynomial/SignedRootTrace.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--b2ecaf7e186b30cfa5a07b8a.md) | 11 | `declaration-track:b2ecaf7e186b30cfa5a07b8ae46de72fa69a68abc75ffaf237ead75cec62bd65` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--7f21a7fef4d303a56abc44d9.md) | 19 | `declaration-track:7f21a7fef4d303a56abc44d9acd9221f72dfa58220b8c0c8e05667efc61075d2` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--b2056b5fde015ecf5629c07e.md) | 24 | `declaration-track:b2056b5fde015ecf5629c07e76ea88b9943f4ed009d79ee526e14d6788df972f` |
| 4 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--2ee0370354426627cfa9d57f.md) | 34 | `declaration-track:2ee0370354426627cfa9d57fd30975d356c7a539b803a0dc0067fb47a062066c` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--0098565c2f3baddf31a96371.md) | 41 | `declaration-track:0098565c2f3baddf31a963710eb55714d3f1cdfcfc34face88c7dda0495d9d49` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--57603dd5a5f55dacafa7464e.md) | 47 | `declaration-track:57603dd5a5f55dacafa7464eca5a5f9ea3c5c8ff3cfab85f40cf3f1986c1e34a` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--b62cf862d502ab15cc236b86.md) | 51 | `declaration-track:b62cf862d502ab15cc236b8689d5d569c0868d7b087e32d5457127ef9b8c4890` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--77cf3c1127338e89978dd673.md) | 55 | `declaration-track:77cf3c1127338e89978dd6738e6a93b8bb7710a962105d84056b4ce88791b58b` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean/declarations/example--2793ae21b8a532e517f4a029.md) | 60 | `declaration-track:2793ae21b8a532e517f4a029fd11218ae7a8a70ece172eb21f83f1f62b4e78cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
