# Verification target: GRWTSK.Algebra.MixedCharZero.Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b16a4c1295a6bd54426ec1bcb5ed954eafba8d4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/index.md) · [Full source](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b16a4c1295a6bd54426ec1bcb5ed954eafba8d4`.

Source path: `GRWTSK/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.LocalRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/mixedcharzero--57c6d509dc0440af40fc9393.md) | 72 | `declaration-track:57c6d509dc0440af40fc939319b9dcff9c81d92312ae3e06f73d9764796b78c2` |
| 2 | `theorem` | [reduce_to_p_prime](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/reduce-to-p-prime--24989e0a64779c4391122bb5.md) | 82 | `result-track:24989e0a64779c4391122bb5af6f28e41362b3d24756a4aaf9c73b0ed6d968d1` |
| 3 | `theorem` | [reduce_to_maximal_ideal](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/reduce-to-maximal-ideal--4556c6705fa497f3b075f77a.md) | 108 | `result-track:4556c6705fa497f3b075f77a7be38e789bc3136d01d4db3c6c1097610b52dacf` |
| 4 | `theorem` | [of_algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/of-algebrarat--b4c2de892ff1f92e1699e5f6.md) | 153 | `result-track:b4c2de892ff1f92e1699e5f67157bd9d2a1154f0c41fea152ba23f2a5ce3c39f` |
| 5 | `theorem` | [PNat.isUnit_natCast](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/pnat-isunit-natcast--555e344e29d259b8716c9c0a.md) | 168 | `result-track:555e344e29d259b8716c9c0a9593462923fe681411631cad04729046a889abc5` |
| 6 | `def` | [pnatCast](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/pnatcast--338019317ca0e992e0744537.md) | 182 | `declaration-track:338019317ca0e992e0744537ac2086a5617b0bb959d35a49d03c8097a7faab43` |
| 7 | `instance` | [coePNatUnits](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/coepnatunits--aac6670a46f1b029344cce92.md) | 186 | `declaration-track:aac6670a46f1b029344cce926c97041dc82b74d6ffae4d48126f562564b3dafa` |
| 8 | `theorem` | [pnatCast_one](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/pnatcast-one--17cf36d781c8c4e32f2b3db4.md) | 192 | `result-track:17cf36d781c8c4e32f2b3db4735bcba4ce0157c39091d3c3d4782092704baf34` |
| 9 | `theorem` | [pnatCast_eq_natCast](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/pnatcast-eq-natcast--f0fc66de170088703099af4b.md) | 201 | `result-track:f0fc66de170088703099af4b2654a8a053b01689e3e4f4350a7ab4ea4a8b2b1f` |
| 10 | `def` | [algebraRat](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/algebrarat--ec81eef49222b8c5135bc95e.md) | 207 | `declaration-track:ec81eef49222b8c5135bc95ee93a65f77cd0e46f65c67054cebecd8d2385f213` |
| 11 | `theorem` | [of_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/of-not-mixedcharzero--1817947600274c2a198f2250.md) | 234 | `result-track:1817947600274c2a198f2250ec0efe54e708416d474761eba78d9da3cec9cee2` |
| 12 | `theorem` | [to_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/to-not-mixedcharzero--c5a0cdc7cb5163ba34e80294.md) | 247 | `result-track:c5a0cdc7cb5163ba34e80294b5b743d12c9cb7d828b2c89406b08f6dc84eabd1` |
| 13 | `theorem` | [iff_not_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/iff-not-mixedcharzero--d89d994f607471fa49a7a72d.md) | 259 | `result-track:d89d994f607471fa49a7a72d0e5b6206bda6663d6b677a824ddb24d4a0e68a0c` |
| 14 | `theorem` | [nonempty_algebraRat_iff](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/nonempty-algebrarat-iff--bf8e1738abb107aa522cd9bd.md) | 264 | `result-track:bf8e1738abb107aa522cd9bda4a4827a2ad0731f0a1eee02187b0ef38526198b` |
| 15 | `theorem` | [isEmpty_algebraRat_iff_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/isempty-algebrarat-iff-mixedcharzero--933afcc30c9ac2a260c33bed.md) | 279 | `result-track:933afcc30c9ac2a260c33bed33b7ee19a065e026f253de7c8105f72c8fb49cc9` |
| 16 | `theorem` | [split_equalCharZero_mixedCharZero](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/split-equalcharzero-mixedcharzero--593495c8d8de401ce3d60c05.md) | 301 | `result-track:593495c8d8de401ce3d60c0572b565cb80fc73bbbc587d4f306e93f767c0c475` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/example--f67b1a8a573115791b807fe7.md) | 311 | `declaration-track:f67b1a8a573115791b807fe7582bc0a8c7735517b328aea3c55fbca2ca60124b` |
| 18 | `theorem` | [split_by_characteristic](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/split-by-characteristic--9b036fbbe80b2422a055b37d.md) | 320 | `result-track:9b036fbbe80b2422a055b37db8e2cf8fc107333ee026ef88c4a1656580a79712` |
| 19 | `theorem` | [split_by_characteristic_domain](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/split-by-characteristic-domain--933675869ee87f2350623df3.md) | 336 | `result-track:933675869ee87f2350623df35e99de5bb6312407efd00b2508aaecaf9563a053` |
| 20 | `theorem` | [split_by_characteristic_localRing](../../../../mathematics/Algebra/MixedCharZero/Variant65657704eb90a4cdaa73edb0af14b7b6b45322f56934eaf4682c00dd89bbd4b6.lean/declarations/split-by-characteristic-localring--1a495290887a04dc68aad689.md) | 349 | `result-track:1a495290887a04dc68aad689dd269b92840ffe66874b9839e4f105b486c5ef97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
