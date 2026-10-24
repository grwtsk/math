# Verification target: GRWTSK.Algebra.LinearAlgebra.Cardinality.Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6215ea4a202d7311b6fcedb5836ddd3982e17043",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6215ea4a202d7311b6fcedb5836ddd3982e17043`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Cardinality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_fin'](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/declarations/exists-fin--571e568ef9898a70f2708b56.md) | 35 | `result-track:571e568ef9898a70f2708b566afb33a4e1f231462f31fe18c8921c2ed7c1d269` |
| 2 | `lemma` | [_root_.Module.finite_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/declarations/root-module-finite-of-finite--76298bdfca2fc625f57298d3.md) | 42 | `result-track:76298bdfca2fc625f57298d3ab59d58deea121e4c99027705cc77f58e8ff8a36` |
| 3 | `lemma` | [_root_.Module.finite_iff_finite](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/declarations/root-module-finite-iff-finite--1d2e3aeafc453166a65a9fb1.md) | 52 | `result-track:1d2e3aeafc453166a65a9fb1921b05aa8f15dad64c94eb3e25ccbb73aca51540` |
| 4 | `lemma` | [_root_.Set.Finite.submoduleSpan](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/declarations/root-set-finite-submodulespan--22ed06f0a7ba323ddaeb954b.md) | 56 | `result-track:22ed06f0a7ba323ddaeb954baf814d4a479316b450b45ce47750d41d5760f14a` |
| 5 | `lemma` | [finite_basis](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/declarations/finite-basis--6b101d54d0c7008f075f92e9.md) | 64 | `result-track:6b101d54d0c7008f075f92e9a81a5bbf2eeeb36555cfc10471006af2e2c49a8e` |
| 6 | `lemma` | [not_finite_of_infinite_basis](../../../../../mathematics/Algebra/LinearAlgebra/Cardinality/Variant2e8ad0e93fd74b59cfec4e33b12b3853a89855ac26ca0b367c6c4c3161132a9f.lean/declarations/not-finite-of-infinite-basis--c570f7dddb664130ad26d004.md) | 73 | `result-track:c570f7dddb664130ad26d0048535d6594839e902bc2af749e1ba569f9712c2dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
