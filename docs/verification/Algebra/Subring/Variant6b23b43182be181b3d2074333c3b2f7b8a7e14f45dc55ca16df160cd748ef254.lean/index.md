# Verification target: GRWTSK.Algebra.Subring.Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e08329fed6991d38c61e317762856ab115ddd96",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e08329fed6991d38c61e317762856ab115ddd96`.

Source path: `GRWTSK/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_injective](../../../../mathematics/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean/declarations/of-injective--31ce88bdb69863d438b49046.md) | 24 | `result-track:31ce88bdb69863d438b4904665a9b7ea45558e757ff19b1cd0a65be5d2bd5c2e` |
| 2 | `theorem` | [of_subring](../../../../mathematics/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean/declarations/of-subring--f824ac09b6b8b1614ef8cf18.md) | 33 | `result-track:f824ac09b6b8b1614ef8cf180f17096d55ddfb55c14575e743fa7e017340f109` |
| 3 | `theorem` | [of_subring'](../../../../mathematics/Algebra/Subring/Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254.lean/declarations/of-subring--b4536dc2bffd786663260145.md) | 40 | `result-track:b4536dc2bffd786663260145eb991934ca7764acca943b4a7f0134f36ca9eaf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
