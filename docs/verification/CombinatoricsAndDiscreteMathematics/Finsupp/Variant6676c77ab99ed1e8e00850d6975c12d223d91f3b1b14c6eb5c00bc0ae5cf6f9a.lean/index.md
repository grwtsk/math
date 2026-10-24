# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93078ae00f8a508a1eaeaed11d39e46aecf90621",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93078ae00f8a508a1eaeaed11d39e46aecf90621`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Indicator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/declarations/finsupp--4ad1d44d69fadae1c27c3aeb.md) | 50 | `declaration-track:4ad1d44d69fadae1c27c3aeb8f67e1b9ca0bd4ae059b66037d3f585ed688001f` |
| 2 | `theorem` | [mem_finsupp_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/declarations/mem-finsupp-iff--bc2dd677cc18d28688c4708d.md) | 53 | `result-track:bc2dd677cc18d28688c4708d710ac2077bd4ab3de3004beeee82e04f7ef9be3d` |
| 3 | `theorem` | [mem_finsupp_iff_of_support_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/declarations/mem-finsupp-iff-of-support-subset--c9409564cd7b4d6d08f5d49c.md) | 67 | `result-track:c9409564cd7b4d6d08f5d49c27680930e3338db4aaf68dbd5eafebd9d6c4184a` |
| 4 | `theorem` | [card_finsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/declarations/card-finsupp--cc7c79da31f6910ccf77f48d.md) | 82 | `result-track:cc7c79da31f6910ccf77f48dd57ba4a4ede485d1f86a105badc1b4e9b68b0b0b` |
| 5 | `def` | [pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/declarations/pi--1740e74a4f1b135b5c6135d0.md) | 93 | `declaration-track:1740e74a4f1b135b5c6135d0cae5ed87e6ddeee5d3df480cbdb6f74b8c343bf1` |
| 6 | `theorem` | [mem_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/declarations/mem-pi--cb1f186a696d955bb73db92e.md) | 97 | `result-track:cb1f186a696d955bb73db92e87cfb486aadbb8112730cf20c97289985870960f` |
| 7 | `theorem` | [card_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant6676c77ab99ed1e8e00850d6975c12d223d91f3b1b14c6eb5c00bc0ae5cf6f9a.lean/declarations/card-pi--507c8d3589f6b237d30cb97a.md) | 101 | `result-track:507c8d3589f6b237d30cb97a946a66fc5a3bb8c293601145445f90bc86823089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
