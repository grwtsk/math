# Verification target: GRWTSK.Analysis.AbsConvexOpen.Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1ef2911a581d49024350691542d22cd365717a8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/index.md) · [Full source](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1ef2911a581d49024350691542d22cd365717a8`.

Source path: `GRWTSK/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.AbsConvex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsConvexOpenSets](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/absconvexopensets--797bfd37eda6eb19db62f849.md) | 52 | `declaration-track:797bfd37eda6eb19db62f84970753865074db236c4e9c1c09f6c0102e61084f3` |
| 2 | `instance` | [AbsConvexOpenSets.instCoeOut](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/absconvexopensets-instcoeout--52968051ac704d99db1d4e91.md) | 55 | `declaration-track:52968051ac704d99db1d4e9168036f77690bbc29aeb5f15750033163769cfba5` |
| 3 | `theorem` | [coe_zero_mem](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/coe-zero-mem--b5b136106d9a164055394e6c.md) | 62 | `result-track:b5b136106d9a164055394e6c33d63150eb77bfdfe1c022ba62a16f014c7bc1ab` |
| 4 | `theorem` | [coe_isOpen](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/coe-isopen--4e7a684e4bac9e68ac4e4042.md) | 65 | `result-track:4e7a684e4bac9e68ac4e4042647ff37b8b29275a764920ca3950bf182f8f35bb` |
| 5 | `theorem` | [coe_nhds](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/coe-nhds--b4854b310899e0f9404b1cc9.md) | 68 | `result-track:b4854b310899e0f9404b1cc971706409497235068441c9b3a4b6636e7cf40d2e` |
| 6 | `theorem` | [coe_balanced](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/coe-balanced--f0c66ad5fc4bd82cdb2706cb.md) | 71 | `result-track:f0c66ad5fc4bd82cdb2706cb195daec807631814397e7f0a722b927ef07e93f7` |
| 7 | `theorem` | [coe_convex](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/coe-convex--4f59635847456e2a0884e6d1.md) | 74 | `result-track:4f59635847456e2a0884e6d137e41aaaaf836d3bd29ec515b0f8862e59a1a4a8` |
| 8 | `instance` | [AbsConvexOpenSets.instNonempty](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/absconvexopensets-instnonempty--f77ca486298f1623c10c3f49.md) | 79 | `declaration-track:f77ca486298f1623c10c3f4980f5631c0707653e10c4975318bdc3344a3798b4` |
| 9 | `def` | [gaugeSeminormFamily](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/gaugeseminormfamily--e0c70755ef90462db672558a.md) | 94 | `declaration-track:e0c70755ef90462db672558ad8b069ffbeb2e32592391be0617b6f7ed05289d8` |
| 10 | `theorem` | [gaugeSeminormFamily_ball](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/gaugeseminormfamily-ball--7eeb2676274905651c578bbd.md) | 99 | `result-track:7eeb2676274905651c578bbdecc0a7cdc15e4e61333a7035b48e0a23aacd7367` |
| 11 | `theorem` | [with_gaugeSeminormFamily](../../../../mathematics/Analysis/AbsConvexOpen/Variant789ddb80aa050fd311a6670453bbbe8325343ccfdb39cc93796bc55a20a82c1f.lean/declarations/with-gaugeseminormfamily--45ccf9a1196b64c4bdd585c6.md) | 110 | `result-track:45ccf9a1196b64c4bdd585c6a4fcb9ed2fef0953566f94bb60931b1546996d13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
