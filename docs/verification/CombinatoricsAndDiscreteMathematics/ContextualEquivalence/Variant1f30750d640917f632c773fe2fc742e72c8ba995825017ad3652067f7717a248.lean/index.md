# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ContextualEquivalence.Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3afafccae646e5daa583652c73df9b33145db3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3afafccae646e5daa583652c73df9b33145db3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Concept` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProtectedFeatureProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/protectedfeatureprofile--21efd4f4df3d7b1f0fef6b4d.md) | 9 | `declaration-track:21efd4f4df3d7b1f0fef6b4dc882c26d489c373f8ab66827ac861a689276c19f` |
| 2 | `def` | [ExactContextualEquivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/exactcontextualequivalent--bcb692c4567f408b46fb3ca7.md) | 15 | `declaration-track:bcb692c4567f408b46fb3ca7b41687bf667da17db3c92cc5bd1b8a16436869c1` |
| 3 | `theorem` | [exactEquivalent_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/exactequivalent-refl--343348b8241ac7e90d700950.md) | 23 | `result-track:343348b8241ac7e90d7009509fdfacedfff115643103e82295ffc34065d2d50e` |
| 4 | `theorem` | [exactEquivalent_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/exactequivalent-symm--7c24100a57278af042e66c21.md) | 30 | `result-track:7c24100a57278af042e66c21e87dc3b3b285235f7371faf765179856b11c6718` |
| 5 | `theorem` | [exactEquivalent_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/exactequivalent-trans--ead63bbbcb43955e99ba7ec4.md) | 39 | `result-track:ead63bbbcb43955e99ba7ec4b90fb1835376b6eb6d9e425442d227d0d3362753` |
| 6 | `theorem` | [exact_contextual_equivalence_is_equivalence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/exact-contextual-equivalence-is-equivalence--985dfeee3c3fba7c84092c04.md) | 53 | `result-track:985dfeee3c3fba7c84092c046b489c117bf04693f0b2597856616207e9d50e64` |
| 7 | `def` | [exactContextualSetoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/exactcontextualsetoid--e9126859724612468c457cc5.md) | 63 | `declaration-track:e9126859724612468c457cc5068d6148bbd846a78773e597ae80b453ca26be4c` |
| 8 | `structure` | [FieldTolerance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/fieldtolerance--e1979202041a1360b21192d1.md) | 77 | `declaration-track:e1979202041a1360b21192d1e38a4874c097fb1410784ac7e94e7ec04838c48c` |
| 9 | `def` | [FieldTolerance.Accepts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/fieldtolerance-accepts--1dff2a0c601e52a275e96c3e.md) | 84 | `declaration-track:1dff2a0c601e52a275e96c3e1b5b93c4465ee796330ce158a4046db528644a9c` |
| 10 | `structure` | [ToleranceSpecification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/tolerancespecification--0022e2a0a57dc04eac25ace6.md) | 93 | `declaration-track:0022e2a0a57dc04eac25ace630b70f7e1fa2ec169f2c34fdf4a2d7640363f5f7` |
| 11 | `def` | [ProtectedFieldsEqual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/protectedfieldsequal--b8e7c97949a81ba34fb9588e.md) | 99 | `declaration-track:b8e7c97949a81ba34fb9588e1c1fbd0b0751e89b112eccdb4c0496adb1161e76` |
| 12 | `def` | [TolerableFieldsAccepted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/tolerablefieldsaccepted--1e2378fd94909c1d5b665b60.md) | 106 | `declaration-track:1e2378fd94909c1d5b665b60a85f0f303cfb0294fb98ad073ff4eebe148e1573` |
| 13 | `def` | [TolerablyEquivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/tolerablyequivalent--f79f4acfee3621a231388e5f.md) | 120 | `declaration-track:f79f4acfee3621a231388e5f8cf2adf2d31580ef48e03e174181078f0c6c0644` |
| 14 | `structure` | [ToleranceSetoidCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/tolerancesetoidcertificate--f929a9d69a20147beb1b9ea4.md) | 128 | `declaration-track:f929a9d69a20147beb1b9ea482190e4e046a938a4b577d1d4956d3fd0d2ad0c3` |
| 15 | `def` | [ToleranceSetoidCertificate.toSetoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/tolerancesetoidcertificate-tosetoid--cfa910293cb68b78b9d8a730.md) | 151 | `declaration-track:cfa910293cb68b78b9d8a73004f525128e2a1799a28d6f19125d34ad1ef7956e` |
| 16 | `structure` | [ToleranceQuotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/tolerancequotient--5101afcfc26c4fd649eedf3c.md) | 165 | `declaration-track:5101afcfc26c4fd649eedf3ce206e16b4d9207a8ecb73621c204af8bc03c89a0` |
| 17 | `def` | [quotientByTolerance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/quotientbytolerance--18671a85587957361e7d88d1.md) | 172 | `declaration-track:18671a85587957361e7d88d158bca691af72cf0ea8bd091806ff96cc82b1990c` |
| 18 | `theorem` | [tolerance_quotient_requires_setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ContextualEquivalence/Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248.lean/declarations/tolerance-quotient-requires-setoid--559b0496614ebf389c908009.md) | 180 | `result-track:559b0496614ebf389c908009a3abebd8f1088f6048b6adde035c54e7d8355649` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
