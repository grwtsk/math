# Verification target: GRWTSK.Algebra.GroupTheory.Goursat.Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf5b9832aeba6537a871ac9953fe87d0734bbfc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf5b9832aeba6537a871ac9953fe87d0734bbfc`.

Source path: `GRWTSK/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Graph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goursatFst](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/goursatfst--d71fc2d1f34d6af81e9d5c8b.md) | 47 | `declaration-track:d71fc2d1f34d6af81e9d5c8bb33aa0e3ac99e99b0c7ee0c8c05241a9675a017c` |
| 2 | `def` | [goursatSnd](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/goursatsnd--6a54f184f6e0df223279b3a8.md) | 60 | `declaration-track:6a54f184f6e0df223279b3a8a3c5a31eecd6f4e07b1ff6014a4ee44297177690` |
| 3 | `lemma` | [mem_goursatFst](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/mem-goursatfst--74ad173b5e2d47b0e3630285.md) | 64 | `result-track:74ad173b5e2d47b0e36302857ccf77dd89f1b41f75c84075d72a9ab55a22eb94` |
| 4 | `lemma` | [mem_goursatSnd](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/mem-goursatsnd--9f8c1bd3864da5a4d7fce3e1.md) | 67 | `result-track:9f8c1bd3864da5a4d7fce3e18b1a619b1af755acb4424e1349a6128907609341` |
| 5 | `lemma` | [normal_goursatFst](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/normal-goursatfst--ef8779989415921e0bebfb18.md) | 70 | `result-track:ef8779989415921e0bebfb18bacf5cc5f1416e24fdc385922e7625d1aa4d9634` |
| 6 | `lemma` | [normal_goursatSnd](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/normal-goursatsnd--d5f06149d296760fb61cfe8d.md) | 73 | `result-track:d5f06149d296760fb61cfe8debc71c5a0a295ba284380917fb817ecae40c14e8` |
| 7 | `lemma` | [mk_goursatFst_eq_iff_mk_goursatSnd_eq](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/mk-goursatfst-eq-iff-mk-goursatsnd-eq--480ad205893e0bd745f6657f.md) | 77 | `result-track:480ad205893e0bd745f6657f86bcc57ca4ba27f6b5f0b358cf0a4add0ef226b4` |
| 8 | `lemma` | [goursatFst_prod_goursatSnd_le](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/goursatfst-prod-goursatsnd-le--4e5199944f807423a4fb80db.md) | 89 | `result-track:4e5199944f807423a4fb80db707f3a1f65841a7297e085c4ebe0add85d444d87` |
| 9 | `lemma` | [goursat_surjective](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/goursat-surjective--973531513e0890ccc6aa1dc7.md) | 108 | `result-track:973531513e0890ccc6aa1dc70e060afe46fc4f2f6ea3b3b983ec9f1457e9405f` |
| 10 | `lemma` | [goursat](../../../../../mathematics/Algebra/GroupTheory/Goursat/Variantf9946b837d9865f75c03737d4f128669e7278f96d747d31de9b370e569f9590a.lean/declarations/goursat--1a530449e0b959755c7564ef.md) | 132 | `result-track:1a530449e0b959755c7564efb31d4655ea4a83ea475ca6460784d2f7b30f70fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
