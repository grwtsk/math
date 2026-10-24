# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50df41bfc584033db27db6723d5bacb808e5b579",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50df41bfc584033db27db6723d5bacb808e5b579`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/declarations/instance--a0d14bd0d3ec0c2ebc3ffec1.md) | 40 | `declaration-track:a0d14bd0d3ec0c2ebc3ffec12e100c7aa46acc1eb658c2444df347e0c6d2ea7d` |
| 2 | `def` | [Types.sections.equivFixedPoints](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/declarations/types-sections-equivfixedpoints--07a37f96e2314d3e4d52d77c.md) | 58 | `declaration-track:07a37f96e2314d3e4d52d77c66c5e6c147027499504ea0963293c900a3374e84` |
| 3 | `def` | [Types.limitEquivFixedPoints](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/declarations/types-limitequivfixedpoints--e0ed52d4ec6c91989234a46d.md) | 68 | `declaration-track:e0ed52d4ec6c91989234a46d33805c4406acc60288c2ac23e0e66937fc822186` |
| 4 | `lemma` | [Types.Quot.Rel.iff_orbitRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/declarations/types-quot-rel-iff-orbitrel--8710620cab630f3fe5b4b22e.md) | 80 | `result-track:8710620cab630f3fe5b4b22ef887b49ae6e7b3c5e7b90c92413688d447cfaa2c` |
| 5 | `def` | [Types.Quot.equivOrbitRelQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/declarations/types-quot-equivorbitrelquotient--bdf4c73ddbbaacca4f069418.md) | 91 | `declaration-track:bdf4c73ddbbaacca4f06941800b8deeeb14ba6ad71faef5d39292b60a40b6410` |
| 6 | `def` | [Types.colimitEquivQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/declarations/types-colimitequivquotient--48c39f7450d69fc72a31a339.md) | 103 | `declaration-track:48c39f7450d69fc72a31a339cce40e3ce8da3d4203ba7772bccce9e5a34bd120` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
