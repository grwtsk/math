# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9341cd5a5548adf009eb4ba1639ae2ad64549db",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9341cd5a5548adf009eb4ba1639ae2ad64549db`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonoidHom.coe_finset_prod](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean/declarations/monoidhom-coe-finset-prod--4bee48ef83af9423ed4376e8.md) | 21 | `result-track:4bee48ef83af9423ed4376e8e29ef08074f46b07f01285c374ce08a3a1648d9c` |
| 2 | `theorem` | [MonoidHom.finset_prod_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean/declarations/monoidhom-finset-prod-apply--34ad60ba28ed72ca0397c3f4.md) | 30 | `result-track:34ad60ba28ed72ca0397c3f44fc2cc5d93e01ffc78b99e795cd0f55efb90a77c` |
| 3 | `lemma` | [mulSupport_prod](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean/declarations/mulsupport-prod--1c1efeeccf6920544655ee5e.md) | 40 | `result-track:1c1efeeccf6920544655ee5e8c92558d0b6f0ff2a9b0082e91fbbb929e369e55` |
| 4 | `lemma` | [isSquare_prod](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantc9adc0ac4242440935a47063c0a858fdeaf814f4da57a5858c9c6f5c1c867c2e.lean/declarations/issquare-prod--fc3d852f2e085fb94768ee12.md) | 46 | `result-track:fc3d852f2e085fb94768ee1234cfd9690e1c7c58b7be94c92fa45a97227d4a50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
