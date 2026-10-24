# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1479fdc7ff37013535e9437fa63b55553397f9f5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1479fdc7ff37013535e9437fa63b55553397f9f5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_powerset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean/declarations/prod-powerset-insert--4088eb72a9f71478fe458a77.md) | 36 | `result-track:4088eb72a9f71478fe458a77cc3864594994b0cd3ca9ef82ebc62a6a1b132457` |
| 2 | `lemma` | [prod_powerset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean/declarations/prod-powerset-cons--c6e3e55f47ea128115a26700.md) | 47 | `result-track:c6e3e55f47ea128115a26700017389f19f14f647589cfdcf538f597b34a5251f` |
| 3 | `lemma` | [prod_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean/declarations/prod-powerset--cd49ba14ce9e431cd0f0ab1b.md) | 58 | `result-track:cd49ba14ce9e431cd0f0ab1b55a00bd277d945f6bf7867f7e98574c5976420a8` |
| 4 | `lemma` | [prod_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a.lean/declarations/prod-powersetcard--dc44e9fa55a0341733c1a6a6.md) | 65 | `result-track:dc44e9fa55a0341733c1a6a6dd842360c969665e90f62f721cf521a885bdcf8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
