# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec019f819e2b5f5984fe580d1b136a2a7632cdb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec019f819e2b5f5984fe580d1b136a2a7632cdb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [precoherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/precoherent--4701a0ec17975b32a2581a5b.md) | 39 | `result-track:4701a0ec17975b32a2581a5bbb9f8e7393322fc44fdf0691a6497e0d8deb49bd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/instance--8066d6a6bb68521f3b2f624e.md) | 41 | `declaration-track:8066d6a6bb68521f3b2f624ec50bbd73dbc821b4fb0abc6fa197dc8fe34474ba` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/instance--d1fdea0f3a8016b4d1350609.md) | 44 | `declaration-track:d1fdea0f3a8016b4d1350609d7af6d832336835f6353096a60df5450f5b954e8` |
| 4 | `def` | [sheafCongrPrecoherent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/sheafcongrprecoherent--7de3c9478244925c0c85f43f.md) | 56 | `declaration-track:7de3c9478244925c0c85f43fb8bf564f02592f569a5d49cbae30b00c26ee785d` |
| 5 | `theorem` | [precoherent_isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/precoherent-issheaf-iff--6de2c30974b035d7be03560b.md) | 64 | `result-track:6de2c30974b035d7be03560b45018b1d9607f5c881e8f869c7f57103cc6a05fb` |
| 6 | `theorem` | [precoherent_isSheaf_iff_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/precoherent-issheaf-iff-of-essentiallysmall--3ea58a253b65ed25deb5177e.md) | 75 | `result-track:3ea58a253b65ed25deb5177e922058359f3b31d0fd7c6a09547e3f897b57983f` |
| 7 | `theorem` | [preregular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/preregular--16d84eb8e29c28d0bdc8a2a0.md) | 87 | `result-track:16d84eb8e29c28d0bdc8a2a08319505f3ddd539d23494d7769ea67dfc9423b1c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/instance--745c586dd47ac19950d41ca9.md) | 89 | `declaration-track:745c586dd47ac19950d41ca95e0e6fe4dca12270844312b8d71f81893e6989e0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/instance--8952c53b15ad3529d9bc89de.md) | 92 | `declaration-track:8952c53b15ad3529d9bc89de0eaa31d5bd428ed0d242b90716b1e4cf5b01d181` |
| 10 | `def` | [sheafCongrPreregular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/sheafcongrpreregular--3341bd96555948ed262f3857.md) | 104 | `declaration-track:3341bd96555948ed262f385778eaba44e2743fa2efc39999b0d176604a0651b4` |
| 11 | `theorem` | [preregular_isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/preregular-issheaf-iff--057dbc271a099c6f11d22ba7.md) | 112 | `result-track:057dbc271a099c6f11d22ba7acbf682e8b38582afe6140ef744ae4ff589a4dcf` |
| 12 | `theorem` | [preregular_isSheaf_iff_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variante4c0d6429118452aaa2dc2808926a10cea44d52dd83690e5a5a6ffdba689baf3.lean/declarations/preregular-issheaf-iff-of-essentiallysmall--bd064042267e1fefef291e76.md) | 123 | `result-track:bd064042267e1fefef291e76a1c6b817ba3c0c45d24d1d70fbec385a0f2006c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
