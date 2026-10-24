# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ad227d489a19dc368c9a53ad8a25da0f3abc8ad",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ad227d489a19dc368c9a53ad8a25da0f3abc8ad`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_closure_setOf_eq_single](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean/declarations/add-closure-setof-eq-single--a806de8d2753a22217a7ec87.md) | 29 | `result-track:a806de8d2753a22217a7ec87fdbefa5b4e0754203025d23e83f5fb72878d7a7b` |
| 2 | `theorem` | [addHom_ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean/declarations/addhom-ext--d551e8a08fae1940c4ed45ef.md) | 37 | `result-track:d551e8a08fae1940c4ed45ef36a08292ba16cbba4d4fc42b459bf69fbf01c820` |
| 3 | `theorem` | [addHom_ext'](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean/declarations/addhom-ext--55b7e0bffa8c767f692b78a9.md) | 50 | `result-track:55b7e0bffa8c767f692b78a963fcd4588646151f7ca4d00314914fd830e3d96d` |
| 4 | `theorem` | [mulHom_ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean/declarations/mulhom-ext--5fda4ae2212e4dc38f92b2ff.md) | 54 | `result-track:5fda4ae2212e4dc38f92b2ff29733303423914ea4ed511472e9670856097ea67` |
| 5 | `theorem` | [mulHom_ext'](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantc73ae2ce92ea029cf47b8c9d66d538cc6c458a044c33fb4e7c308da0d17ff9a2.lean/declarations/mulhom-ext--eea7faf5c47bad64a42a4fad.md) | 66 | `result-track:eea7faf5c47bad64a42a4fad257b6aedf2ff21d1a7b5c3a2ee1c7e686d1f2eaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
