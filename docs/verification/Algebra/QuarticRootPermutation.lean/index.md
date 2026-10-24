# Verification target: GRWTSK.Algebra.QuarticRootPermutation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05d06e83f90b1ba2e3a1d6160db9a7ae2971cd9b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticRootPermutation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticRootPermutation.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticRootPermutation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05d06e83f90b1ba2e3a1d6160db9a7ae2971cd9b`.

Source path: `GRWTSK/Algebra/QuarticRootPermutation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticRootPermutation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticAutomorphismAction`](../../../mathematics/Algebra/QuarticAutomorphismAction.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AllAutomorphismsPreserveRoots](../../../mathematics/Algebra/QuarticRootPermutation.lean/declarations/allautomorphismspreserveroots--b0d6ed10ba0ce8b61c49c5b1.md) | 25 | `declaration-track:b0d6ed10ba0ce8b61c49c5b1be66c88d65400ae852879505a663e503674da343` |
| 2 | `theorem` | [root_permutation_unique](../../../mathematics/Algebra/QuarticRootPermutation.lean/declarations/root-permutation-unique--08b500b1be9bcc5ab2cf9c61.md) | 31 | `result-track:08b500b1be9bcc5ab2cf9c6195e9103797778ec2bc4ddc3193b487d6bc3e5147` |
| 3 | `def` | [rootPerm](../../../mathematics/Algebra/QuarticRootPermutation.lean/declarations/rootperm--43692b696c68ad4c5fe34fcb.md) | 42 | `declaration-track:43692b696c68ad4c5fe34fcb1e319f843d3b75421cc603e61f61de64ec2c632f` |
| 4 | `theorem` | [rootPerm_spec](../../../mathematics/Algebra/QuarticRootPermutation.lean/declarations/rootperm-spec--5f9c3300f75a1ea4e3892dd7.md) | 48 | `result-track:5f9c3300f75a1ea4e3892dd7fe4754128a52758a99943a364d100936a065b876` |
| 5 | `def` | [rootPermutationHom](../../../mathematics/Algebra/QuarticRootPermutation.lean/declarations/rootpermutationhom--868bf0499b660aa04500d32b.md) | 58 | `declaration-track:868bf0499b660aa04500d32bc518e724ebd2903e50cadcf98e0dceb112c0db8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
