# Verification target: GRWTSK.Algebra.Pullback.Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "912dbd28a11e5329c92336e9de989066df1d2048",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `912dbd28a11e5329c92336e9de989066df1d2048`.

Source path: `GRWTSK/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subring.Units` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalRing_eqLocus](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/islocalring-eqlocus--830c5ef3e512fa257589934d.md) | 56 | `result-track:830c5ef3e512fa257589934d36c1bb33142af4ed51a1942f0a3c7dd73768872a` |
| 2 | `abbrev` | [pullback](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullback--55cc456b02a2d7cf22e60538.md) | 61 | `declaration-track:55cc456b02a2d7cf22e60538aafeb63015d9990f299109bf1daf31c2535fe520` |
| 3 | `abbrev` | [pullbackFst](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullbackfst--22982873085a51ef3b1c2736.md) | 65 | `declaration-track:22982873085a51ef3b1c27361191c1ee705bbff728bce3f426bab8c8a194cf92` |
| 4 | `abbrev` | [pullbackSnd](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullbacksnd--435a582977c51cd7aef792ba.md) | 69 | `declaration-track:435a582977c51cd7aef792ba454030f27fdaffe99e1af9eb70e0fd136b153d7b` |
| 5 | `theorem` | [pullback_comm_sq](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullback-comm-sq--1d216b315c07a56368b1d05c.md) | 72 | `result-track:1d216b315c07a56368b1d05c736047ba8666b13ebc867d631f210a63fc34e4f2` |
| 6 | `theorem` | [isUnit_pullback_mk_iff](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/isunit-pullback-mk-iff--3249d0a624a96cbee2986bf4.md) | 77 | `result-track:3249d0a624a96cbee2986bf49bf9c5518603f3bca314baeaeb6cf03885ddcbd1` |
| 7 | `instance` | [isLocalHom_pullbackFst](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/islocalhom-pullbackfst--be01c176aa8c935bac5652bb.md) | 81 | `declaration-track:be01c176aa8c935bac5652bb46eb746d0f1bf5ebf1cfc53a76225ffe9ef92dca` |
| 8 | `instance` | [isLocalHom_pullbackSnd](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/islocalhom-pullbacksnd--fe8fadd6bfacad099e6212ba.md) | 86 | `declaration-track:fe8fadd6bfacad099e6212bae672c43e98b3f8da7ae10ee00b416625c520f9ab` |
| 9 | `theorem` | [surjective_pullbackFst_of_surjective](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/surjective-pullbackfst-of-surjective--6d3be14d2d74a732315b8ed5.md) | 91 | `result-track:6d3be14d2d74a732315b8ed5837395cb45b429124f439e8b10d6d0622ab97a54` |
| 10 | `theorem` | [surjective_pullbackSnd_of_surjective](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/surjective-pullbacksnd-of-surjective--2a65fb752a3762adffbd9fc0.md) | 95 | `result-track:2a65fb752a3762adffbd9fc0f2108f55b6016dee47f98c005b505b43686facea` |
| 11 | `theorem` | [map_pullbackSnd_ker_pullbackFst_eq](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/map-pullbacksnd-ker-pullbackfst-eq--8183f5f6474c0e16da70a40e.md) | 99 | `result-track:8183f5f6474c0e16da70a40ee689d312dc493dda42a537c9155966893f8fe89a` |
| 12 | `theorem` | [isLocalRing_pullback](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/islocalring-pullback--d1187f43dd37dcc4dee5bc7c.md) | 109 | `result-track:d1187f43dd37dcc4dee5bc7ca61ec6aa630a22c96335e298996fbe3f215d5978` |
| 13 | `abbrev` | [pullback](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullback--f7d40c4dc218ba6923a7d878.md) | 124 | `declaration-track:f7d40c4dc218ba6923a7d87829ca001b2205afb85ebabbc0f6e4f8bbfb9a54d0` |
| 14 | `abbrev` | [pullbackFst](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullbackfst--3faf5c31120e9de1ea9ade21.md) | 128 | `declaration-track:3faf5c31120e9de1ea9ade216f2e9e8ca282279b98c830357f3e1f1ba74d83e7` |
| 15 | `abbrev` | [pullbackSnd](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullbacksnd--daa5e2f90c7c3a807f303b2c.md) | 132 | `declaration-track:daa5e2f90c7c3a807f303b2cfed3891b61dab36d0e60ee2ff927d7268d8c93d1` |
| 16 | `theorem` | [pullback_comm_sq](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/pullback-comm-sq--892f9f00c2684cdf06f11093.md) | 135 | `result-track:892f9f00c2684cdf06f11093e3b224c09b49f865db2ab128dca15171602147d1` |
| 17 | `theorem` | [isUnit_pullback_mk_iff](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/isunit-pullback-mk-iff--4e7b0f13311af65682a960ae.md) | 145 | `result-track:4e7b0f13311af65682a960aea444c36ad8a6cccc8fabdafbd8dd98c4a0c709fb` |
| 18 | `theorem` | [surjective_pullbackFst_of_surjective](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/surjective-pullbackfst-of-surjective--74a0b63354b712f0ae2973ac.md) | 150 | `result-track:74a0b63354b712f0ae2973accf463473d2f4483abbbb1f43d93b55718aa9675c` |
| 19 | `theorem` | [surjective_pullbackSnd_of_surjective](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/surjective-pullbacksnd-of-surjective--6b6a48554328f5b34e062d2f.md) | 154 | `result-track:6b6a48554328f5b34e062d2ff774a395f224122c6b0f731052cd4ebb2feb47fa` |
| 20 | `theorem` | [isLocalRing_pullback](../../../../mathematics/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/declarations/islocalring-pullback--5ad103a9db6c6d57301aefc1.md) | 158 | `result-track:5ad103a9db6c6d57301aefc1787e2163b7170830f11aece945b263e17f3bf79c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
