# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c46e3ca2da8f552ecc7becbcb150e5f2be9958a3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c46e3ca2da8f552ecc7becbcb150e5f2be9958a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsUltrametricDist](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/isultrametricdist--cad95e3a371f6ea6db16f3f5.md) | 49 | `declaration-track:cad95e3a371f6ea6db16f3f5fcd67255197f27a79af0a16ab17880a92f19686b` |
| 2 | `lemma` | [dist_triangle_max](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/dist-triangle-max--c7b1cb0df597701706cc1e31.md) | 56 | `result-track:c7b1cb0df597701706cc1e312fb9d3e6e47021cd2b6f59caf003f55757136d4b` |
| 3 | `lemma` | [dist_eq_max_of_dist_ne_dist](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/dist-eq-max-of-dist-ne-dist--689ced799300d2698f847560.md) | 62 | `result-track:689ced799300d2698f847560ab90d9612f5256bd609c9c3eef90f8c1899bb181` |
| 4 | `instance` | [subtype](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/subtype--3752d4d869a25b28c4785084.md) | 73 | `declaration-track:3752d4d869a25b28c4785084bdcd60aa4f7d228bf9ccbd508887d8dda2bd8646` |
| 5 | `lemma` | [ball_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/ball-eq-of-mem--f89d04d896c6e92d85bed384.md) | 76 | `result-track:f89d04d896c6e92d85bed384f15ad8a7a2bd5934050830d1d28daa96c38c101b` |
| 6 | `lemma` | [mem_ball_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/mem-ball-iff--ace30b4c10e059c9579632d8.md) | 82 | `result-track:ace30b4c10e059c9579632d86919cef45553257971d5030439ed11d74824aa2a` |
| 7 | `lemma` | [ball_subset_trichotomy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/ball-subset-trichotomy--7bbc9df9dcf8841fd4b9b7a7.md) | 90 | `result-track:7bbc9df9dcf8841fd4b9b7a711c2589802096cf3e9cad549f7308d326d2e6973` |
| 8 | `lemma` | [ball_eq_or_disjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/ball-eq-or-disjoint--52348764299157f81bfce925.md) | 100 | `result-track:52348764299157f81bfce9251f4396cd182e7f6c9885fc49482f33a9b1cbda6d` |
| 9 | `lemma` | [closedBall_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/closedball-eq-of-mem--6c98c8ad1f3148553a44450d.md) | 107 | `result-track:6c98c8ad1f3148553a44450d37ab6ff5c8898180b635000089e367509901be3b` |
| 10 | `lemma` | [mem_closedBall_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/mem-closedball-iff--ca73eccc09906e991f88ec62.md) | 114 | `result-track:ca73eccc09906e991f88ec62e89645ec67c698beb5ca102a099ab4d30f5e9376` |
| 11 | `lemma` | [closedBall_subset_trichotomy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/closedball-subset-trichotomy--741390fb9f99fd11e30e04cb.md) | 123 | `result-track:741390fb9f99fd11e30e04cb012ea4236d760ca5dc14598d8a3c7f544181ae33` |
| 12 | `lemma` | [isClosed_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/isclosed-ball--44d6138f81e59cfbe1b67bea.md) | 135 | `result-track:44d6138f81e59cfbe1b67bea82138ed330a0a7f45dc0dd6538a194746af40e20` |
| 13 | `lemma` | [isClopen_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/isclopen-ball--bdf1fa3886e13c318f34ba19.md) | 151 | `result-track:bdf1fa3886e13c318f34ba19570cfdaa9d24a18893ffe76bbbea0b21f2cb20a1` |
| 14 | `lemma` | [frontier_ball_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/frontier-ball-eq-empty--412dfb711c7cf7538a2460c1.md) | 153 | `result-track:412dfb711c7cf7538a2460c140ee54748b31f8a4595e8d80ec77d8cd9859a6bf` |
| 15 | `lemma` | [closedBall_eq_or_disjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/closedball-eq-or-disjoint--5b1c2dcb5cdd79c26a32f9b9.md) | 156 | `result-track:5b1c2dcb5cdd79c26a32f9b9ecd395f70734385a130777863ab49bd767627ae1` |
| 16 | `lemma` | [isOpen_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/isopen-closedball--23328d8a12185254e806f193.md) | 164 | `result-track:23328d8a12185254e806f1932eaea7179ac1dd6f00eb58b366ce71b89c499412` |
| 17 | `lemma` | [isClopen_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/isclopen-closedball--8642494307441ab484a33744.md) | 179 | `result-track:8642494307441ab484a3374452b6e34832a4aafb3bdce5b0b4c06589d59fd8b1` |
| 18 | `lemma` | [frontier_closedBall_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/frontier-closedball-eq-empty--a0ba81716e8b05e33a7d7077.md) | 182 | `result-track:a0ba81716e8b05e33a7d7077fbd1dee748031ce66a47230cec7fe2c89be89c70` |
| 19 | `lemma` | [isOpen_sphere](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/isopen-sphere--9fe467e32f54ecc3418e5a1b.md) | 185 | `result-track:9fe467e32f54ecc3418e5a1b54d74c11d6f00519206102a8e4cdf80b82ea8cd4` |
| 20 | `lemma` | [isClopen_sphere](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant62c4ccc6e222e4e105e5a26302c02103cc5a4867cd170ac3b75d442c902619ad.lean/declarations/isclopen-sphere--7b635a991f5f1e79fc217a0d.md) | 189 | `result-track:7b635a991f5f1e79fc217a0d6183ca7aa914a1b7ee48c0b60fc750504807e644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
