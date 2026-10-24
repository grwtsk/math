# Verification target: GRWTSK.Analysis.MeasureTheory.Sub.Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "490d8ce8daba160d2b7ac19049c2324e03546d67",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `490d8ce8daba160d2b7ac19049c2324e03546d67`.

Source path: `GRWTSK/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/instsub--23e78ab75fccb526c482c379.md) | 31 | `declaration-track:23e78ab75fccb526c482c379608a6ac3532256a575d90aa42e8e3d9c0312492d` |
| 2 | `theorem` | [sub_def](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-def--b6923986b6d64528f8aa9e94.md) | 36 | `result-track:b6923986b6d64528f8aa9e942536511bd8a2dbcd1e07e6c4fe61d8b9019fedd7` |
| 3 | `theorem` | [sub_le_of_le_add](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-le-of-le-add--a57e96fdc28a852708cf33e9.md) | 38 | `result-track:a57e96fdc28a852708cf33e93ba8dba97fd587feef44a45871e7768ecbe74384` |
| 4 | `theorem` | [sub_eq_zero_of_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-eq-zero-of-le--0f8c6d6683d74617b35d3d9f.md) | 41 | `result-track:0f8c6d6683d74617b35d3d9f8f7cc8e31b6c0568b295793c78b3267991680587` |
| 5 | `theorem` | [sub_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-le--d5dac45c17a3be9fd6e6e3c5.md) | 44 | `result-track:d5dac45c17a3be9fd6e6e3c5ca3f6c30f9a8c7faab787a020fb8f7c79fa9ed86` |
| 6 | `theorem` | [sub_top](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-top--3f553cb46d77dd45ac73627b.md) | 48 | `result-track:3f553cb46d77dd45ac73627b89f993fd014fc92b4c9a4bf0b449f074875afcc9` |
| 7 | `theorem` | [zero_sub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/zero-sub--5b404064d1e3caf3c6a80a2b.md) | 52 | `result-track:5b404064d1e3caf3c6a80a2bb7e0cae92887043bdc27109b878a66eaf8b0e005` |
| 8 | `theorem` | [sub_self](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-self--f6e20cabe7972f7bfb877fc1.md) | 56 | `result-track:f6e20cabe7972f7bfb877fc1c1caf68b5116b6011470f2b3e3055d99476faa44` |
| 9 | `theorem` | [sub_apply](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-apply--405bca6522124125ec9abbb6.md) | 61 | `result-track:405bca6522124125ec9abbb6fc8bdd459e74c87bce40a03dc94d97a82acc4172` |
| 10 | `theorem` | [sub_add_cancel_of_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-add-cancel-of-le--a6906fdb935d8d4e9aa37c28.md) | 89 | `result-track:a6906fdb935d8d4e9aa37c28ade42ddc7c58e6b918268bd0f958ea071d0d272b` |
| 11 | `lemma` | [add_sub_cancel](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/add-sub-cancel--99de68b770afaf1ebdf192b3.md) | 94 | `result-track:99de68b770afaf1ebdf192b37dc1b3ef3cabc5638ec87385ef14797983c5a39f` |
| 12 | `theorem` | [restrict_sub_eq_restrict_sub_restrict](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/restrict-sub-eq-restrict-sub-restrict--684fb78ab4b7a1fc377bec8a.md) | 99 | `result-track:684fb78ab4b7a1fc377bec8aeb982930487cda113e551dc0374dfb783599c234` |
| 13 | `theorem` | [sub_apply_eq_zero_of_restrict_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/sub-apply-eq-zero-of-restrict-le-restrict--f5aa74a3efd975f3a65634c7.md) | 130 | `result-track:f5aa74a3efd975f3a65634c7bff3ec2eddf5e91485d9c5e7f0e2c6880fdb5e9e` |
| 14 | `instance` | [isFiniteMeasure_sub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantab686d169fe4359c86d277141131da75a37c8e543fc2055d79c9d44cb32171f4.lean/declarations/isfinitemeasure-sub--f95e54baeef66df06c8449c0.md) | 134 | `declaration-track:f95e54baeef66df06c8449c05137e1c91a8162be251f15bed4fe41ce82d085e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
