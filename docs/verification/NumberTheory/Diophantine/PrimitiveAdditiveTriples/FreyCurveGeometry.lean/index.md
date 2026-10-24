# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09a77b1e2efd641a0968839f386d3ccacf849948",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09a77b1e2efd641a0968839f386d3ccacf849948`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortSaturation`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freyWeierstrass](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/freyweierstrass--c25bda23250a7e11c6d65782.md) | 18 | `declaration-track:c25bda23250a7e11c6d657825a0fc4d063366cd841ae1c698379cda2b664ea62` |
| 2 | `theorem` | [freyWeierstrass_equation_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/freyweierstrass-equation-iff--ba5c8a06a041b5c3a3d578d2.md) | 26 | `result-track:ba5c8a06a041b5c3a3d578d2bb3276363099b09cab6cacec9666ed214e9feaef` |
| 3 | `theorem` | [freyWeierstrass_Δ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/freyweierstrass--c836f2ce84f0d6c662a2eb05.md) | 40 | `result-track:c836f2ce84f0d6c662a2eb050f230080198a8ef75116f8355f52f525210ad330` |
| 4 | `def` | [PrimitiveAdditiveTriple.freyCurve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve--76bf9575a1fd41847565c820.md) | 47 | `declaration-track:76bf9575a1fd41847565c8205bebc1ae06f6cd11f14ae0eecf1efb0c67597cfb` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_Δ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve--22f727982fdc809fa48f7668.md) | 52 | `result-track:22f727982fdc809fa48f766879e081795d12fec7ef2aed8c659608e1c6f00453` |
| 6 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_Δ_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-pos--31a82a516bb335f2fe668e21.md) | 62 | `result-track:31a82a516bb335f2fe668e2143444e3c9603e87f67451c699d127968dc2698e7` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_Δ_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-ne-zero--533f5a15185716f4cc7712df.md) | 71 | `result-track:533f5a15185716f4cc7712dfd54c86ddc2aa8cd67fe95e408144d13b8a2f5295` |
| 8 | `instance` | [PrimitiveAdditiveTriple.instIsEllipticFreyCurve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-instisellipticfreycurve--8a55c0f3cde4ad21e7738841.md) | 77 | `declaration-track:8a55c0f3cde4ad21e7738841e86c888252020c036ded5dce74db607410f65166` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_equation_T0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-equation-t0--f12bea5e9d4ccb71540edfa5.md) | 82 | `result-track:f12bea5e9d4ccb71540edfa5adb2d1bac4f09073ea7b8b8129d2245c212bd744` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_equation_Ta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-equation-ta--ecc78f20d7a2686b5510549b.md) | 90 | `result-track:ecc78f20d7a2686b5510549b22502342b91dc339c0abdd858d018842ec369620` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_equation_Tb](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-equation-tb--9e44ae8095300f833c2f7fb1.md) | 100 | `result-track:9e44ae8095300f833c2f7fb1b369b7bc861fc43ee6b5d3f14f7bc09da714e4b4` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_nonsingular_T0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-nonsingular-t0--adf73779ff9b045f850834fc.md) | 110 | `result-track:adf73779ff9b045f850834fcc95a02c146f28b0a97f1c1f2ce31bbe8da455ce1` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_nonsingular_Ta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-nonsingular-ta--8a98bfcab965c9c5a2315052.md) | 116 | `result-track:8a98bfcab965c9c5a231505290c3deeff8a56d574fbcc892bad8615b2b64d77e` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_nonsingular_Tb](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freycurve-nonsingular-tb--f8dd685a24c5ea48355ef575.md) | 122 | `result-track:f8dd685a24c5ea48355ef575f2f53765ac60af16d1aed1b33a84819538b819e2` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyT0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyt0--27d50f6d0e847785c47ce690.md) | 128 | `declaration-track:27d50f6d0e847785c47ce690e5f2213660172937487dfdc45fff4f247e045183` |
| 16 | `def` | [PrimitiveAdditiveTriple.freyTa](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyta--1846be737c38cb2da31dc80e.md) | 133 | `declaration-track:1846be737c38cb2da31dc80e24a62a1c476026801d71a17da8b15f20f9018e5d` |
| 17 | `def` | [PrimitiveAdditiveTriple.freyTb](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freytb--45abb4807df788e39e2a74ae.md) | 138 | `declaration-track:45abb4807df788e39e2a74ae110596b93f172056841601266d0f386f06c0d6b5` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyT0_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyt0-ne-zero--d4823572af8ee741e4389ed8.md) | 143 | `result-track:d4823572af8ee741e4389ed8f7af2702a5b44cbee08995a723dbf07d9b730f2e` |
| 19 | `theorem` | [PrimitiveAdditiveTriple.freyTa_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyta-ne-zero--383714d14a5b8b225d18390b.md) | 149 | `result-track:383714d14a5b8b225d18390ba9d4509b51ee297764a078ea4f4ad5449fa1df39` |
| 20 | `theorem` | [PrimitiveAdditiveTriple.freyTb_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freytb-ne-zero--13ebfd927dcce48a8e889f6e.md) | 155 | `result-track:13ebfd927dcce48a8e889f6e72fff4585f229fd41c9c1d81a37f7d567e9b83d1` |
| 21 | `theorem` | [PrimitiveAdditiveTriple.freyT0_add_self](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyt0-add-self--32a774e97fd3abc03e9d9a07.md) | 161 | `result-track:32a774e97fd3abc03e9d9a07f224a360bca681616de6b9784b118eac90f86166` |
| 22 | `theorem` | [PrimitiveAdditiveTriple.freyTa_add_self](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyta-add-self--b540a3253f460a9928ef4019.md) | 169 | `result-track:b540a3253f460a9928ef40199f66c4704f356a31b73eda3c7d8989795a014910` |
| 23 | `theorem` | [PrimitiveAdditiveTriple.freyTb_add_self](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freytb-add-self--ed3f3435ee7b5fd0f646c2e4.md) | 177 | `result-track:ed3f3435ee7b5fd0f646c2e4c7f10fe63a5a517fba83de97bc315662655b4b4a` |
| 24 | `theorem` | [PrimitiveAdditiveTriple.freyT0_ne_freyTa](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyt0-ne-freyta--c421a18c6dc423d5267a3f45.md) | 185 | `result-track:c421a18c6dc423d5267a3f45bd65009c217865f97fdaba292f6842a1ebb49d31` |
| 25 | `theorem` | [PrimitiveAdditiveTriple.freyT0_ne_freyTb](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyt0-ne-freytb--0acecf916a5ae5bec340662c.md) | 199 | `result-track:0acecf916a5ae5bec340662c1ec23bb7bf677317d0972b461e1b7cea74b9a6dd` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.freyTa_ne_freyTb](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freyta-ne-freytb--8c28be4a0e1fdf85e81f217a.md) | 213 | `result-track:8c28be4a0e1fdf85e81f217a7685475043b054a0a38f4702775547417853ccbe` |
| 27 | `def` | [PrimitiveAdditiveTriple.freyTorsionPorts](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freytorsionports--98ee66b81215099fc2bdabea.md) | 227 | `declaration-track:98ee66b81215099fc2bdabea8713bdd29e87747f540bd23f98eb6bde6fe7062e` |
| 28 | `theorem` | [PrimitiveAdditiveTriple.freyTorsionPorts_xRep](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/declarations/primitiveadditivetriple-freytorsionports-xrep--9a918799b334facf195579e8.md) | 233 | `result-track:9a918799b334facf195579e85e98c4a3be0c5ca5a2015bda9208da6d96d80032` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
