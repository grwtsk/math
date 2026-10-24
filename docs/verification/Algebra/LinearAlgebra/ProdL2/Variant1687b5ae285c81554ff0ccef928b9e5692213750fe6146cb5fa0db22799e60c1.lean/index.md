# Verification target: GRWTSK.Algebra.LinearAlgebra.ProdL2.Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "710a62c035075773d70fbada4f3a914b1cfd9b85",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `710a62c035075773d70fbada4f3a914b1cfd9b85`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.ProdLp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instProdInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean/declarations/instprodinnerproductspace--4128faef94894fb7528b01b5.md) | 28 | `declaration-track:4128faef94894fb7528b01b526a45d55884cffa2b152ed0dada6cc7b12f24117` |
| 2 | `theorem` | [prod_inner_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean/declarations/prod-inner-apply--d8d3cc7348f57dfb57d0a78d.md) | 45 | `result-track:d8d3cc7348f57dfb57d0a78d7cc1cec26a7876dbe94f3c2250023170c4b934eb` |
| 3 | `def` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean/declarations/prod--3bb9bb5625527345ac48a12b.md) | 56 | `declaration-track:3bb9bb5625527345ac48a12b0284221a8ba2df25bbd54ed56b8d79b15bb27032` |
| 4 | `theorem` | [prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/ProdL2/Variant1687b5ae285c81554ff0ccef928b9e5692213750fe6146cb5fa0db22799e60c1.lean/declarations/prod-apply--e11d68f36c569b940b06f92e.md) | 72 | `result-track:e11d68f36c569b940b06f92ee6efe4f3536aefe908e0f61213b256e89f797cc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
