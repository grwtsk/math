# Verification target: GRWTSK.Algebra.UniversalAlgebra.TypeTags.Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d071c333a0c932b06ba7354ff4a850c50afed55",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d071c333a0c932b06ba7354ff4a850c50afed55`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.TypeTags` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Multiplicative.isOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/declarations/multiplicative-isorderedmonoid--363fd6e7f4e9049d45eade12.md) | 13 | `declaration-track:363fd6e7f4e9049d45eade1285754f8ec2b5f240c5162348ffc560f7b0f7c4ce` |
| 2 | `instance` | [Additive.isOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/declarations/additive-isorderedaddmonoid--9bf1da02f430c8819d605d48.md) | 17 | `declaration-track:9bf1da02f430c8819d605d48e95209ad59a9ece89361fccefe72e2b0b3d7e596` |
| 3 | `instance` | [Multiplicative.isOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/declarations/multiplicative-isorderedcancelmonoid--591f6eee844e871a51a993ee.md) | 21 | `declaration-track:591f6eee844e871a51a993ee476fbf5a385aa2f218dd3e7b5a67923439820db2` |
| 4 | `instance` | [Additive.isOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/declarations/additive-isorderedcanceladdmonoid--06028a725e900addf67c6bf7.md) | 26 | `declaration-track:06028a725e900addf67c6bf743f6cb5882c60f5df2ce40625142de5898d9e726` |
| 5 | `instance` | [Multiplicative.canonicallyOrderedMul](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/declarations/multiplicative-canonicallyorderedmul--420fdcdffd88954c30f61829.md) | 31 | `declaration-track:420fdcdffd88954c30f618295b7ccd07ef4e365872925c463e910b70a2450e72` |
| 6 | `instance` | [Additive.canonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/TypeTags/Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2.lean/declarations/additive-canonicallyorderedadd--7f6f8405da5a6b3632b1d4e4.md) | 36 | `declaration-track:7f6f8405da5a6b3632b1d4e429def363ea4792c84c0d5505421bcc149ba69c07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
