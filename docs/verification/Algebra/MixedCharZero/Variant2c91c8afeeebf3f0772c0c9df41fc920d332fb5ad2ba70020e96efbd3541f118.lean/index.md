# Verification target: GRWTSK.Algebra.MixedCharZero.Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md) · [Full source](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce50f18412cf34a2d0040b5e72477abd5ff8b7fd`.

Source path: `GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.LocalRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/mixedcharzero--87e8975f403f20b906ec8de8.md) | 75 | `declaration-track:87e8975f403f20b906ec8de89798923a4f5b853abf9517249e9238450bb024df` |
| 2 | `theorem` | [reduce_to_p_prime](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/reduce-to-p-prime--2acfa3a41bff2d5f2c7dd23e.md) | 86 | `result-track:2acfa3a41bff2d5f2c7dd23ee0a60181dea02109bd5dd62fd237a94782af9489` |
| 3 | `theorem` | [reduce_to_maximal_ideal](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/reduce-to-maximal-ideal--8ab9d927a5c727521cbf0bc0.md) | 113 | `result-track:8ab9d927a5c727521cbf0bc0c98e76d0e74891e88239c3024033f41630902376` |
| 4 | `theorem` | [of_algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/of-algebrarat--2a919dc374ee753a4c4ce58a.md) | 162 | `result-track:2a919dc374ee753a4c4ce58acedb7af92982e1ea4e8cfd3166a4667f69a31226` |
| 5 | `theorem` | [PNat.isUnit_natCast](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/pnat-isunit-natcast--a8c7f2341920485e972995ec.md) | 179 | `result-track:a8c7f2341920485e972995ec7722fcf2f02a311a5c3a42f49ad98c34592eb0d7` |
| 6 | `def` | [pnatCast](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/pnatcast--8ade7787ea33c72d254b29c6.md) | 194 | `declaration-track:8ade7787ea33c72d254b29c6d114bab1f3bf23e1464286aeefaf37d244cb2a94` |
| 7 | `instance` | [coePNatUnits](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/coepnatunits--e0ff9a02b30722228b7ac217.md) | 198 | `declaration-track:e0ff9a02b30722228b7ac217e3e376db369e2c85270d6a8d2c06a5d9c0a45d51` |
| 8 | `theorem` | [pnatCast_one](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/pnatcast-one--054b3dec8fc9e504b33076d7.md) | 205 | `result-track:054b3dec8fc9e504b33076d7eb49eea823f4d57421a06721f452606283b1da15` |
| 9 | `theorem` | [pnatCast_eq_natCast](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/pnatcast-eq-natcast--5d6152bf9c1bd6fd93218249.md) | 215 | `result-track:5d6152bf9c1bd6fd93218249cc4a022a6b0ba1ff2edaf404c323e1fde355f08e` |
| 10 | `def` | [algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/algebrarat--26c39e90e16d866e79a106c3.md) | 222 | `declaration-track:26c39e90e16d866e79a106c33b78c1b46cc34836aec9ad17d83e1afbd35a5d40` |
| 11 | `theorem` | [of_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/of-not-mixedcharzero--9968774d07752c5030c57f91.md) | 251 | `result-track:9968774d07752c5030c57f91b3ec4422e88e64337fde55134082c24c4feefb6a` |
| 12 | `theorem` | [to_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/to-not-mixedcharzero--3465ff1b171509caed9b9090.md) | 266 | `result-track:3465ff1b171509caed9b9090ad907894898bbddd73b57e7517e78ddedf7c7876` |
| 13 | `theorem` | [iff_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/iff-not-mixedcharzero--595ed5cbb0b1a4c3a1475bdc.md) | 279 | `result-track:595ed5cbb0b1a4c3a1475bdc461aa2d9592aa781476b9695a8f97ab250b92d2b` |
| 14 | `theorem` | [nonempty_algebraRat_iff](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/nonempty-algebrarat-iff--6e69eda3445aa6c997b255e4.md) | 285 | `result-track:6e69eda3445aa6c997b255e4701884f675c9e9d6deabb697b38ddd0ed70bbc60` |
| 15 | `theorem` | [isEmpty_algebraRat_iff_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/isempty-algebrarat-iff-mixedcharzero--9ff626bdd02a7bdd2b29bae8.md) | 302 | `result-track:9ff626bdd02a7bdd2b29bae8dec66cfe52b787d81986637e81859ee577d52f5b` |
| 16 | `theorem` | [split_equalCharZero_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/split-equalcharzero-mixedcharzero--e0714cfba8cbefc6035ed61c.md) | 326 | `result-track:e0714cfba8cbefc6035ed61c13f86b412979b4d29ef373dbb0505182db0b03ee` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/example--17b4008202d1c93e72d6eb6a.md) | 337 | `declaration-track:17b4008202d1c93e72d6eb6aac1147b0ae2644b55f3a728a7174dea855a2bacd` |
| 18 | `theorem` | [split_by_characteristic](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/split-by-characteristic--28494e1def4b99b6c0bf9db4.md) | 346 | `result-track:28494e1def4b99b6c0bf9db48ec9d8f081c7ff8de25bd1f914ca69c96a6593a6` |
| 19 | `theorem` | [split_by_characteristic_domain](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/split-by-characteristic-domain--e49b2c42b79a8dc256740d58.md) | 363 | `result-track:e49b2c42b79a8dc256740d5858ee69c2c15eb1135c955369c48c85669b80b6de` |
| 20 | `theorem` | [split_by_characteristic_localRing](../../../../mathematics/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/declarations/split-by-characteristic-localring--4e4c64dcc61ec1517302a9ca.md) | 377 | `result-track:4e4c64dcc61ec1517302a9ca66eec15f18e2f6808472e98492a7fb732784808a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
