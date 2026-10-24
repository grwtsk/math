# Verification target: GRWTSK.Algebra.UniversalAlgebra.EnoughInjectives.Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e3ff00d953bccd6da9be5b7f681398cc6659844",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e3ff00d953bccd6da9be5b7f681398cc6659844`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.EnoughInjectives` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean/declarations/instance--b9cd19adf2a27fd0cad6098e.md) | 30 | `declaration-track:b9cd19adf2a27fd0cad6098e5ed8d07799a03ad40d214235a113a951c38f60ea` |
| 2 | `lemma` | [ModuleCat.enoughInjectives](../../../../../mathematics/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean/declarations/modulecat-enoughinjectives--bd6cc39cf7ddaf60ddac495d.md) | 33 | `result-track:bd6cc39cf7ddaf60ddac495d67a1958b55d908ef3041632230ec51c53818c162` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/EnoughInjectives/Varianta1e791870a15f6a1516a1458ec868c521d880aaea16c296a7706f3f24d59680e.lean/declarations/instance--cd046c28fc16b91ac59864f4.md) | 37 | `declaration-track:cd046c28fc16b91ac59864f4333d2c2d66615a317e1fa66c5af7f1035b82725a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
