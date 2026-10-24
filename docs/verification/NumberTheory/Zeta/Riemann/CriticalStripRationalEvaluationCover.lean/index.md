# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluationCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fc2fdfed35a5f4ff9b243deb466fbf014886d07",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fc2fdfed35a5f4ff9b243deb466fbf014886d07`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluationPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationPatch.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripZeroPermittingExtension`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coverCheck](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/covercheck--6957984c5e5f20c72110c039.md) | 23 | `declaration-track:6957984c5e5f20c72110c039c84f76eb0fb7964c21366413f05cbf5e31140249` |
| 2 | `lemma` | [coverCheck_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/covercheck-iff--77d64b67046a9e9ff4a20c7a.md) | 26 | `result-track:77d64b67046a9e9ff4a20c7ac634d21d2d67239b815de3928405fb286ade38d4` |
| 3 | `def` | [checkedCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/checkedcover--a9394e3b9bec7b4313f45d2f.md) | 32 | `declaration-track:a9394e3b9bec7b4313f45d2f42843eba1cda985a1f985456399238053d093938` |
| 4 | `theorem` | [cover_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/cover-nonempty--9705122a6e283cb8a7fee7cd.md) | 40 | `result-track:9705122a6e283cb8a7fee7cdb50cbe8bf9bb70c58e94abfbecde17e0538a6b0c` |
| 5 | `theorem` | [cover_count_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/cover-count-pos--1226886c39b697b0474c8b98.md) | 46 | `result-track:1226886c39b697b0474c8b98c38918d55ce8818e1ed2ffec3d3d50f5f4cc5380` |
| 6 | `theorem` | [cover_norm_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/cover-norm-lower--ea33edb35a9b11278ecf82df.md) | 51 | `result-track:ea33edb35a9b11278ecf82dffe84da31e08a379cd2a0a9974c6b219f02a96427` |
| 7 | `theorem` | [noTargetZero_of_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/notargetzero-of-check--004ac068468b0219bfe352dd.md) | 60 | `result-track:004ac068468b0219bfe352dd3c55581190c6e7548e8b9348970ddb95d5f2ec21` |
| 8 | `theorem` | [noTargetZero_reflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/notargetzero-reflected--038049df0c9a1dcead83cf1b.md) | 65 | `result-track:038049df0c9a1dcead83cf1ba221473952358bcdd94e20d33556ded972edb172` |
| 9 | `def` | [extendMixed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/extendmixed--1a2f9fbaa92c765aec710974.md) | 72 | `declaration-track:1a2f9fbaa92c765aec710974bfc4d593b2a0d8afbe031abfad60fb31b20c75df` |
| 10 | `theorem` | [extendMixed_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/extendmixed-count--239210cb3f80c29f8303f1d4.md) | 77 | `result-track:239210cb3f80c29f8303f1d42e5fea5d893758dcabef8d93e333dee44d2c34a5` |
| 11 | `theorem` | [extendMixed_regions](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/extendmixed-regions--8e2bf1143346db9e8e9e6bd5.md) | 81 | `result-track:8e2bf1143346db9e8e9e6bd50159b24949f231d1c818542568c539ea27226a67` |
| 12 | `theorem` | [noTargetZero_on_subset](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/notargetzero-on-subset--4998587527973806cf825621.md) | 87 | `result-track:4998587527973806cf825621485fe40f9e0727040945ef862b21b2f983fddbd4` |
| 13 | `theorem` | [window_successor_of_mixed_extension](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluationCover.lean/declarations/window-successor-of-mixed-extension--a4e9afa14ad98f563e53710a.md) | 94 | `result-track:a4e9afa14ad98f563e53710a13261ddf030717447c35b457ab93ec1db4d8371b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
