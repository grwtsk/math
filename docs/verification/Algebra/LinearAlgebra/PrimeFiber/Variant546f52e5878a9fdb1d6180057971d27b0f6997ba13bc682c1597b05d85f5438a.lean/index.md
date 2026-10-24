# Verification target: GRWTSK.Algebra.LinearAlgebra.PrimeFiber.Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "171d26b6d4f11896d9e2ae826cc0de3e0977608d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `171d26b6d4f11896d9e2ae826cc0de3e0977608d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Kernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.TorsionTower` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NygaardFiltrationCandidate](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/nygaardfiltrationcandidate--437c5d85bdf3b6b3153f9b4f.md) | 26 | `declaration-track:437c5d85bdf3b6b3153f9b4f32afec07d780033e01804c293b0d48d6285f945d` |
| 2 | `structure` | [FrobeniusEulerCandidate](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/frobeniuseulercandidate--3bd3361269f5178e0273eee8.md) | 45 | `declaration-track:3bd3361269f5178e0273eee82bed4a3a20bc055e52283918567740d88b4b563b` |
| 3 | `structure` | [PrimeLocalFiberCandidate](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/primelocalfibercandidate--3650769f36279f8431a41e84.md) | 55 | `declaration-track:3650769f36279f8431a41e84f2ca87fe492cd3d5123bbf00cae3a70b476354b7` |
| 4 | `structure` | [PrimeLocalFiberRealization](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/primelocalfiberrealization--9a3be1fd4b55fbca7784c4a9.md) | 95 | `declaration-track:9a3be1fd4b55fbca7784c4a9580ddd74cbc4c15af7926efe246b02a7d97608e1` |
| 5 | `def` | [candidateDigest](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/candidatedigest--3724f08dbbd60942c2e9d69e.md) | 115 | `declaration-track:3724f08dbbd60942c2e9d69e0adc9cacc07b46bcf999e9a78c3292835f1fba29` |
| 6 | `def` | [sourceDigest](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/sourcedigest--e92e9abd1c03065d963a3664.md) | 125 | `declaration-track:e92e9abd1c03065d963a3664c9176aa617929997819469d023496d746ded81a0` |
| 7 | `def` | [comparisonObligationIds](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/comparisonobligationids--dce817862fc21419e91d0e1a.md) | 135 | `declaration-track:dce817862fc21419e91d0e1a8e1884061f08e84f4f911b128b00bd0e8fc81283` |
| 8 | `def` | [objectAddress](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/objectaddress--e467ea92eb7f401061332446.md) | 145 | `declaration-track:e467ea92eb7f401061332446850b211181f71598dbea5deb8cce87565acfb387` |
| 9 | `def` | [PrimeLocalFiberCertificationStatement](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/primelocalfibercertificationstatement--b895754b6b7728c4e4835eae.md) | 166 | `declaration-track:b895754b6b7728c4e4835eae7b4f4d4695fdc99ee3b9ac8adccf1bf0ad5c4e85` |
| 10 | `structure` | [CertifiedPrimeLocalFiber](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/certifiedprimelocalfiber--da9bc40bf9f667fd23d99ab5.md) | 180 | `declaration-track:da9bc40bf9f667fd23d99ab5b3634ea9ba199dc9068f57dafbb0b7b61469e0a8` |
| 11 | `theorem` | [certificationStatement](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/certificationstatement--a594e5f10da0dfe8b68e9b27.md) | 197 | `result-track:a594e5f10da0dfe8b68e9b27cea7efd4e079d53860f830bdd75588ea58c3bbdd` |
| 12 | `theorem` | [isPrime](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/isprime--e844a22a500abd06ce96da0b.md) | 204 | `result-track:e844a22a500abd06ce96da0b0c942e74b9319f664b59f1461f4851a71feb6b02` |
| 13 | `def` | [objectAddress](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/objectaddress--79c814534eba5507d1d224d6.md) | 212 | `declaration-track:79c814534eba5507d1d224d6fe9fc0417bcff43d11279c1946f0731c7831e005` |
| 14 | `theorem` | [declaration_statement_digest_bound](../../../../../mathematics/Algebra/LinearAlgebra/PrimeFiber/Variant546f52e5878a9fdb1d6180057971d27b0f6997ba13bc682c1597b05d85f5438a.lean/declarations/declaration-statement-digest-bound--c8d8e56daa66b0b9bd458ffb.md) | 218 | `result-track:c8d8e56daa66b0b9bd458ffbd147b70053f4f2320c231c7bbdaedef0b5078752` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
