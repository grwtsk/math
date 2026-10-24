# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239Curve

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b489d813ddf451a7c8d164ca808fb569b29b5b8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b489d813ddf451a7c8d164ca808fb569b29b5b8`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [A](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/a--6863a769212bec1838b21568.md) | 25 | `declaration-track:6863a769212bec1838b21568ee642a0789b8f48bb91913beb6a044c1baef806e` |
| 2 | `def` | [B](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/b--359a98af5baf0a01f095096a.md) | 26 | `declaration-track:359a98af5baf0a01f095096a8d1e44a3a6f05b0fdc978d1eedf65431c74eea38` |
| 3 | `def` | [OnRecordModel](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/onrecordmodel--abcd6dcf2a851720afb016fa.md) | 29 | `declaration-track:abcd6dcf2a851720afb016fafee508187fe8ad099f2bf0254ee273810d79c64a` |
| 4 | `def` | [pointX](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/pointx--dfc2a2293aa39dd834d3973d.md) | 33 | `declaration-track:dfc2a2293aa39dd834d3973d2ac00f78f2c0d2c7e9e7f8968fcb489b41cbf9d9` |
| 5 | `def` | [pointY](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/pointy--2dfdbd25f5eab92df1e7a365.md) | 69 | `declaration-track:2dfdbd25f5eab92df1e7a365e44c8d7033a54abfcc2164d579575dc723b9a2eb` |
| 6 | `theorem` | [points_on_record_model](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/points-on-record-model--8c38fae91f5e3f5a2359b4a7.md) | 105 | `result-track:8c38fae91f5e3f5a2359b4a74d58f55d85e03ad89a0c8a24709a58a57dcbdbe2` |
| 7 | `def` | [recordDiscriminant](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/recorddiscriminant--c5e5080f5692de7bb3efa8f0.md) | 110 | `declaration-track:c5e5080f5692de7bb3efa8f00235ff435776d482b56e75a80ce899d4ca23585d` |
| 8 | `theorem` | [discriminant_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/discriminant-ne-zero--7d11014fec64916e76bbc401.md) | 117 | `result-track:7d11014fec64916e76bbc401ba1f7fafcdbba92d7570d692cc80c772066b7595` |
| 9 | `def` | [reducedPointCount](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/reducedpointcount--ea5efa0d763a034470394365.md) | 121 | `declaration-track:ea5efa0d763a0344703943659b3a443cc30207e45045eb793a211e19ebe7354e` |
| 10 | `theorem` | [pointCount7](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/pointcount7--2f18e6def69adef4d4b9b2cf.md) | 126 | `result-track:2f18e6def69adef4d4b9b2cf31cebe4804a30cd2b14016960961c4f4bc157b46` |
| 11 | `theorem` | [pointCount19](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/pointcount19--19d94159bc57c3a872af3b69.md) | 127 | `result-track:19d94159bc57c3a872af3b69806776268df8baaf15d134952ce7b0dc6cc4eed5` |
| 12 | `theorem` | [goodAt7](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/goodat7--4a42430a5e6ce028ce8832fd.md) | 129 | `result-track:4a42430a5e6ce028ce8832fdd1c1471bb6275b6c7b420abcb1882035a6a3ad61` |
| 13 | `theorem` | [goodAt19](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/goodat19--f66eb74fb05fe835052a622d.md) | 131 | `result-track:f66eb74fb05fe835052a622d1a0becf8e27f049d8f77812babb3707f4b9c55f5` |
| 14 | `def` | [shortXInt](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/shortxint--41f05067383b7db29e72dbee.md) | 135 | `declaration-track:41f05067383b7db29e72dbee343e0949b1822db2ea4d65184d731c2008da8e1e` |
| 15 | `theorem` | [shortXInt_eq](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/declarations/shortxint-eq--84213979c506e455ff43ea3e.md) | 170 | `result-track:84213979c506e455ff43ea3e522f3e42df19f7b36fd6c10cda73e75e7f699a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
