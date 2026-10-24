# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "440bd01778d6efb4593367cbff8b44e7ad4dec5b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `440bd01778d6efb4593367cbff8b44e7ad4dec5b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DifferentialObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/differentialobject--bbda7deb2fae6f4043eafbb2.md) | 39 | `declaration-track:bbda7deb2fae6f4043eafbb2474a0d09d503e98510bc21ba3de53ff39a446ca7` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/hom--1af7baa4b386869b7f5fa619.md) | 58 | `declaration-track:1af7baa4b386869b7f5fa619b8713390688682011a8904ff6f9e133ebb71ead5` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/id--a65c002859caf7959ec89b2f.md) | 70 | `declaration-track:a65c002859caf7959ec89b2fb0ec07febb33ee755e39e901d32c09dc7391dd68` |
| 4 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/comp--261ed4c9277796e70fc9e447.md) | 76 | `declaration-track:261ed4c9277796e70fc9e447646e27b83b6b45b99a3f37d8c1fe579fa93acf97` |
| 5 | `instance` | [categoryOfDifferentialObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/categoryofdifferentialobjects--da5074efeedc128b11bce873.md) | 82 | `declaration-track:da5074efeedc128b11bce8732439f889cf8962d2344db168f333533970c1e58e` |
| 6 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/ext--98aab5484e3d3b31fc26a892.md) | 90 | `result-track:98aab5484e3d3b31fc26a8925e2843bbed19db6757a68015e9f51c558354d3c1` |
| 7 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/id-f--618af6147952783eb6f82b1e.md) | 94 | `result-track:618af6147952783eb6f82b1edd76194592fa8cf229b110ec999a390f0237a7e6` |
| 8 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/comp-f--70d37ab38d400721048b01d6.md) | 98 | `result-track:70d37ab38d400721048b01d624830d9f348bcaf9df2a41efa070eeaf6bc32e18` |
| 9 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/eqtohom-f--b35b5319ec513dd83d4d25c5.md) | 104 | `result-track:b35b5319ec513dd83d4d25c508954c7dfdc38dbc287c8ac3312539844618ba09` |
| 10 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/forget--5f271426e22cc4f1dc567457.md) | 114 | `declaration-track:5f271426e22cc4f1dc5674571ab9af2d2dd216c19a06b0ad0b32619ee34454fd` |
| 11 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/forget-faithful--a29da193c8ec835d75adf721.md) | 119 | `declaration-track:a29da193c8ec835d75adf721384612125dc2aa32e22ef2ec6878abdf4fdd2d7d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/instance--c6fe1f218695a87b201838cd.md) | 124 | `declaration-track:c6fe1f218695a87b201838cd7af330a4fab4902d3d18a73801ec497b30c4d1af` |
| 13 | `theorem` | [zero_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/zero-f--89abbb1c050b40dee0658ef6.md) | 129 | `result-track:89abbb1c050b40dee0658ef69fae19b6d7579458706a2da2ebbfd0d53419c4a2` |
| 14 | `instance` | [hasZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/haszeromorphisms--adb69a353d52b991c06f3439.md) | 132 | `declaration-track:adb69a353d52b991c06f3439abb8f2fe28235bd24c1c0b7eebdb47760adb7465` |
| 15 | `def` | [isoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/isoapp--daca962c841fe2f0b3e1ca30.md) | 137 | `declaration-track:daca962c841fe2f0b3e1ca309674bcf1a9391f85fa42865dbb12a2b968df16af` |
| 16 | `theorem` | [isoApp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/isoapp-refl--0a7e6aa68ca74685e513e028.md) | 145 | `result-track:0a7e6aa68ca74685e513e028698ca89626bb6b52388fc8e5fee5d54d81e0bcc7` |
| 17 | `theorem` | [isoApp_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/isoapp-symm--9c6f0486328492fb3e7cdfeb.md) | 149 | `result-track:9c6f0486328492fb3e7cdfebd2d6001764b3ee4bc46d15cb97e9de5856b3c79d` |
| 18 | `theorem` | [isoApp_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/isoapp-trans--aa07268c0761b190d5f0b949.md) | 154 | `result-track:aa07268c0761b190d5f0b9491ea5c8657ad361fd1fcc96372ae483e836262891` |
| 19 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/mkiso--7ed6aba852261a57086049cf.md) | 161 | `declaration-track:7ed6aba852261a57086049cfa9537df751f5a2e3a586620703eb469e1e6a6226` |
| 20 | `def` | [mapDifferentialObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/mapdifferentialobject--003e09787326aaab2cfd3731.md) | 184 | `declaration-track:003e09787326aaab2cfd373195c594d12a6f572111a6abe65c6fadf3b9d62c10` |
| 21 | `instance` | [hasZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/haszeroobject--e4e2b8ec7e637b4a5614acee.md) | 222 | `declaration-track:e4e2b8ec7e637b4a5614acee5a80c900417ff09fd8e86f0333bf4669fbfc5118` |
| 22 | `instance` | [concreteCategoryOfDifferentialObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/concretecategoryofdifferentialobjects--977da3f849686e27653cb11d.md) | 238 | `declaration-track:977da3f849686e27653cb11dbd9677a2b5f8a764a4bc4c4387fa22afb800fe36` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/instance--6eb00b7df0b122df742ebc51.md) | 242 | `declaration-track:6eb00b7df0b122df742ebc519b47f97a94fb5c6fd4dc82db0dad96d449c2218f` |
| 24 | `def` | [shiftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/shiftfunctor--8d90b8c02e1762b3bc403ef1.md) | 260 | `declaration-track:8d90b8c02e1762b3bc403ef12df7fb83a3e732945d739c9a009645b1e8f23c43` |
| 25 | `def` | [shiftFunctorAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/shiftfunctoradd--9882b993c3d0d8a1a0ef1416.md) | 280 | `declaration-track:9882b993c3d0d8a1a0ef1416cff25bcb6871d2df09e89f5471f612dd7ef36d56` |
| 26 | `def` | [shiftZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/shiftzero--1133286878f4fffd66563642.md) | 298 | `declaration-track:1133286878f4fffd66563642ecfb1f04f659df082064d97231b998d4b142ee2b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variantae8a5bdd940ce7536e35f9bf8543112d48ee901712eb0f9f063a115f5aa95757.lean/declarations/instance--4b7989f776cceed72061ba11.md) | 308 | `declaration-track:4b7989f776cceed72061ba1125fd94789ab103ce808efa7faf4050199fbe47f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
