# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bisection.Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "781efbca1cefe925ae0a4bb5573a26ee4e906ed4",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `781efbca1cefe925ae0a4bb5573a26ee4e906ed4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.RootFinding.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BisectionResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisectionresult--609d52dec7c603e30c405296.md) | 42 | `declaration-track:609d52dec7c603e30c4052968f015c4062937c1679b9b7d642dfd2790b15156e` |
| 2 | `def` | [candidates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/candidates--8e478f9de68f3004d51fa008.md) | 51 | `declaration-track:8e478f9de68f3004d51fa0080021963f862b2deeddf1843f06666095c4dd1ff1` |
| 3 | `def` | [statuses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/statuses--323ba770bb1cbde0c4c1fa7a.md) | 55 | `declaration-track:323ba770bb1cbde0c4c1fa7aaee440a80bb54bf37be08c1505ad8180bf201f9c` |
| 4 | `def` | [bisectRootGo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisectrootgo--d2b0d01f60e817755a7f9265.md) | 69 | `declaration-track:d2b0d01f60e817755a7f9265c30616abf0967955efa06f29c521c8f90995c68c` |
| 5 | `def` | [bisectRoot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisectroot--eaadeb40c7bf972d28ef71aa.md) | 107 | `declaration-track:eaadeb40c7bf972d28ef71aa302a835d0ba8af390d3d464a97d992c7a8053283` |
| 6 | `theorem` | [checkRootStatus_noRoot_implies_excludesZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/checkrootstatus-noroot-implies-excludeszero--45b6cc91beb91b86082c0532.md) | 114 | `result-track:45b6cc91beb91b86082c0532e359a4978a7a46e4e8279302e86a5c8e23855d8d` |
| 7 | `theorem` | [checkRootStatus_hasRoot_implies_signChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/checkrootstatus-hasroot-implies-signchange--f7e4d90cd5788fc8a055ce72.md) | 128 | `result-track:f7e4d90cd5788fc8a055ce72c45fc7f60f0e49d32e0d627f0e343087b1d27487` |
| 8 | `def` | [BisectInv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisectinv--28a8f31419d3061ccbbdab0d.md) | 145 | `declaration-track:28a8f31419d3061ccbbdab0d2d36fbe91bbf018d26d59269d33e1291f2462d53` |
| 9 | `def` | [SubIntervalInv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/subintervalinv--c56b2d78b4fa2e9e418da2ce.md) | 149 | `declaration-track:c56b2d78b4fa2e9e418da2cec8874840de29d977268789dedb0372f312655bfa` |
| 10 | `theorem` | [bisect_inv_initial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisect-inv-initial--be77cf00f3ec571994b51d1b.md) | 153 | `result-track:be77cf00f3ec571994b51d1b611657bcf6ffa81680c3c65156aa31321d33b5a5` |
| 11 | `theorem` | [subinterval_inv_initial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/subinterval-inv-initial--8f108f8f082acbd255282baa.md) | 162 | `result-track:8f108f8f082acbd255282baaccc9d878b8259983495c212c10c3f0ed8f500339` |
| 12 | `theorem` | [bisect_inv_cons_hasRoot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisect-inv-cons-hasroot--e79e0c2bcb1e117a46425ecd.md) | 171 | `result-track:e79e0c2bcb1e117a46425ecdf55ee00520646f5a411645a0bd3626e7943723f9` |
| 13 | `theorem` | [bisect_inv_cons_other](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisect-inv-cons-other--161899fa3fe13f634c615872.md) | 184 | `result-track:161899fa3fe13f634c6158720b5708ac266c8f62efb10e131aefd2d4f6cc6568` |
| 14 | `theorem` | [bisect_inv_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisect-inv-append--f81fc3f7432d927e2cef28e6.md) | 197 | `result-track:f81fc3f7432d927e2cef28e6ff106fe520a98df715ff07d613164d66a32369e4` |
| 15 | `theorem` | [subinterval_inv_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/subinterval-inv-append--afe341fc5b08dbe66652d712.md) | 207 | `result-track:afe341fc5b08dbe66652d712e524b4248f328deb6d451ece4ac5e5c10b1a0438` |
| 16 | `theorem` | [subinterval_inv_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/subinterval-inv-cons--cb6b020f669a23b259a919aa.md) | 217 | `result-track:cb6b020f669a23b259a919aa6f7ae7e7a35bd965b46139b2ef627c4ac091791f` |
| 17 | `theorem` | [bisect_subinterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisect-subinterval--de768dc58cf91b9de2a57b65.md) | 231 | `result-track:de768dc58cf91b9de2a57b652f331f6b844a3b45f9c1380c042ec2aa2d4fd208` |
| 18 | `theorem` | [go_noRoot_not_in_output](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/go-noroot-not-in-output--0f7df4ad1f9f083c14b6b035.md) | 254 | `result-track:0f7df4ad1f9f083c14b6b0359cd4d6f3fb9488301412603b1302055d5b386845` |
| 19 | `theorem` | [go_hasRoot_has_signChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/go-hasroot-has-signchange--df6c30cd3854b8c3bfc55daf.md) | 347 | `result-track:df6c30cd3854b8c3bfc55daf27a0cec7b94560aee459172df1c1ace460777444` |
| 20 | `theorem` | [go_subinterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/go-subinterval--c94db97a17e31cc52656fcfc.md) | 428 | `result-track:c94db97a17e31cc52656fcfc479487d5e8692c2a4bec80bf46d3f5d13b5858fe` |
| 21 | `theorem` | [bisectRoot_hasRoot_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisectroot-hasroot-correct--05b205bd1700bd0b4df1ae18.md) | 524 | `result-track:05b205bd1700bd0b4df1ae184239fee8cf9b7ffe7c3861c19394bee471ab24e3` |
| 22 | `theorem` | [bisectRoot_noRoot_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/declarations/bisectroot-noroot-correct--6f61ac03362904685fe22c27.md) | 566 | `result-track:6f61ac03362904685fe22c27f2e70d6f400b36ad54baf84d312f1cff4f1a58fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
