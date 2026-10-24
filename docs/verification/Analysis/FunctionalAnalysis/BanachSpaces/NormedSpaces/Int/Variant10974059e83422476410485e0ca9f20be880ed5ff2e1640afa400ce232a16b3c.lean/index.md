# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Int.Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e7cdbb8d7f6bfab0139f62409d432580ddd7613",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e7cdbb8d7f6bfab0139f62409d432580ddd7613`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNormedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/instnormedaddcommgroup--cc73b8df636c4566853a0f5a.md) | 25 | `declaration-track:cc73b8df636c4566853a0f5a9d4981939b6635bed3c9da3d8c4e1b642e671611` |
| 2 | `theorem` | [norm_cast_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/norm-cast-real--fc439a319d74869c3bdd3706.md) | 30 | `result-track:fc439a319d74869c3bdd3706c3d13469e4b465fb305d22538311adaf3c1e3857` |
| 3 | `theorem` | [norm_eq_abs](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/norm-eq-abs--6ffdb18baeeacd60116b3180.md) | 33 | `result-track:6ffdb18baeeacd60116b3180eb2d7a206e0a6a42795bf38ca88eedb3638ffa7b` |
| 4 | `theorem` | [norm_natCast](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/norm-natcast--64061c0f38b181e82e715ce4.md) | 37 | `result-track:64061c0f38b181e82e715ce493da6593026b303b90726d6e6b619a46a37622c5` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormCastReal.Variant58730307d7d8539006280bdabb1277697375cbb8877a2fa00ca39c15d1559114.NNReal.natCast_natAbs](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/root-grwtsk-analysis-functionalanalysis-banachspaces-normedspaces-normca--8013e6f0ff01936bf8c113ae.md) | 39 | `result-track:8013e6f0ff01936bf8c113ae112879a7f668d83eb9a9ebab12177387c4e8a8b7` |
| 6 | `theorem` | [abs_le_floor_nnreal_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/abs-le-floor-nnreal-iff--0279a6e49cf3acd78e06293e.md) | 46 | `result-track:0279a6e49cf3acd78e06293ef2d534a9e0ebc1358eff3c0ea29a1d0eb7c01a81` |
| 7 | `theorem` | [norm_zpow_le_mul_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/norm-zpow-le-mul-norm--d0fcd03cfea37f26162f5e74.md) | 58 | `result-track:d0fcd03cfea37f26162f5e748ed651aa7a08cdfc5ba3f05df03a33cb9a66ecf0` |
| 8 | `theorem` | [nnnorm_zpow_le_mul_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variant10974059e83422476410485e0ca9f20be880ed5ff2e1640afa400ce232a16b3c.lean/declarations/nnnorm-zpow-le-mul-norm--dba2b321d1915ee9114ebffe.md) | 62 | `result-track:dba2b321d1915ee9114ebffe101ebd25cbc8ede14a7c14877b748ce8f2155873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
