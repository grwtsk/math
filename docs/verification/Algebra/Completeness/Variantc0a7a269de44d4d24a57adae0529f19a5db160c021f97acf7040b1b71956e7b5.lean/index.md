# Verification target: GRWTSK.Algebra.Completeness.Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04a63bf8866ef608f3fe04f0d99d5fa92c7044a4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04a63bf8866ef608f3fe04f0d99d5fa92c7044a4`.

Source path: `GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Topology` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ofPowSMul](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofpowsmul--ba5d4d43b268fc9fd075d5d6.md) | 67 | `declaration-track:ba5d4d43b268fc9fd075d5d6c5075677dd75c5ac13aaa0ba29f1034ebc106e93` |
| 2 | `theorem` | [ofPowSMul_val_apply](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofpowsmul-val-apply--cb138679d7e9aa577a0e610d.md) | 70 | `result-track:cb138679d7e9aa577a0e610d613022289658af7a1f76440d22694f03d01ab619` |
| 3 | `theorem` | [ofPowSMul_val_apply_eq_zero](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofpowsmul-val-apply-eq-zero--a5249dff2ea56843c96f924a.md) | 76 | `result-track:a5249dff2ea56843c96f924acb254ec62542fe9a05388fddb17eae3d13d61daf` |
| 4 | `theorem` | [ofPowSMul_injective](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofpowsmul-injective--0364ae0823e1964f7629f8e7.md) | 82 | `result-track:0364ae0823e1964f7629f8e79c642f82c11c6ee9b97f8ef4bd82b0595b1282e3` |
| 5 | `lemma` | [ofValEqZeroAux_exists](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofvaleqzeroaux-exists--4a4044aca49864757c8944a9.md) | 91 | `result-track:4a4044aca49864757c8944a9c86fdc5c09e11b13a97fca78e3776dd5e1dba7a8` |
| 6 | `def` | [ofValEqZeroAux](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofvaleqzeroaux--4ee64bd38889b09e8fae82ee.md) | 98 | `declaration-track:4ee64bd38889b09e8fae82ee7c7e4f0ffab27383d964c1ae26cba1a0ff38971c` |
| 7 | `lemma` | [ofValEqZeroAux_prop](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofvaleqzeroaux-prop--cfedeceaa35b29210fc4134d.md) | 102 | `result-track:cfedeceaa35b29210fc4134d78433b6e46af5901ccf7887e0ba51ddc213a8741` |
| 8 | `def` | [ofValEqZero](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofvaleqzero--188b5b6dd259c5e6391541ea.md) | 108 | `declaration-track:188b5b6dd259c5e6391541ea13f7871de77251f45b284eb96827b071f7b93ab3` |
| 9 | `theorem` | [ofPowSMul_ofValEqZero](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ofpowsmul-ofvaleqzero--9848947f4760a011568d9617.md) | 119 | `result-track:9848947f4760a011568d96179e911ec8cba659130d7664d2523b0286590cc27c` |
| 10 | `theorem` | [restrictScalars_range_ofPowSMul_eq_ker_eval](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/restrictscalars-range-ofpowsmul-eq-ker-eval--ee473113c997aeb3eff8f68b.md) | 126 | `result-track:ee473113c997aeb3eff8f68b0a40da6979d09dcfa89870a884fbb3ed22ebb557` |
| 11 | `lemma` | [lsum_smul_comp_finsuppLEquivDirectSum_symm](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/lsum-smul-comp-finsupplequivdirectsum-symm--d9153b34a7d24532aff7160c.md) | 143 | `result-track:d9153b34a7d24532aff7160c3123102bdbc313abf17beac1b3d72abfd1b2d544` |
| 12 | `theorem` | [pow_smul_top_eq_ker_eval](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/pow-smul-top-eq-ker-eval--8ebced04413c0ea13a5b1c58.md) | 162 | `result-track:8ebced04413c0ea13a5b1c5825c94ab93a6228676fcc1af961b4f5a0802f7260` |
| 13 | `theorem` | [isAdicComplete](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/isadiccomplete--abdcb6c6681fae394eef9095.md) | 192 | `result-track:abdcb6c6681fae394eef90953db2bfaed2ed58689e70f0afeff00560cb88bc4c` |
| 14 | `lemma` | [ker_evalOneₐ_eq_map](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/ker-evalone-eq-map--c2e916d644195a97eab27095.md) | 206 | `result-track:c2e916d644195a97eab27095c74397bffd7f6a2c4d8c25b4e2c1f19827712ea4` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/instance--61bd2f74c10237392f3d35d1.md) | 221 | `declaration-track:61bd2f74c10237392f3d35d1316a806bbf7d4a182b13dffb29a079f0eac788df` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean/declarations/instance--fd6a913ce0be59d1622eb9b7.md) | 236 | `declaration-track:fd6a913ce0be59d1622eb9b7f75935b78e17ecacdd8fc09757d730e673d7d678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
