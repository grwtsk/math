# Verification target: GRWTSK.Algebra.LinearAlgebra.Small.Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e0ba852a905b3e7e4afd1795c763559468c1042",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e0ba852a905b3e7e4afd1795c763559468c1042`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Cardinality` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Small` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [small_sup](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/small-sup--5854e1edfcab95e450434f92.md) | 32 | `declaration-track:5854e1edfcab95e450434f925fcc9560583b0a18d338055451b95f43fc0c92f4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/instance--855c0a4beda38e5d9015f191.md) | 37 | `declaration-track:855c0a4beda38e5d9015f1917b1f949de93b3512d769b285f8cbf74217ae9b49` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/instance--3b24412123d500031c814c75.md) | 45 | `declaration-track:3b24412123d500031c814c75903f21ce74ec7fa0bc2d0c5ec297ff19965c5d68` |
| 4 | `instance` | [small_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/small-isup--57ddc3863d10f7e6251cd936.md) | 48 | `declaration-track:57ddc3863d10f7e6251cd936cad6edf6d17c964e319e4e44c060da712234e9a3` |
| 5 | `theorem` | [FG.small](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/fg-small--4abf887d4e781f53fc7d05bf.md) | 55 | `result-track:4abf887d4e781f53fc7d05bf07d9484a31b04f4db5889c2dd21e7c93a49578a6` |
| 6 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.FGSmall.Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.Module.Finite.small](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/root-grwtsk-algebra-linearalgebra-fgsmall-variantc3c347ba4287a97ace3925e--a8b758f8fb756fc06f9332d0.md) | 62 | `result-track:a8b758f8fb756fc06f9332d00f4dc744639b1e56c915bb6fe4d6a1b823f176c1` |
| 7 | `instance` | [small_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/small-span-singleton--476f0f817fdcf31c0c8efc9c.md) | 67 | `declaration-track:476f0f817fdcf31c0c8efc9c06cff78bb7324696ef096c87d2093170fa9a04bb` |
| 8 | `theorem` | [small_span](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/small-span--6ded6f1641eb92ab40661818.md) | 70 | `result-track:6ded6f1641eb92ab4066181837e938c072d2558fd14e1c29a3c28b1ed1a1b5ce` |
| 9 | `instance` | [small_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/small-adjoin--7c0113f9951831bb512f4248.md) | 85 | `declaration-track:7c0113f9951831bb512f42484e884ec436514c6ef21e5beed37743bb06a5436e` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.FGSmall.Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.Subalgebra.FG.small](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/root-grwtsk-algebra-linearalgebra-fgsmall-variantc3c347ba4287a97ace3925e--8058a13acea95dd49fecf526.md) | 90 | `result-track:8058a13acea95dd49fecf526ba9e2ecfc75877e50aeb2f3435b18f08c2b56619` |
| 11 | `theorem` | [FiniteType.small](../../../../../mathematics/Algebra/LinearAlgebra/Small/Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079.lean/declarations/finitetype-small--bc775b8727903f7a6c861d1c.md) | 95 | `result-track:bc775b8727903f7a6c861d1ccab7273bc68414d4a6870bd4c94b8056f2af3000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
