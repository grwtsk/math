# Verification target: GRWTSK.Topology.GeneralTopology.LocallyCompact.Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5954c79e4ebd7e5ca547e02ce3e71223237f48ad",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5954c79e4ebd7e5ca547e02ce3e71223237f48ad`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [NormedField.v_eq_valuation](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/normedfield-v-eq-valuation--f3cd9c5fc9b3d271f6243224.md) | 47 | `result-track:f3cd9c5fc9b3d271f624322438d0f99be0f57fa1e948a8042817495a4b686860` |
| 2 | `lemma` | [mem_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/mem-iff--1347d70682fa58fc2ecfd5e6.md) | 55 | `result-track:1347d70682fa58fc2ecfd5e6f09c98ddb6b8aa55b553621adf5fd61890401446` |
| 3 | `lemma` | [norm_le_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/norm-le-one--de3401d862e4c31e9d2a7db4.md) | 58 | `result-track:de3401d862e4c31e9d2a7db4bd0277ad956456818162f5f429a613662099fdb5` |
| 4 | `lemma` | [norm_coe_unit](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/norm-coe-unit--f1709f02eb9ba3bd15952151.md) | 61 | `result-track:f1709f02eb9ba3bd15952151ef1fd567904abea63a74d41e321e3cce7e186ffb` |
| 5 | `lemma` | [norm_unit](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/norm-unit--9f3055edcb7f2e105b74c510.md) | 65 | `result-track:9f3055edcb7f2e105b74c510d739a2caaae7c42aa87881aaca527175ea4de272` |
| 6 | `lemma` | [isUnit_iff_norm_eq_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/isunit-iff-norm-eq-one--796f7c27008db7929ab53bf0.md) | 68 | `result-track:796f7c27008db7929ab53bf0c32baf4e3bc0453744098645e13b4d67d2892a23` |
| 7 | `lemma` | [norm_irreducible_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/norm-irreducible-lt-one--8132b45b19ba72279224a39c.md) | 72 | `result-track:8132b45b19ba72279224a39c16fd52f8457b151d6d86fdd723171cc93f01e520` |
| 8 | `lemma` | [norm_irreducible_pos](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/norm-irreducible-pos--875f86f1f52b593b7edfe410.md) | 75 | `result-track:875f86f1f52b593b7edfe4102a8c98dc2bea2d4a48e8fc279ea7bf5606b58c8f` |
| 9 | `lemma` | [coe_span_singleton_eq_closedBall](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/coe-span-singleton-eq-closedball--25eae012188af987f7f7698f.md) | 78 | `result-track:25eae012188af987f7f7698f3e51ab33dcdc49d888ca3f8b4a78525b1281f678` |
| 10 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.Irreducible.maximalIdeal_eq_closedBall](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/root-grwtsk-topology-generaltopology-normedfieldveqvaluation-variant0349--0991011eabb4a095febe6050.md) | 83 | `result-track:0991011eabb4a095febe60502b083dd9e4d0bf73d695cd015dc40b02fd6146ff` |
| 11 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.Irreducible.maximalIdeal_pow_eq_closedBall_pow](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/root-grwtsk-topology-generaltopology-normedfieldveqvaluation-variant0349--3150497d48781214de615ea6.md) | 88 | `result-track:3150497d48781214de615ea6c7f96009418687c9a0e974684506bb98589658a6` |
| 12 | `lemma` | [exists_norm_coe_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/exists-norm-coe-lt-one--b2d76f620fde5d15063c1b55.md) | 94 | `result-track:b2d76f620fde5d15063c1b55edc58c3ce3e912e2f4bb17e9de761a32ca10b718` |
| 13 | `lemma` | [exists_norm_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/exists-norm-lt-one--64766340a4d39d61997ef5ae.md) | 100 | `result-track:64766340a4d39d61997ef5ae21a5558a42680777c660381b8682928b97cadefd` |
| 14 | `lemma` | [exists_nnnorm_lt_one](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/exists-nnnorm-lt-one--ac312c66a4e72ab3c33239fc.md) | 104 | `result-track:ac312c66a4e72ab3c33239fcbda85748906f8addd5bef60957618632887e4022` |
| 15 | `lemma` | [totallyBounded_iff_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/totallybounded-iff-finite-residuefield--1b7f2d0e822646fc9dd05496.md) | 126 | `result-track:1b7f2d0e822646fc9dd0549627030c743398fbadb7bfb600a6f0ea807aa9a891` |
| 16 | `lemma` | [locallyFiniteOrder_units_mrange_of_isCompact_integer](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/locallyfiniteorder-units-mrange-of-iscompact-integer--708b37d279fd31dea4b2966f.md) | 179 | `result-track:708b37d279fd31dea4b2966f6588db912b13a8099b1217a9134b1ad4cf00c28a` |
| 17 | `lemma` | [mulArchimedean_mrange_of_isCompact_integer](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/mularchimedean-mrange-of-iscompact-integer--6f1cb090556be24e159ae4ed.md) | 281 | `result-track:6f1cb090556be24e159ae4ed2f41f523af67e09529ba7e9cd0c4c185e9891804` |
| 18 | `lemma` | [isPrincipalIdealRing_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/isprincipalidealring-of-compactspace--55666e792031499e545865af.md) | 287 | `result-track:55666e792031499e545865af10fe2a97379cf5c2baa057364217b69085744cc7` |
| 19 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.Valuation.isNontrivial_iff_not_a_field](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/root-grwtsk-topology-generaltopology-normedfieldveqvaluation-variant0349--3df235a5fd092a6fddebc517.md) | 304 | `result-track:3df235a5fd092a6fddebc5173366e0b14c3c60d1d779df6b8f4a8db8f6aadbe0` |
| 20 | `lemma` | [isDiscreteValuationRing_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/isdiscretevaluationring-of-compactspace--dcff4532c0b4722609717201.md) | 313 | `result-track:dcff4532c0b4722609717201a89f784ae619b293eecfef07142f06eca58d1e1c` |
| 21 | `lemma` | [compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/compactspace-iff-completespace-and-isdiscretevaluationring-and-finite-re--fd04bc2108b433d1680cf52a.md) | 322 | `result-track:fd04bc2108b433d1680cf52af6e27ddd7a2c988b65e2f31bcee79fef21c62ab0` |
| 22 | `lemma` | [properSpace_iff_compactSpace_integer](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/properspace-iff-compactspace-integer--4d81f0101cfba9b28bfb14de.md) | 335 | `result-track:4d81f0101cfba9b28bfb14deee5f22363bc8629a5204ca7c9f08e485f1205a42` |
| 23 | `lemma` | [properSpace_iff_completeSpace_and_isDiscreteValuationRing_integer_and_finite_residueField](../../../../../mathematics/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/declarations/properspace-iff-completespace-and-isdiscretevaluationring-integer-and-fi--416a06c50e78a815a267c560.md) | 345 | `result-track:416a06c50e78a815a267c5601e38cc3898114375664b9f79b807502524b2e7e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
