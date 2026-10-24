# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousOfBounded.Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90f3a908baaaf9ba647d098cf19287e41decdf40",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90f3a908baaaf9ba647d098cf19287e41decdf40`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.clmOfExistsBoundedImage](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/declarations/linearmap-clmofexistsboundedimage--8ebb34274804266c8a6b067e.md) | 41 | `declaration-track:8ebb34274804266c8a6b067e3f25e89bf63c5171ef07560feb1c649ced9124bf` |
| 2 | `theorem` | [LinearMap.clmOfExistsBoundedImage_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/declarations/linearmap-clmofexistsboundedimage-coe--36095df4bd54bcc1ab8aae2b.md) | 68 | `result-track:36095df4bd54bcc1ab8aae2b5d9de2532dc0cb93b092680b2bd22ca868dc9d25` |
| 3 | `theorem` | [LinearMap.clmOfExistsBoundedImage_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/declarations/linearmap-clmofexistsboundedimage-apply--fdc82fc093681745567f3127.md) | 74 | `result-track:fdc82fc093681745567f3127ff66122ae7e2b4ee93dd52a67b6d00c718d87340` |
| 4 | `theorem` | [LinearMap.continuousAt_zero_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/declarations/linearmap-continuousat-zero-of-locally-bounded--0d95ac1bb170d7bda669c1db.md) | 90 | `result-track:0d95ac1bb170d7bda669c1db0f68e6615cc7b9ea33f6e0a878d24032d5e00480` |
| 5 | `theorem` | [LinearMap.continuous_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/declarations/linearmap-continuous-of-locally-bounded--333b12f198e4af16d4a6249b.md) | 163 | `result-track:333b12f198e4af16d4a6249b4ea8ab9304c1c01d70f900a2e3d5d3c3e927e13b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
