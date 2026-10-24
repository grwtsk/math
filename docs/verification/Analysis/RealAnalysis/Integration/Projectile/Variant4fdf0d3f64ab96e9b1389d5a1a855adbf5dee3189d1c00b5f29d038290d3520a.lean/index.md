# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Projectile.Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2be5ed28c3796011b0697e170ce1be77ebdcd0a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2be5ed28c3796011b0697e170ce1be77ebdcd0a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [vsq_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/vsq-upper--f81b4978219ca0d270179ad1.md) | 44 | `result-track:f81b4978219ca0d270179ad129ab657b30f5b5e1caffbe4163885556cd590766` |
| 2 | `theorem` | [drag_accel_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/drag-accel-upper--174e70253b94c4c2765cbe95.md) | 49 | `result-track:174e70253b94c4c2765cbe9523a0a2ae3a1d69d7e68d4a0e537db27478f24a0e` |
| 3 | `theorem` | [drag_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/drag-nonneg--1d66cd157427d43b0bb41850.md) | 54 | `result-track:1d66cd157427d43b0bb41850561b4a4c53a3c42581357b8e21ee153368e725f1` |
| 4 | `theorem` | [net_accel_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/net-accel-lower--1247a31741c240dc932fa383.md) | 71 | `result-track:1247a31741c240dc932fa383d5cc8c559e2193e812c4a5ba83acf972f1ca1a4b` |
| 5 | `theorem` | [net_accel_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/net-accel-upper--6767d20388364aee4bb5a20a.md) | 75 | `result-track:6767d20388364aee4bb5a20a49fc22c59f8a02fc75c41f5c573a8498be3f5d24` |
| 6 | `theorem` | [kinetic_energy_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/kinetic-energy-upper--5c8763ae2b76cacf5ca38263.md) | 88 | `result-track:5c8763ae2b76cacf5ca382636f9d1095d60ebca29b0c60d920a635506bfec2cb` |
| 7 | `theorem` | [exp_decay_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/exp-decay-lower--f048dd907f454cdbce54b2a5.md) | 100 | `result-track:f048dd907f454cdbce54b2a536bde57197033476a53a7c594906f1fd6881fe35` |
| 8 | `theorem` | [exp_decay_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Projectile/Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a.lean/declarations/exp-decay-upper--bedd8820f7cf90ccd079fab5.md) | 104 | `result-track:bedd8820f7cf90ccd079fab5d5aad9478757394bd6d6c2fc44428260c19b9c47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
