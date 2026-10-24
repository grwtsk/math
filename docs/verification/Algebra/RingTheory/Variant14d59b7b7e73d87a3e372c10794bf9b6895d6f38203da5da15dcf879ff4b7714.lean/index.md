# Verification target: GRWTSK.Algebra.Ring.Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64234e93efe84d4848b1efbaaafc7cdbd808474a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64234e93efe84d4848b1efbaaafc7cdbd808474a`.

Source path: `GRWTSK/Algebra/Ring/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--1fc633b302ad77f6366f75ec.md) | 17 | `declaration-track:1fc633b302ad77f6366f75ecb59545b016a9fcb4623ea5813a1ad4ccf655b680` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--90a56dd3e227f12e585eab2c.md) | 20 | `declaration-track:90a56dd3e227f12e585eab2c320472d48e9610b8ca3d1e18fa91ba42214ad1f2` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--c6a593507f881f29793b5139.md) | 23 | `declaration-track:c6a593507f881f29793b51398f205e94f816f1d127d7f30b3932e044c9f7081c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--4eda4e0e615e6c5ba54b45cf.md) | 26 | `declaration-track:4eda4e0e615e6c5ba54b45cfb86c86a42d6ca5d462de46c57bec09f977b9f7db` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--e0e43c49e1550397ed84fc89.md) | 29 | `declaration-track:e0e43c49e1550397ed84fc8993a2b6bbefc6cc52bce0db0e4d1aae0ff641acaa` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--cdd5450968442886194607a0.md) | 32 | `declaration-track:cdd5450968442886194607a014884d63ea50628a5ce1a9db670dd65ad7e35f0f` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--cb5437cea4489f95b11c26d7.md) | 35 | `declaration-track:cb5437cea4489f95b11c26d7aeb6541ddad3ad11d80337355f1dcb14a21d2175` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--deb7e477521cb3117567c506.md) | 38 | `declaration-track:deb7e477521cb3117567c506c692fcfb09ce3bf31a48802cb75a1a03b2506592` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--0db8d5dfd9b3abf0e28fb64d.md) | 41 | `declaration-track:0db8d5dfd9b3abf0e28fb64d6075147465415a6297d64dfb479633a1c8d968d9` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--0b564dd5fdbebb0031749d5e.md) | 44 | `declaration-track:0b564dd5fdbebb0031749d5ecb6ce097b9bdc81cd8bd65f9971d1eff577f859c` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--c1aed526c58b0e15f331fb22.md) | 47 | `declaration-track:c1aed526c58b0e15f331fb2239fead02d37c1654184858d3cab00564c06fb5b6` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--5e08853b82dabb6d0aea1b98.md) | 50 | `declaration-track:5e08853b82dabb6d0aea1b984019c8076a9f879ffbaf68f66e21fdd9f7a658c4` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--f999e1ff0c2efa3340ee8b7f.md) | 53 | `declaration-track:f999e1ff0c2efa3340ee8b7f52f6e1478d14cb8528ba14bbabe3750329972853` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--c923ed33d0499e2a6b246407.md) | 56 | `declaration-track:c923ed33d0499e2a6b246407ca7509b7441c0a96e96d63a522c69c4bdc0830ff` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--a53abb722bde8cc23b741ab1.md) | 59 | `declaration-track:a53abb722bde8cc23b741ab123cc4a069fb86b1b46104de305814959e1e5e7e4` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714.lean/declarations/instance--bb4dac272a5a79a36469c4e4.md) | 62 | `declaration-track:bb4dac272a5a79a36469c4e4da547764a8bd73d1967db0baff86ff8e18f00503` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
