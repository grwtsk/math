# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "086b745eba00995647fc75d93dd55887c364c641",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `086b745eba00995647fc75d93dd55887c364c641`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.ZeroCons` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Directed.finset_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf.lean/declarations/directed-finset-le--435cf19de04085bf5651a3ab.md) | 27 | `result-track:435cf19de04085bf5651a3abb047c4e89ce79449b670eb1ce83ecd5fb377695c` |
| 2 | `theorem` | [Finset.exists_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variantdf89902178a11dd994687ef7aa1a19625542fe2e6003accba495cddada80b3cf.lean/declarations/finset-exists-le--b38e04e7fe368c935d5bb4d5.md) | 36 | `result-track:b38e04e7fe368c935d5bb4d534a78d05d3038046c44d04c7229c5ec1d2871d60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
