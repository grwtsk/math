# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9088dbc57cfe3f06778ed02f899530899059cc3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9088dbc57cfe3f06778ed02f899530899059cc3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoxeterMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/coxetermatrix--d48a4bc8db17b7fead21d04c.md) | 65 | `declaration-track:d48a4bc8db17b7fead21d04c9ce84026e87166ba0df447cfd2a8b0bcc45681aa` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/instance--f2c15a8503c062a11569a454.md) | 77 | `declaration-track:f2c15a8503c062a11569a454b755956a0b0ffae63daa4d4fbd4eab103616f8dc` |
| 3 | `theorem` | [symmetric](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/symmetric--20dc5682afe2e0811b2fe0d0.md) | 83 | `result-track:20dc5682afe2e0811b2fe0d07cd16e8119a77ff2c90710ccefbaa2f3c92b6c37` |
| 4 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/reindex--7eddb3dec800ef8b6309af17.md) | 86 | `declaration-track:7eddb3dec800ef8b6309af17c2c434125af63d859091fd43456343322a1d4c7d` |
| 5 | `theorem` | [reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/reindex-apply--5ef4725216a120830fae9ae7.md) | 92 | `result-track:5ef4725216a120830fae9ae72cf21c89ddd7a8e2012ad385f944ce5081807aaf` |
| 6 | `def` | [Aₙ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/a--f9eb1d175286178e0e0acb1d.md) | 103 | `declaration-track:f9eb1d175286178e0e0acb1d4e749c22c185c6bc187f974df60696942acbe138` |
| 7 | `def` | [Bₙ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/b--de6f256dec74244a7a8a46db.md) | 121 | `declaration-track:de6f256dec74244a7a8a46dbe73283d89b5e14bc2867c58be6901ef668ccf469` |
| 8 | `def` | [Dₙ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/d--a7b2d7324437f79984f18e51.md) | 141 | `declaration-track:a7b2d7324437f79984f18e51bba145ba2b1a0e47a2a9e3ab445462110d8a8149` |
| 9 | `def` | [I₂ₘ](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/i--fa0ad510bb4bc5684eb4c3eb.md) | 158 | `declaration-track:fa0ad510bb4bc5684eb4c3eb212584a66ce9e1a65f82c485883561ebaf613d22` |
| 10 | `def` | [E₆](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/e--a8701883292f8bcfe40a0edc.md) | 173 | `declaration-track:a8701883292f8bcfe40a0edc7a21cbabe8cca6a7fd7c3d37ab4afb7a5fddc3c8` |
| 11 | `def` | [E₇](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/e--7a60ab02f06195c90124d079.md) | 190 | `declaration-track:7a60ab02f06195c90124d079090860e7c223d486493b410e092e48e557d2cfd9` |
| 12 | `def` | [E₈](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/e--6900cc19853f9b06671c1764.md) | 208 | `declaration-track:6900cc19853f9b06671c176452f5919770718fd09189a57a55701558587dc590` |
| 13 | `def` | [F₄](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/f--befeac2717b71369837b2854.md) | 226 | `declaration-track:befeac2717b71369837b28542cc7576cc47fb04bc1223ee620865aebb723eb11` |
| 14 | `def` | [G₂](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/g--03e5f404404e9f3dad004cc8.md) | 240 | `declaration-track:03e5f404404e9f3dad004cc8a97486fa210423d317f63d8af6b8e5fb748c56b0` |
| 15 | `def` | [H₃](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/h--cf0b2afef2ffedb79fcc2b41.md) | 252 | `declaration-track:cf0b2afef2ffedb79fcc2b41ba9d5e0a086043212729ef5cc3a0967a5d096974` |
| 16 | `def` | [H₄](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant00b891f411b22b6a5d2175cdd5fdc37100b5e259881d42b0d15dc3ae2a4ab226.lean/declarations/h--b1a50f213f2b432417a4d6f0.md) | 265 | `declaration-track:b1a50f213f2b432417a4d6f00dcac1365ecdc60c3636753a650d8adaec463872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
