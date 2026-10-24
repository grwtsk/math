# Verification target: GRWTSK.Algebra.LinearAlgebra.Triangularizable.Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f9759d3c0d19efe6841c097c703e334f0003e39",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f9759d3c0d19efe6841c097c703e334f0003e39`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasEigenvalue_of_genEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/declarations/exists-haseigenvalue-of-geneigenspace-eq-top--448ee7ead17f86bc3f4f1b27.md) | 52 | `result-track:448ee7ead17f86bc3f4f1b274f2d92d41e17af5ec985beb560347f09559c8abf` |
| 2 | `theorem` | [exists_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/declarations/exists-eigenvalue--d97f7068dc9c77cffad6d847.md) | 63 | `result-track:d97f7068dc9c77cffad6d847ed13d7aefb740f7218d47fac402cd138186448c0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/declarations/instance--e101a1665365d6144100a318.md) | 68 | `declaration-track:e101a1665365d6144100a318ddbb5c7887a04f5cbabb94223b9765c81707cfc2` |
| 4 | `theorem` | [iSup_maxGenEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/declarations/isup-maxgeneigenspace-eq-top--d5de99b28296bb56681afcf8.md) | 75 | `result-track:d5de99b28296bb56681afcf8391e9dd91bfe55fb100f24c1c386436bb3258982` |
| 5 | `theorem` | [inf_iSup_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/declarations/inf-isup-geneigenspace--4d783e1142421c2c75a9830b.md) | 146 | `result-track:4d783e1142421c2c75a9830b7c963bc14f51556c65dbf425fb7746b8d68b7a25` |
| 6 | `theorem` | [eq_iSup_inf_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/declarations/eq-isup-inf-geneigenspace--78f76c890f56d773f46ecf9d.md) | 227 | `result-track:78f76c890f56d773f46ecf9dd06f2481b0c493c2191d3248252e6481f32885a6` |
| 7 | `theorem` | [Module.End.genEigenspace_restrict_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant9fde7e086b800f65898f509d4a02c25eff1239aaba9bb07ec538f5e2a4e0f135.lean/declarations/module-end-geneigenspace-restrict-eq-top--d30dfada0ab5059dbd2918a5.md) | 236 | `result-track:d30dfada0ab5059dbd2918a53b67474271fb46cbab9b0367c16d0b1d5440c604` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
