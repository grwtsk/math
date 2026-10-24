# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeparationQuotient.Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa14e9280b8fcbd57a52af1092ba090d9d3e0136",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa14e9280b8fcbd57a52af1092ba090d9d3e0136`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Hom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normedMk](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/normedmk--4e1e4f5beac2978df1642728.md) | 56 | `declaration-track:4e1e4f5beac2978df1642728caeb28b908750d62f279eade627bb9b629db4111` |
| 2 | `theorem` | [norm_normedMk_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/norm-normedmk-le--f0b6ea78a41e8f01d1d2c640.md) | 61 | `result-track:f0b6ea78a41e8f01d1d2c6407ec9be4c908b1f94138bd296f466e404c55c66f6` |
| 3 | `lemma` | [apply_eq_apply_of_inseparable](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/apply-eq-apply-of-inseparable--947930298bfa337df0b5ed5c.md) | 64 | `result-track:947930298bfa337df0b5ed5c15c83c7c33bf18fcdd6e3225dfd70b7aa0d8189e` |
| 4 | `def` | [liftNormedAddGroupHom](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/liftnormedaddgrouphom--400af6a8a665417e896101b8.md) | 73 | `declaration-track:400af6a8a665417e896101b832b32d39ae17709b53abcbcb5e4c73f4d3e1e23b` |
| 5 | `theorem` | [norm_liftNormedAddGroupHom_apply_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/norm-liftnormedaddgrouphom-apply-le--0114d6050db94efbc599382a.md) | 82 | `result-track:0114d6050db94efbc599382adea9ee0e95097b10c615dbe3fa387341b4c89ad8` |
| 6 | `def` | [liftNormedAddGroupHomEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/liftnormedaddgrouphomequiv--b879b1bf95ee8e7fab786aea.md) | 91 | `declaration-track:b879b1bf95ee8e7fab786aea7e512805f928641126901f0c665aeed57d9a10cc` |
| 7 | `theorem` | [norm_liftNormedAddGroupHom_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/norm-liftnormedaddgrouphom-le--d5d0043e9508054d39bed52d.md) | 107 | `result-track:d5d0043e9508054d39bed52d53cc9a492df93f79092b5ffb9a207aca3b9b01d3` |
| 8 | `theorem` | [liftNormedAddGroupHom_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/liftnormedaddgrouphom-norm-le--0cee799ffba64f67af242e96.md) | 112 | `result-track:0cee799ffba64f67af242e96926768605ff156bf24d185f7c65bfffa20205516` |
| 9 | `theorem` | [liftNormedAddGroupHom_normNoninc](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/liftnormedaddgrouphom-normnoninc--cdb208784632d67352fa9b32.md) | 117 | `result-track:cdb208784632d67352fa9b327975bbe7e7090553f02ee02b4894a79b66d39231` |
| 10 | `theorem` | [norm_normedMk_eq_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/norm-normedmk-eq-one--546d84d2f3831a18d53961ad.md) | 126 | `result-track:546d84d2f3831a18d53961addbc11335d4981b0b9eac2edc6b334aa49902ea28` |
| 11 | `theorem` | [normedMk_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant7cdf5de6ab438238d66a0ae2740219de3716682aeefd1967b578293517452bca.lean/declarations/normedmk-eq-zero-iff--608450d8ce3eec7497004f61.md) | 135 | `result-track:608450d8ce3eec7497004f61c20bf86f41323f5c48dffc5526425485a3247dad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
