# Verification target: GRWTSK.NumberTheory.QuadraticReciprocity.Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93e1830904d1bbe68c5a4505ae1ab9aea5fb02ad",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93e1830904d1bbe68c5a4505ae1ab9aea5fb02ad`.

Source path: `GRWTSK/NumberTheory/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Zsqrtd.GaussianInt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/declarations/macro-rules--9e2f737a8d83acc299c7cd37.md) | 26 | `declaration-track:9e2f737a8d83acc299c7cd377bf8d7b806d1f0497f102516525185835039e274` |
| 2 | `theorem` | [mod_four_eq_three_of_nat_prime_of_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/declarations/mod-four-eq-three-of-nat-prime-of-prime--a59b3df256892850620a3ac9.md) | 34 | `result-track:a59b3df256892850620a3ac92f47e3aa6230cffd6e1ace254f800dc2a6f95f04` |
| 3 | `theorem` | [prime_of_nat_prime_of_mod_four_eq_three](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/declarations/prime-of-nat-prime-of-mod-four-eq-three--b9ed6f8284b503bbf267eb1a.md) | 87 | `result-track:b9ed6f8284b503bbf267eb1ab979909b883af56af879d2ed3f47f8a68f5c373f` |
| 4 | `theorem` | [prime_iff_mod_four_eq_three_of_nat_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/declarations/prime-iff-mod-four-eq-three-of-nat-prime--3e230bfd875ee286380b8adf.md) | 98 | `result-track:3e230bfd875ee286380b8adf0c8932884a42588a5f613800def6f3f6ad36b358` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
