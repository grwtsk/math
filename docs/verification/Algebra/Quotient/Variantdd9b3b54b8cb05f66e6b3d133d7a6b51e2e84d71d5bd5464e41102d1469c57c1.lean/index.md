# Verification target: GRWTSK.Algebra.Quotient.Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d29c31e3a77a677b8b7c4444042ee116485031ea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d29c31e3a77a677b8b7c4444042ee116485031ea`.

Source path: `GRWTSK/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Actions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [module_finite_of_liesOver](../../../../mathematics/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean/declarations/module-finite-of-liesover--610a01263709bd7858b521a9.md) | 27 | `declaration-track:610a01263709bd7858b521a9bc75cb2ebb2152f504c540ff2807c42b27bf642b` |
| 2 | `example` | [(anonymous)](../../../../mathematics/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean/declarations/example--d7c6fff860896610bfd4a233.md) | 30 | `declaration-track:d7c6fff860896610bfd4a23397478f411c850a95498dffff22113c3a2a2e33d6` |
| 3 | `instance` | [algebra_finiteType_of_liesOver](../../../../mathematics/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean/declarations/algebra-finitetype-of-liesover--744ef99d3bf3904727ee00a2.md) | 33 | `declaration-track:744ef99d3bf3904727ee00a2219964054a42e557fc32b964001850c15757c2e5` |
| 4 | `instance` | [isNoetherian_of_liesOver](../../../../mathematics/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean/declarations/isnoetherian-of-liesover--ba53e10c9809b97e8f457c56.md) | 38 | `declaration-track:ba53e10c9809b97e8f457c56a1f83ba8514be2f7c6d14d7ed0d45a3becd7c1ac` |
| 5 | `instance` | [QuotientMapQuotient.isNoetherian](../../../../mathematics/Algebra/Quotient/Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1.lean/declarations/quotientmapquotient-isnoetherian--54e51385ad75ffe83b60dcb7.md) | 41 | `declaration-track:54e51385ad75ffe83b60dcb7986d3f65f02af66f87e295fdf1600eafb6d5c09a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
