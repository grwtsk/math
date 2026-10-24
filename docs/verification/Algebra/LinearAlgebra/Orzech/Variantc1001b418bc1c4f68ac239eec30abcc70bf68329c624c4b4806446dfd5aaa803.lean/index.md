# Verification target: GRWTSK.Algebra.LinearAlgebra.Orzech.Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a17cf72890811e7dafab99fd6830433694839fa7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a17cf72890811e7dafab99fd6830433694839fa7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.IterateMapComap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PartialSups` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OrzechProperty` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsNoetherian.injective_of_surjective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/declarations/isnoetherian-injective-of-surjective-of-injective--ee2474449ec16d45fcd5aead.md) | 48 | `result-track:ee2474449ec16d45fcd5aead4cc33cf617818ecfc94be0c0051c86cba86b45de` |
| 2 | `theorem` | [IsNoetherian.injective_of_surjective_of_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/declarations/isnoetherian-injective-of-surjective-of-submodule--fefd1c12d2098e88addf0e16.md) | 59 | `result-track:fefd1c12d2098e88addf0e16575e8df0be55211348826b9eb9009a7b923b1151` |
| 3 | `theorem` | [IsNoetherian.injective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/declarations/isnoetherian-injective-of-surjective-endomorphism--40becb6c9ca11c1ee10d525b.md) | 64 | `result-track:40becb6c9ca11c1ee10d525b3bedd11782590d9960f5354e5f7cb5aa812c35d0` |
| 4 | `theorem` | [IsNoetherian.bijective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/declarations/isnoetherian-bijective-of-surjective-endomorphism--159c72fb45e17680bc40a932.md) | 69 | `result-track:159c72fb45e17680bc40a932499873c09e003e8f32237992c4d207f1809973b6` |
| 5 | `theorem` | [IsNoetherian.subsingleton_of_prod_injective](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/declarations/isnoetherian-subsingleton-of-prod-injective--12055ef3dada12320f679364.md) | 74 | `result-track:12055ef3dada12320f679364b535af8bf19d47fb093b0613149978996c49b5b3` |
| 6 | `def` | [IsNoetherian.equivPUnitOfProdInjective](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/declarations/isnoetherian-equivpunitofprodinjective--b1dfa1168485e6fe870ccf91.md) | 81 | `declaration-track:b1dfa1168485e6fe870ccf91cca851b539283d8a63d5fe4886981f80b21f8f44` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orzech/Variantc1001b418bc1c4f68ac239eec30abcc70bf68329c624c4b4806446dfd5aaa803.lean/declarations/instance--3122431ca9278c8127b9e42d.md) | 91 | `declaration-track:3122431ca9278c8127b9e42de7c6d862e1a1c2fc246ebceb093964ce6b939207` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
