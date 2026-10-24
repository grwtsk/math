# Verification target: GRWTSK.Algebra.Completeness.Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaaca5e9a5fb4f675df822a02498732376c6b9b3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaaca5e9a5fb4f675df822a02498732376c6b9b3`.

Source path: `GRWTSK/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Topology` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ofPowSMul](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofpowsmul--c5662be846ee5a685c3e89ab.md) | 59 | `declaration-track:c5662be846ee5a685c3e89abf0f03fe38396268d03a8db8dde60885f4c29a59d` |
| 2 | `theorem` | [ofPowSMul_val_apply](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofpowsmul-val-apply--5c9b4c611fa44096902ba837.md) | 62 | `result-track:5c9b4c611fa44096902ba837d0c5064b70350cef7e498b838d7048c404f49fef` |
| 3 | `theorem` | [ofPowSMul_val_apply_eq_zero](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofpowsmul-val-apply-eq-zero--8603635673c3e1d08caab417.md) | 68 | `result-track:8603635673c3e1d08caab41750917a5eb374b865d07c623be9d8f87046ba880a` |
| 4 | `theorem` | [ofPowSMul_injective](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofpowsmul-injective--810cc9e5c6fc641bf99bdece.md) | 74 | `result-track:810cc9e5c6fc641bf99bdece6c0d32af1346924dc215c08d46d6811e54086181` |
| 5 | `lemma` | [ofValEqZeroAux_exists](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofvaleqzeroaux-exists--a2965c338e86f7a196258260.md) | 83 | `result-track:a2965c338e86f7a196258260e5cd686f89452941947e5190c7ce0b946b669f35` |
| 6 | `def` | [ofValEqZeroAux](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofvaleqzeroaux--56cd05dee3ec776c0c529e5a.md) | 90 | `declaration-track:56cd05dee3ec776c0c529e5a9d96fe1864f579da1355e0582b26a0fabb5626df` |
| 7 | `lemma` | [ofValEqZeroAux_prop](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofvaleqzeroaux-prop--549f133084c7855c119be1c2.md) | 94 | `result-track:549f133084c7855c119be1c2674639b6f9652d1f1ad922c2475ad753aa825df8` |
| 8 | `def` | [ofValEqZero](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofvaleqzero--276e5e00e055f3382c1a9c2c.md) | 100 | `declaration-track:276e5e00e055f3382c1a9c2c2b8213ae540cf6a2c3049e33c5e9734a8bc59f9b` |
| 9 | `theorem` | [ofPowSMul_ofValEqZero](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ofpowsmul-ofvaleqzero--a807cb55088057b39aba46f0.md) | 111 | `result-track:a807cb55088057b39aba46f04a9baa6eced66fc7a986d20320c202371465ba8e` |
| 10 | `theorem` | [restrictScalars_range_ofPowSMul_eq_ker_eval](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/restrictscalars-range-ofpowsmul-eq-ker-eval--3a62ff0263dd989d97d88a0f.md) | 118 | `result-track:3a62ff0263dd989d97d88a0f053caff048fe176f4240d410469bad6bbb8c9e06` |
| 11 | `lemma` | [lsum_smul_comp_finsuppLEquivDirectSum_symm](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/lsum-smul-comp-finsupplequivdirectsum-symm--051ec2d4ca20c4f8b7e22a84.md) | 135 | `result-track:051ec2d4ca20c4f8b7e22a84266659e0b56d563a650a56e64fbbf22e5f8ed4a4` |
| 12 | `theorem` | [pow_smul_top_eq_ker_eval](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/pow-smul-top-eq-ker-eval--af51d41bb423c037acc4270b.md) | 154 | `result-track:af51d41bb423c037acc4270b224fa6c3b4913000b58a27377c3bcae6971663cb` |
| 13 | `theorem` | [isAdicComplete](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/isadiccomplete--eda820238ccfba15ec196034.md) | 184 | `result-track:eda820238ccfba15ec1960347268c69af48deb1c023630195260b7b73b44367f` |
| 14 | `lemma` | [ker_evalOneₐ_eq_map](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/ker-evalone-eq-map--fbed49bf23ec7ac28f8328bb.md) | 198 | `result-track:fbed49bf23ec7ac28f8328bb1985ec4305a305685bb89c4c8315a2f5fd479672` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/instance--8bce811eeb0bde317e89c5e1.md) | 213 | `declaration-track:8bce811eeb0bde317e89c5e1570ade79282f86f3afd0efb0369fde13fd134c97` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/declarations/instance--c96e6ac32731597a95ac2595.md) | 228 | `declaration-track:c96e6ac32731597a95ac25950bb317ee4f48e41daa25d24e94a7d9f0e14c5aa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
