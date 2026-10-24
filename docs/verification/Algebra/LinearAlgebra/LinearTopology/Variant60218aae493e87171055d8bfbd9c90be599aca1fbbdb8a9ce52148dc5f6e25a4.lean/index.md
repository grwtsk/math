# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearTopology.Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5313a8e6457068eea2a9572a5043485721efa90d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5313a8e6457068eea2a9572a5043485721efa90d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.PiTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.LinearTopology` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/basis--1e1999233aeb7119d478863f.md) | 57 | `declaration-track:1e1999233aeb7119d478863f493556bacac5a0290ed21ff09faeec1a346e77a1` |
| 2 | `theorem` | [mem_basis_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/mem-basis-iff--ca71bce21a5dbe3e2e6d4e43.md) | 80 | `result-track:ca71bce21a5dbe3e2e6d4e43855a52e0a85e4b9766dc1b396f78312078726d55` |
| 3 | `theorem` | [basis_le](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/basis-le--69541e9d45caab0be1144e0d.md) | 86 | `result-track:69541e9d45caab0be1144e0d626d55f4cac9a1f81462916b2c112cb56882d194` |
| 4 | `theorem` | [basis_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/basis-le-iff--13bb8bbc67c1abbae49f920c.md) | 91 | `result-track:13bb8bbc67c1abbae49f920c2ee83ca6cda3899a3f6bd918f440dfd988fc9ce7` |
| 5 | `lemma` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/hasbasis-nhds-zero--19967341ad6140becd42e97c.md) | 121 | `result-track:19967341ad6140becd42e97c69e48b2659dd0eff1d81548dc39816cbd2bd8a14` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/instance--d9a6156ff9e42a5c3f69ca00.md) | 138 | `declaration-track:d9a6156ff9e42a5c3f69ca006b8394089493499bd83b0b6164cd2c1fb98ce7de` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/instance--16eb6c59e5772013ae4840bd.md) | 144 | `declaration-track:16eb6c59e5772013ae4840bdb8bdca8b301770313c4f9db7dee3bfff277a957a` |
| 8 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/istopologicallynilpotent-of-constantcoeff--f69a531a2e1c8cd778772565.md) | 148 | `result-track:f69a531a2e1c8cd77877256565a3078a82befbad8ff3fb1ded4488d1570b588d` |
| 9 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff](../../../../../mathematics/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/declarations/istopologicallynilpotent-iff-constantcoeff--821621649d0999149fd6a88c.md) | 167 | `result-track:821621649d0999149fd6a88c4e237950e74e75fff32e809b505cd054e9964304` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
