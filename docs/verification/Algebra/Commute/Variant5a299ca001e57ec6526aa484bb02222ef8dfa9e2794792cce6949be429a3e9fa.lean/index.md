# Verification target: GRWTSK.Algebra.Commute.Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fefa2b27179dd8b260e4113bf457895dacd633e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fefa2b27179dd8b260e4113bf457895dacd633e`.

Source path: `GRWTSK/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Semiconj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_inverse_rev'](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/mul-inverse-rev--b2d5e93f67bc7025e2c2f484.md) | 26 | `result-track:b2d5e93f67bc7025e2c2f4843d60eafe8ddc797e7960c9086f68b50012afc684` |
| 2 | `theorem` | [mul_inverse_rev](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/mul-inverse-rev--0110c0f8d43fb4fe0fa18eee.md) | 36 | `result-track:0110c0f8d43fb4fe0fa18eee464dbdfa515147e35c448cb3a1abb7abf59d5cb6` |
| 3 | `theorem` | [Commute.ring_inverse_ring_inverse](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/commute-ring-inverse-ring-inverse--7ffae318370ee04a8a63824d.md) | 43 | `result-track:7ffae318370ee04a8a63824d516afc24d01f689d13fcd160754f3286dd1249e0` |
| 4 | `theorem` | [zero_right](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/zero-right--7713c9f6fbf4df497f06ae4c.md) | 52 | `result-track:7713c9f6fbf4df497f06ae4c39a3e1aeff639fa06543c8e8836e7dc04bb6022f` |
| 5 | `theorem` | [zero_left](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/zero-left--ddb8570f62a3ea5f80866402.md) | 57 | `result-track:ddb8570f62a3ea5f808664026a27ba87b76ec86611433bc94ffe37d9632ca683` |
| 6 | `theorem` | [inv_left_iff₀](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/inv-left-iff--4362fd052b979053078c8f5e.md) | 64 | `result-track:4362fd052b979053078c8f5e4f02c592e12ee58f943bc3ef801904dfcc1dd3ee` |
| 7 | `theorem` | [inv_left₀](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/inv-left--7522450032c5edd95907cb55.md) | 68 | `result-track:7522450032c5edd95907cb55fe466b6c9f75a6f2d801672d5c92c476419bdd47` |
| 8 | `theorem` | [inv_right_iff₀](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/inv-right-iff--5e3ae4b810ca36985c953b2e.md) | 73 | `result-track:5e3ae4b810ca36985c953b2ed335def24049ef34aae8f61390c2563ff49c1edf` |
| 9 | `theorem` | [inv_right₀](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/inv-right--6e100c9e952b0f2ced35b09b.md) | 77 | `result-track:6e100c9e952b0f2ced35b09bd4241b40734c0a59c3090820ae57620b311b5178` |
| 10 | `theorem` | [div_right](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/div-right--83fd0597be459d6b9181b5ee.md) | 82 | `result-track:83fd0597be459d6b9181b5eee5c328da76ba7062b189312d897d8a44213f845f` |
| 11 | `theorem` | [div_left](../../../../mathematics/Algebra/Commute/Variant5a299ca001e57ec6526aa484bb02222ef8dfa9e2794792cce6949be429a3e9fa.lean/declarations/div-left--3a60fddf3845b017d272c9b4.md) | 87 | `result-track:3a60fddf3845b017d272c9b40c6114c8f08eb3bf583e8613ec65aa83aeb515aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
