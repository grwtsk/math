# Verification target: GRWTSK.Algebra.LinearAlgebra.ToMatrix.Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43440540f73980eec1c21cc9cefe72953ed8de3f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43440540f73980eec1c21cc9cefe72953ed8de3f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Charpoly.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [charpoly_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean/declarations/charpoly-tomatrix--13d346d43cb6cd2dbbdab9b8.md) | 55 | `result-track:13d346d43cb6cd2dbbdab9b83f780596f8db7edd6e59880f7b0bf1b156b0e79f` |
| 2 | `lemma` | [charpoly_prodMap](../../../../../mathematics/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean/declarations/charpoly-prodmap--a79b1c73e89962534d08d994.md) | 97 | `result-track:a79b1c73e89962534d08d994ac1daea0edf637cfd3718c6d28aeeb52e13896e4` |
| 3 | `lemma` | [LinearEquiv.charpoly_conj](../../../../../mathematics/Algebra/LinearAlgebra/ToMatrix/Variantb563a97f40a5f73db7bb63629bb96a7dcd5585ce3be9c5a73a133e034b399bab.lean/declarations/linearequiv-charpoly-conj--bc05593a5f949591184fe6ed.md) | 110 | `result-track:bc05593a5f949591184fe6ed6b69409c68a368547c6a76d523dd9309c962e0e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
