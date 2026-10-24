# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicTopology.Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1139d116aa17218eb55e59ff6d14277f4d0dc8b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1139d116aa17218eb55e59ff6d14277f4d0dc8b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/adic-basis--11f9e4b8548b06001ea9fb78.md) | 55 | `result-track:11f9e4b8548b06001ea9fb78920309e8e34e66f36566d0fbacc0e2d14a0882d4` |
| 2 | `def` | [ringFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/ringfilterbasis--185ef51fe0b6f15fccfab82c.md) | 78 | `declaration-track:185ef51fe0b6f15fccfab82c2ea88bd90936f637a47e9a73565989d23d9daaf7` |
| 3 | `def` | [adicTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/adictopology--e27833c6c6dd28e7b73e0997.md) | 84 | `declaration-track:e27833c6c6dd28e7b73e0997b375a5542bdb1537e08322a5f64b737922bf55bd` |
| 4 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/nonarchimedean--b14b6180eb8001e703965c1b.md) | 88 | `result-track:b14b6180eb8001e703965c1b80373e7062e4f1e7f44b1371e62a7dcae44c28e5` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/hasbasis-nhds-zero-adic--76dd75e62be1561b71f0592f.md) | 93 | `result-track:76dd75e62be1561b71f0592fdf2380ffde4758c5c111779343f79c07df4186ce` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/hasbasis-nhds-adic--39eec27a11e954fc375221a7.md) | 107 | `result-track:39eec27a11e954fc375221a771e291bf7abbb83acea2c743bdad5067c065f1a3` |
| 7 | `theorem` | [adic_module_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/adic-module-basis--8b5287b15948cb19ed1bbfe6.md) | 117 | `result-track:8b5287b15948cb19ed1bbfe69e6d5ea441023676738153feee01088b824eaa6f` |
| 8 | `def` | [adicModuleTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/adicmoduletopology--17bb57c35192f3b1d5d7d8b1.md) | 132 | `declaration-track:17bb57c35192f3b1d5d7d8b12e0d53c68b71687d799ca409699f567274dc3ce9` |
| 9 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/openaddsubgroup--40e94c8e01a65985cd00e276.md) | 139 | `declaration-track:40e94c8e01a65985cd00e2765498a776008af5b1b2c20399b59826e6c9832953` |
| 10 | `def` | [IsAdic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/isadic--2c07acfdfd2bc742887c5cde.md) | 153 | `declaration-track:2c07acfdfd2bc742887c5cde91f997a959ef8473b9474718576ab169c20beac9` |
| 11 | `theorem` | [isAdic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/isadic-iff--520d1d88b4f9ca8b0aa9cd9a.md) | 159 | `result-track:520d1d88b4f9ca8b0aa9cd9a3bb5ca99d51990c3e86bd42704dbd1a8c386b31c` |
| 12 | `theorem` | [is_ideal_adic_pow](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/is-ideal-adic-pow--d2a96d9768113d7d6f2e7e31.md) | 190 | `result-track:d2a96d9768113d7d6f2e7e3119087abec54ccff1d660b85ab0bafbb2a39d5b15` |
| 13 | `theorem` | [is_bot_adic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/is-bot-adic-iff--1861d518b8955f607f925778.md) | 208 | `result-track:1861d518b8955f607f9257787a032ed83a6aace5e1c64f00f0d9da9965c7c2f6` |
| 14 | `class` | [WithIdeal](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/withideal--39d8e3ba85d2660d73e4dd98.md) | 226 | `declaration-track:39d8e3ba85d2660d73e4dd9880de4ffd9e00e756bbac76e89398a40c33e0ab71` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/instance--5a25214d6f36021683bc7d94.md) | 236 | `declaration-track:5a25214d6f36021683bc7d94ab2fd3870a6d12c4de4f390d4f9c53decc32dd38` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/instance--fe268f132a5bd1fc8b1b5214.md) | 239 | `declaration-track:fe268f132a5bd1fc8b1b521499edf2a87418224c5a89781a1b6389c9405fd2a3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/instance--e2ac01208fd135b71490e5b3.md) | 242 | `declaration-track:e2ac01208fd135b71490e5b38188d70fa2de06f52651b45f46a2d966fcc39ef0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/instance--b7765fdd1f88569f2e82b33d.md) | 245 | `declaration-track:b7765fdd1f88569f2e82b33d85208fb9938ffd3d0cfcb7ab791e1d4c20d7b384` |
| 19 | `def` | [topologicalSpaceModule](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/topologicalspacemodule--0a2bb9a582047444ab68f215.md) | 250 | `declaration-track:0a2bb9a582047444ab68f215d496853e5ed0c6957867c80c72b47de2e6d460fc` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/example--cb55e6c01b2af611b7898eac.md) | 258 | `declaration-track:cb55e6c01b2af611b7898eaca3b99ae5f8dac141b4c2ebde6df038681c1bb5eb` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/example--97bf9ee737eb52c6bd905cb7.md) | 260 | `declaration-track:97bf9ee737eb52c6bd905cb71efc67184c3f722be9527635e432c6028655dcda` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/example--e074f77ecdefa56c09c2d610.md) | 262 | `declaration-track:e074f77ecdefa56c09c2d610efc550225d7295afd6c3eea83c1c9b1e9dce818e` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/example--d134dd242d57a217da94e7e4.md) | 265 | `declaration-track:d134dd242d57a217da94e7e46578eae60e64e9b1a595060d87f3eeee956b3142` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/declarations/example--1d9627560d35017e946ba506.md) | 268 | `declaration-track:1d9627560d35017e946ba50604731e509c35bb0df40394e64b409725c019766b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
