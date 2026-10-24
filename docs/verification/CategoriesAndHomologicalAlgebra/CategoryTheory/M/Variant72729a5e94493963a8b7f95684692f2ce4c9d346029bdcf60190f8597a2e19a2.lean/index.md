# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.M.Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04078ab8aa21bbe7faa5a226b874842ca5a28995",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04078ab8aa21bbe7faa5a226b874842ca5a28995`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Univariate.M` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [M.Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-path--e80d05be863d953daecc6c47.md) | 68 | `declaration-track:e80d05be863d953daecc6c47e340fd4b9539e10a0e54ece752c4faeb7cfa9102` |
| 2 | `instance` | [M.Path.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-path-inhabited--0aeb1e2f7fc42502b9ad498b.md) | 83 | `declaration-track:0aeb1e2f7fc42502b9ad498b628e406a390d9f602f24917863110e3c89c91a0b` |
| 3 | `def` | [mp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/mp--e5616a98f5b2889f4538d352.md) | 98 | `declaration-track:e5616a98f5b2889f4538d352abd6afa71ebb510f1cfdb9057bc665e28a5be965` |
| 4 | `def` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m--4bc12c748a7e1b896d028b5c.md) | 103 | `declaration-track:4bc12c748a7e1b896d028b5cec51ff0331396b895476abaab67d47388e7f6e69` |
| 5 | `instance` | [mvfunctorM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/mvfunctorm--64bfef34e9b141d2ed9d39d0.md) | 106 | `declaration-track:64bfef34e9b141d2ed9d39d0891a5e988e4b85663495816f5326a61d28159a7f` |
| 6 | `instance` | [inhabitedM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/inhabitedm--46da12cd59149bb019fe6c05.md) | 108 | `declaration-track:46da12cd59149bb019fe6c0505ae228c161c1606ec9abf54e1c9f8e477432522` |
| 7 | `def` | [M.corecShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-corecshape--74294dc0901a778aa7631cb7.md) | 114 | `declaration-track:74294dc0901a778aa7631cb7009fdcd5964f357d1fc0ee3fe2b3a3e9e2c9d3bf` |
| 8 | `def` | [castDropB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/castdropb--8bc677dc25420fee242bc12c.md) | 119 | `declaration-track:8bc677dc25420fee242bc12cb5583994afe5e122ef5a840792241bc697b0f620` |
| 9 | `def` | [castLastB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/castlastb--2f93e5c5fb8184dc8ef43461.md) | 122 | `declaration-track:2f93e5c5fb8184dc8ef43461b3f6c91aa8a43eb126fd38ad269b58cc89a3eaae` |
| 10 | `def` | [M.corecContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-coreccontents--1c19b34ede6ebb2d910818b6.md) | 125 | `declaration-track:1c19b34ede6ebb2d910818b6c4682acad2280faa478dc60f8957aa2e80ab82d1` |
| 11 | `def` | [M.corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-corec--881b1913700783d4b85cd759.md) | 152 | `declaration-track:881b1913700783d4b85cd75907c67cc59a6ae6ba76ec183407bf49e925c8d09c` |
| 12 | `def` | [M.corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-corec--f84103d7465c496504ab5e5d.md) | 157 | `declaration-track:f84103d7465c496504ab5e5d1b86ff3725b4e1a3a127be8f606c674cef098f40` |
| 13 | `def` | [M.pathDestLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-pathdestleft--5fb2edaa7ace8c96c66510ab.md) | 161 | `declaration-track:5fb2edaa7ace8c96c66510abd020fb1c0f4ccc0c6c109e510607b6f31179e3e5` |
| 14 | `def` | [M.pathDestRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-pathdestright--109405f7de50e02eeb228f8c.md) | 166 | `declaration-track:109405f7de50e02eeb228f8cba6579073e727526979cdcf53e5a428a776f6524` |
| 15 | `def` | [M.dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-dest--47e411de0133b496228079d2.md) | 171 | `declaration-track:47e411de0133b496228079d2040aa70b9b6643d3fdf2a5419df4674adb700b6c` |
| 16 | `def` | [M.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-dest--3055e007e1936fb76ee74b00.md) | 176 | `declaration-track:3055e007e1936fb76ee74b00a1fd10e6f10cda51ac869c7139959ee4d6d31ede` |
| 17 | `def` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-mk--7f4045d75505279e1988473d.md) | 180 | `declaration-track:7f4045d75505279e1988473dbcc875cfc34d58e7b2a5d16744a62dfe727a584e` |
| 18 | `theorem` | [M.dest'_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-dest-eq-dest--15e4c4e316e835f27afe54c3.md) | 183 | `result-track:15e4c4e316e835f27afe54c3367a4bc2c76ce0257288c4350e7e7096074b085c` |
| 19 | `theorem` | [M.dest_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-dest-eq-dest--9dccbeaaaf717db14b58971f.md) | 188 | `result-track:9dccbeaaaf717db14b58971f357033ec8f26bb78f70d401b55bc51e26d182e9a` |
| 20 | `theorem` | [M.dest_corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-dest-corec--3fec24e63864f30b54e9280e.md) | 193 | `result-track:3fec24e63864f30b54e9280ef3f87f66732012c1554926981f321012630e8092` |
| 21 | `theorem` | [M.dest_corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-dest-corec--d1e871e7cc00e801a0d2db47.md) | 198 | `result-track:d1e871e7cc00e801a0d2db4760a539d0d7b0f23d45bfdc90687bafa9b8b2ebbb` |
| 22 | `theorem` | [M.bisim_lemma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-bisim-lemma--8239642330077dc9b6db897d.md) | 207 | `result-track:8239642330077dc9b6db897d40a72a2d5addbdd3b505fb53197978619eb86f96` |
| 23 | `theorem` | [M.bisim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-bisim--7af8ff6064188c800335157e.md) | 219 | `result-track:7af8ff6064188c800335157e34c30a13f489bf5ab1dbbdeb298725df0f7d5e87` |
| 24 | `theorem` | [M.bisim₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-bisim--7a2a003e4e9137d8af155bd8.md) | 253 | `result-track:7a2a003e4e9137d8af155bd812fc2ef5c2ba9fffa6d46164ccea8086c2bf2e90` |
| 25 | `theorem` | [M.bisim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-bisim--992ff9fb443769cb21ae7ef2.md) | 284 | `result-track:992ff9fb443769cb21ae7ef200b51684de5f20c27466fc5381efa6ccba93dedf` |
| 26 | `theorem` | [M.dest_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-dest-map--d0cae6e364bbf32d861a98bf.md) | 298 | `result-track:d0cae6e364bbf32d861a98bff40591b5eca75a60b139e11c0d9e01c957dd064b` |
| 27 | `theorem` | [M.map_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant72729a5e94493963a8b7f95684692f2ce4c9d346029bdcf60190f8597a2e19a2.lean/declarations/m-map-dest--b7d805de15594e3cdf99f676.md) | 307 | `result-track:b7d805de15594e3cdf99f67638ba2942e4ebfc9d1b48b37bf75e92987955ce71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
