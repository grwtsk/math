# Verification target: GRWTSK.Algebra.GrothendieckGroup.Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f4499a5ad497ffe9d3a85fc8c6a4b0a7e41bfb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/index.md) · [Full source](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f4499a5ad497ffe9d3a85fc8c6a4b0a7e41bfb`.

Source path: `GRWTSK/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GrothendieckGroup](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/grothendieckgroup--921dfa3da759e893c07383fe.md) | 40 | `declaration-track:921dfa3da759e893c07383fede089714c66a6118b557b6b80cd71ad38e187284` |
| 2 | `abbrev` | [of](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/of--59313fa5088541d093134e0e.md) | 51 | `declaration-track:59313fa5088541d093134e0ee18ca293fa9b1833f792b6628ce20b7a98b5267c` |
| 3 | `lemma` | [of_injective](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/of-injective--6305fc6200b0fc0e73763999.md) | 54 | `result-track:6305fc6200b0fc0e7376399905c66c6bb22d4b092aa47599e148a5b33b686014` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/instance--b9a7a95b2a3cf681faddc1ce.md) | 58 | `declaration-track:b9a7a95b2a3cf681faddc1ce7d3ea8663891b257114ef142fa5b6de6746efdc7` |
| 5 | `lemma` | [inv_mk](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/inv-mk--b0f1c8a33c5d4a6204991c4c.md) | 63 | `result-track:b0f1c8a33c5d4a6204991c4c7f52c95cdc24e97164694a33bc2c3a39ca6a139b` |
| 6 | `instance` | [instCommGroup](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/instcommgroup--167c028c7e4ce4176e40ac6d.md) | 67 | `declaration-track:167c028c7e4ce4176e40ac6dce97aff302c3f50abae420bc9ef03a933a193861` |
| 7 | `lemma` | [mk_div_mk](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/mk-div-mk--18a7e35bcb883fa3568d7098.md) | 76 | `result-track:18a7e35bcb883fa3568d7098871851e4f86d7750e610cc3e12e3ba9665c08b07` |
| 8 | `def` | [lift](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/lift--4b416f34f8d9486ecfc72dbe.md) | 85 | `declaration-track:4b416f34f8d9486ecfc72dbed30fbc6802bbc9fd3d6914ce53bb211232f09462` |
| 9 | `lemma` | [lift_apply](../../../../mathematics/Algebra/GrothendieckGroup/Variantbb5c3b206e615e4d097050be1fbefe22178b0564b6dcf3496c7ebfc87055ef36.lean/declarations/lift-apply--ab188c65e4fcf47346c7de17.md) | 92 | `result-track:ab188c65e4fcf47346c7de17d5a5c0029213312f7fda119a922eaeade1e2ac04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
