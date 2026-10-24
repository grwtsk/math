# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9c2dd2d8318634915314ab28aa3c41ec1531d46",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9c2dd2d8318634915314ab28aa3c41ec1531d46`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/comphaus--fe7b5317674ceb9978ddb322.md) | 40 | `declaration-track:fe7b5317674ceb9978ddb322976ccc50f4b54921f45e8e58edc4f92596e49c7f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/instance--41649827d148a73e30493928.md) | 44 | `declaration-track:41649827d148a73e3049392878f5f14d3f195dc6e318c6d5a36bcc80555fcede` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/instance--ec228d2d84bfd23265e7c5fe.md) | 47 | `declaration-track:ec228d2d84bfd23265e7c5fe03993cbf5b50434e872bd726baa7ab5d293ec6bd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/instance--2f44f9be2bd82ca6619811bf.md) | 50 | `declaration-track:2f44f9be2bd82ca6619811bff918baf9d18acf15f328f04d6bdae13088da2cb2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/instance--fe26a448c9cb5689f4575b1c.md) | 53 | `declaration-track:fe26a448c9cb5689f4575b1c9ad2583322a8b06c44adc24a9c448aabae93a9a4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/instance--23595ef7168e5c01d933975e.md) | 58 | `declaration-track:23595ef7168e5c01d933975e56c69c433763d27d644592d806bdd65cfe3c3d48` |
| 7 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/of--d13fe7fd14a262573fa8168e.md) | 63 | `declaration-track:d13fe7fd14a262573fa8168ecbd5c690e9c132e088239b2c8f1b21dfbdab5759` |
| 8 | `abbrev` | [compHausToTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/comphaustotop--ce1c12ca82aa241ad6ac07a5.md) | 68 | `declaration-track:ce1c12ca82aa241ad6ac07a58212020b3069896ae4aecb62f9d9d5e0e04b99c9` |
| 9 | `def` | [stoneCechObj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/stonecechobj--d859ca3fa0a09479a9a534b6.md) | 75 | `declaration-track:d859ca3fa0a09479a9a534b6d9f3d52ead3f31e2e112cdc071a7d7358a9ec676` |
| 10 | `def` | [stoneCechEquivalence](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/stonecechequivalence--3d017718f111ff54b87faad1.md) | 81 | `declaration-track:3d017718f111ff54b87faad1b3ea48ac9b0e9f4db493c92e861488c6af03433d` |
| 11 | `def` | [topToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/toptocomphaus--2f1c54bd53fac7bab1ec8e54.md) | 105 | `declaration-track:2f1c54bd53fac7bab1ec8e543210228a9f6d3cc637b9508e69052c241702a834` |
| 12 | `theorem` | [topToCompHaus_obj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/toptocomphaus-obj--a48550389cb75871a954fc13.md) | 108 | `result-track:a48550389cb75871a954fc1369c4795068c0755994fd011c5c132d69871065aa` |
| 13 | `instance` | [compHausToTop.reflective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/comphaustotop-reflective--a9afab88daec991582156c74.md) | 113 | `declaration-track:a9afab88daec991582156c74545aec4126c4bf35021bf34c657587e521903234` |
| 14 | `instance` | [compHausToTop.createsLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/comphaustotop-createslimits--3491c84b016162e79ee58677.md) | 117 | `declaration-track:3491c84b016162e79ee586772e1af62b4bcdb393ad3ba1b1ed03b9bb36f88fa9` |
| 15 | `instance` | [CompHaus.hasLimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/comphaus-haslimits--c7b91000ddeb6e0425ae6ad6.md) | 120 | `declaration-track:c7b91000ddeb6e0425ae6ad613d5ffde652ea66fc2ba92b1c959c63e76d1c3e6` |
| 16 | `instance` | [CompHaus.hasColimits](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/comphaus-hascolimits--45889e69ef58454c745a3679.md) | 123 | `declaration-track:45889e69ef58454c745a3679ab8c2314de96fc9cf26f43252307eedaa9b906c0` |
| 17 | `def` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/limitcone--618fdf1d23c6807493cb99b6.md) | 130 | `declaration-track:618fdf1d23c6807493cb99b62a1405d7684ec79011da695d16a314b2f8a65b8a` |
| 18 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/limitconeislimit--9e6660d5feb27a21865626a1.md) | 166 | `declaration-track:9e6660d5feb27a21865626a1227e8a358f5783b780da8b5190ddbab44720c749` |
| 19 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/epi-iff-surjective--1211214a9060f2b2fce2a631.md) | 173 | `result-track:1211214a9060f2b2fce2a6317303a141ea07c039ffae0d904292ade193114622` |
| 20 | `abbrev` | [compHausLikeToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/declarations/comphausliketocomphaus--d83d8f30e886888a22873b76.md) | 209 | `declaration-track:d83d8f30e886888a22873b7664cbbb5b5e495d62d6b1b8e474e8899b1565520e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
