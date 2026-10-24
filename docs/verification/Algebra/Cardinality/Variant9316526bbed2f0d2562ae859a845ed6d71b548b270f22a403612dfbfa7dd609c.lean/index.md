# Verification target: GRWTSK.Algebra.Cardinality.Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "801dea8a9298ca212c5aa98464c90aa404febe7b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `801dea8a9298ca212c5aa98464c90aa404febe7b`.

Source path: `GRWTSK/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Free` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinalMk_eq_max_lift](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-eq-max-lift--f6d36015e69c4a4314ae6870.md) | 27 | `result-track:f6d36015e69c4a4314ae68700e0b9cf8d0c9ca284533407d1fb3ec224647f04a` |
| 2 | `theorem` | [cardinalMk_eq_lift](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-eq-lift--254fcacbd73f22326d24bd27.md) | 35 | `result-track:254fcacbd73f22326d24bd27cd368d92421e88997c2202ba9427a1c8dfa0a837` |
| 3 | `theorem` | [cardinalMk_eq_one](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-eq-one--d3b72421398cd75e2ee3f96b.md) | 41 | `result-track:d3b72421398cd75e2ee3f96b94497cdc411c99437441c3186365daf251e3a8b5` |
| 4 | `theorem` | [cardinalMk_le_max_lift](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-le-max-lift--64adb7ecdf5a375afd315aac.md) | 44 | `result-track:64adb7ecdf5a375afd315aac297e20e480829a601520723d52a3759818c3d803` |
| 5 | `theorem` | [cardinalMk_eq_max](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-eq-max--990a707d1575a7ec6e204e46.md) | 54 | `result-track:990a707d1575a7ec6e204e46dc97843a09dbc6073b7510aca3b24781b5fe4db8` |
| 6 | `theorem` | [cardinalMk_eq](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-eq--bae2435a67edbf28a9179300.md) | 57 | `result-track:bae2435a67edbf28a917930032c5cc992746eaae834509e6ed96d26f967e744c` |
| 7 | `theorem` | [cardinalMk_le_max](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-le-max--bd6024f2e10a54e0fc229177.md) | 60 | `result-track:bd6024f2e10a54e0fc2291773c2b878b3f02c6bbbd10fc4bac40ed1d0752252a` |
| 8 | `theorem` | [lift_cardinalMk_adjoin_le](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/lift-cardinalmk-adjoin-le--a3fea2d5d5ed4a6e6baba795.md) | 67 | `result-track:a3fea2d5d5ed4a6e6baba79561b8d12a0a593c98b9f62bc166a6ada407ff38cb` |
| 9 | `theorem` | [cardinalMk_adjoin_le](../../../../mathematics/Algebra/Cardinality/Variant9316526bbed2f0d2562ae859a845ed6d71b548b270f22a403612dfbfa7dd609c.lean/declarations/cardinalmk-adjoin-le--012a01e818c72ca487423c1c.md) | 74 | `result-track:012a01e818c72ca487423c1cfb71fce2f4802dc12183e9328ebc3b73235856fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
