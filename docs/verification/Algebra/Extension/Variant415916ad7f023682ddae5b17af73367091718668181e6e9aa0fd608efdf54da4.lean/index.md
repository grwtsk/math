# Verification target: GRWTSK.Algebra.Extension.Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc8edaa901a98c2486f528a2cdf812bf97c92ab3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc8edaa901a98c2486f528a2cdf812bf97c92ab3`.

Source path: `GRWTSK/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_primesOver_of_isPrime](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/mem-primesover-of-isprime--6438111e0b926e906c305262.md) | 58 | `result-track:6438111e0b926e906c3052624cf6131efa7434f63b80efb817e29aecf93fd1ac` |
| 2 | `theorem` | [liesOver_comap_of_liesOver](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/liesover-comap-of-liesover--9e592c89822ab505f56f249d.md) | 64 | `result-track:9e592c89822ab505f56f249d3478a26ae3b13f96a8a447047a2472a34fecbaf6` |
| 3 | `theorem` | [liesOver_map_of_liesOver](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/liesover-map-of-liesover--6367108da861b9d968ee2f23.md) | 73 | `result-track:6367108da861b9d968ee2f238ce6c8d5dd437778749ccd28337b5212c27f2706` |
| 4 | `theorem` | [exists_algebraMap_quot_eq_of_mem_quot](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/exists-algebramap-quot-eq-of-mem-quot--ae44ebe274d9afb1d7028dd7.md) | 84 | `result-track:ae44ebe274d9afb1d7028dd7ce50c45d7fb0216a2e8cce7f7adb392c07d829a9` |
| 5 | `def` | [equivQuotientMapOfIsMaximal](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/equivquotientmapofismaximal--7335c6646649d86291c8e245.md) | 108 | `declaration-track:7335c6646649d86291c8e2454fd65ab2377c3fd984b3e42279420d6f4105c135` |
| 6 | `theorem` | [equivQuotientMapOfIsMaximal_apply_mk](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/equivquotientmapofismaximal-apply-mk--4986c02a1cdeb44c911c1413.md) | 118 | `result-track:4986c02a1cdeb44c911c141315cb795746a4d8ce58faa0b9f3105f29e54b1b82` |
| 7 | `theorem` | [equivQuotientMapOfIsMaximal_symm_apply_mk](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/equivquotientmapofismaximal-symm-apply-mk--74f0b70475823902a8234c86.md) | 123 | `result-track:74f0b70475823902a8234c86dfc1b958b60fa4842a59d6966eac30f45fc7cf9c` |
| 8 | `theorem` | [algebraMap_equivQuotMaximalIdeal_symm_apply](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/algebramap-equivquotmaximalideal-symm-apply--9ce5eec497bdd0fda29bc78a.md) | 153 | `result-track:9ce5eec497bdd0fda29bc78a796132a37ae1cfbdf35f86f1f482f41c63d8a003` |
| 9 | `theorem` | [equivQuotientMapMaximalIdeal_apply_mk](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/equivquotientmapmaximalideal-apply-mk--92eed40de6cf1e303c8b084b.md) | 167 | `result-track:92eed40de6cf1e303c8b084b6dd8f7b1ff414137a02fab85b93a647f16f87c48` |
| 10 | `theorem` | [inertiaDeg_map_eq_inertiaDeg](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/inertiadeg-map-eq-inertiadeg--653d123cd563d87cb8f2a776.md) | 171 | `result-track:653d123cd563d87cb8f2a7765b6a0b1c339e98ae928a2fd9fdef780e88d17220` |
| 11 | `theorem` | [ramificationIdx_map_eq_ramificationIdx](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/ramificationidx-map-eq-ramificationidx--3d487f9dd7edfe86ff82ab8e.md) | 182 | `result-track:3d487f9dd7edfe86ff82ab8ebb5cf267915f19bdff984231f216c57c467a57f7` |
| 12 | `def` | [primesOverEquivPrimesOver](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/primesoverequivprimesover--239a025a0b504077d16130a9.md) | 218 | `declaration-track:239a025a0b504077d16130a9f2a2958b08004b244bd2a22266973c0a2ea4d6a6` |
| 13 | `theorem` | [primesOverEquivPrimesOver_apply](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/primesoverequivprimesover-apply--805c61e1d843610d7fb42aa1.md) | 236 | `result-track:805c61e1d843610d7fb42aa15fea49cb5c750f00c5358997e341f5972ac7aff0` |
| 14 | `theorem` | [primesOverEquivPrimesOver_symm_apply](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/primesoverequivprimesover-symm-apply--e532696b75de2f9359a5865d.md) | 240 | `result-track:e532696b75de2f9359a5865dc6fd963cbcb72aa1a4137d07dfd81aa80a7fcccf` |
| 15 | `theorem` | [primesOverEquivPrimesOver_inertiagDeg_eq](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/primesoverequivprimesover-inertiagdeg-eq--fecbf6ae8b4346d58b88ab50.md) | 243 | `result-track:fecbf6ae8b4346d58b88ab50525c3b93877f9f49dae693124072b108b2804fec` |
| 16 | `theorem` | [primesOverEquivPrimesOver_ramificationIdx_eq](../../../../mathematics/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/declarations/primesoverequivprimesover-ramificationidx-eq--929d6ab48f5ed8222efb4eb0.md) | 252 | `result-track:929d6ab48f5ed8222efb4eb0a557775b212e8140686f513e799fb00cae90a109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
