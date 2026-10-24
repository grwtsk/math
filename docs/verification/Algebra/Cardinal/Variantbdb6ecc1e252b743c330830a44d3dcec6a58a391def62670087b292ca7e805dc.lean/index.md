# Verification target: GRWTSK.Algebra.Cardinal.Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09b4c9e178b8c24638b95a9fc35461599bd54d9b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09b4c9e178b8c24638b95a9fc35461599bd54d9b`.

Source path: `GRWTSK/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_max_lift](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/declarations/cardinalmk-eq-max-lift--6d8ec235200ec0a89fb34fb1.md) | 30 | `result-track:6d8ec235200ec0a89fb34fb165dc94709a543768d7202a94769d524783485df3` |
| 2 | `theorem` | [cardinalMk_eq_lift](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/declarations/cardinalmk-eq-lift--628666eecb575201c515d432.md) | 38 | `result-track:628666eecb575201c515d432ac34179503535fe8052d12cd9c9aa68c5ec643a6` |
| 3 | `theorem` | [cardinalMk_eq_one](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/declarations/cardinalmk-eq-one--a619747588c8f0e39602c9e5.md) | 44 | `result-track:a619747588c8f0e39602c9e51a4af459ffc638eb53d8bee77d73f240b527391b` |
| 4 | `theorem` | [cardinalMk_le_max_lift](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/declarations/cardinalmk-le-max-lift--1e97959a5232a4008cf2d10a.md) | 46 | `result-track:1e97959a5232a4008cf2d10a45e1a5c69a31cab8bf428d943d2297354313b61d` |
| 5 | `theorem` | [cardinalMk_eq_max](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/declarations/cardinalmk-eq-max--6ff20c1051a47a012a348b86.md) | 60 | `result-track:6ff20c1051a47a012a348b860e3fee8e0902404b80d06b5bb9959f4d67052336` |
| 6 | `theorem` | [cardinalMk_eq](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/declarations/cardinalmk-eq--390f3fdba4ba1a9c8a9a0c0f.md) | 65 | `result-track:390f3fdba4ba1a9c8a9a0c0f04c9bf9c9ebe44afc62002b759b96b1a3ef5d15d` |
| 7 | `theorem` | [cardinalMk_le_max](../../../../mathematics/Algebra/Cardinal/Variantbdb6ecc1e252b743c330830a44d3dcec6a58a391def62670087b292ca7e805dc.lean/declarations/cardinalmk-le-max--6d64fe2e357475f15f45655e.md) | 69 | `result-track:6d64fe2e357475f15f45655e94bb9da1cd6ae9321a131a322e48c67e2020b183` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
