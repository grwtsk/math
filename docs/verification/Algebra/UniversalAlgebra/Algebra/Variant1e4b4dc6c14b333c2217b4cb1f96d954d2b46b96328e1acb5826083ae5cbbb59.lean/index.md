# Verification target: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df53e6ce4caaddfe1ee3235dcb79c0fd5fee5e69",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df53e6ce4caaddfe1ee3235dcb79c0fd5fee5e69`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/galgebra--96d8aa138e8d732e15357326.md) | 56 | `declaration-track:96d8aa138e8d732e15357326320b720e08dd582f21ce5247a91ce588642b61a4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/instance--e3400ddead31189123714364.md) | 69 | `declaration-track:e3400ddead31189123714364af8caa7e832dc4a141da5a35b040aed9d733784f` |
| 3 | `theorem` | [algebraMap_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/algebramap-apply--92ab5b59bc9b33054a5ee8ea.md) | 94 | `result-track:92ab5b59bc9b33054a5ee8ea0c92739ff950244067450b077509d96b60bc27dd` |
| 4 | `theorem` | [algebraMap_toAddMonoid_hom](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/algebramap-toaddmonoid-hom--eae99504bc4b48b62fd553d8.md) | 99 | `result-track:eae99504bc4b48b62fd553d8d39f6e66a1db1f21cca69a3556922fbe5fc73766` |
| 5 | `def` | [toAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/toalgebra--455a7dba654d1dc70ce3d633.md) | 112 | `declaration-track:455a7dba654d1dc70ce3d633ac634bb1f8ab30c9bfce93922a8e604ad765f966` |
| 6 | `theorem` | [algHom_ext'](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/alghom-ext--0816b38cdf2cf7376dc9e6cf.md) | 125 | `result-track:0816b38cdf2cf7376dc9e6cf57edc0ac9d78609145cb44dc64bf08dad14cb6f1` |
| 7 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/alghom-ext--9ef876ba3a92d3e93eff70de.md) | 130 | `result-track:9ef876ba3a92d3e93eff70defa770de053f703ad00b807c1c9f04d5cacd7d11f` |
| 8 | `instance` | [Algebra.directSumGAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variant1e4b4dc6c14b333c2217b4cb1f96d954d2b46b96328e1acb5826083ae5cbbb59.lean/declarations/algebra-directsumgalgebra--01f5c7416212c18930eef6bd.md) | 143 | `declaration-track:01f5c7416212c18930eef6bd686af85536a208eeb398c7d6b5af788bf9620cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
