# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Assembly.Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b51ae97fd2cd8c18f689dae075d078fd52b42d26",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b51ae97fd2cd8c18f689dae075d078fd52b42d26`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Tamagawa` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Regulator` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.RootNumberParity` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Periods` — import line 4; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Sha` — import line 5; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Torsion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDFirstPartAssemblyCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdfirstpartassemblycertificate--fb651147f5ac269239e4e828.md) | 43 | `declaration-track:fb651147f5ac269239e4e828417c8f4dca280950e2e84dfd2b974c94ab44a4c8` |
| 2 | `def` | [BSDFirstPartAssemblyCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdfirstpartassemblycertificate-certifiedforbsd--2c7955b81dc1ef1eab2653c3.md) | 90 | `declaration-track:2c7955b81dc1ef1eab2653c3510be5e430a4836961c0e9a1acf910ed11f22f0f` |
| 3 | `theorem` | [BSDFirstPartAssemblyCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdfirstpartassemblycertificate-certifiedforbsd-of-fields--73e306b51065dadd2ec6a28f.md) | 118 | `result-track:73e306b51065dadd2ec6a28fb2a33d8d0d1fa78a5258809d30334a5506be875b` |
| 4 | `structure` | [BSDSecondPartAssemblyCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdsecondpartassemblycertificate--d6ea08084f32f902a9f2895d.md) | 157 | `declaration-track:d6ea08084f32f902a9f2895d27c4bbd1921f0241b3d5ca04a0f933b002d5772f` |
| 5 | `def` | [BSDSecondPartAssemblyCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdsecondpartassemblycertificate-certifiedforbsd--0c11832c0f6d0d193ff1b692.md) | 216 | `declaration-track:0c11832c0f6d0d193ff1b692d64d644cda2f7f06e229450a5e31697044762d32` |
| 6 | `theorem` | [BSDSecondPartAssemblyCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdsecondpartassemblycertificate-certifiedforbsd-of-fields--354e970d44d1d9869a5d6fb2.md) | 254 | `result-track:354e970d44d1d9869a5d6fb2dfe7861e09d4d6c3a5c38989646d896ad05a6a7f` |
| 7 | `theorem` | [secondPart_from_leadingCoefficientIdentity](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/secondpart-from-leadingcoefficientidentity--b5edb296768dfb5fd70d13af.md) | 283 | `result-track:b5edb296768dfb5fd70d13af01733032c4993051658c2ec9057949934b9f1fd9` |
| 8 | `structure` | [Conjecture](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/conjecture--da1b717ea612c1c85a0b772c.md) | 292 | `declaration-track:da1b717ea612c1c85a0b772cd6d5e4f7309e20bc2f9a1276ef88e2f0872b2b15` |
| 9 | `structure` | [BSDCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdcertificate--07ba8ad3449ffcbf02307a2d.md) | 301 | `declaration-track:07ba8ad3449ffcbf02307a2d6b88ffc5a39a5eb753028f81e313b11e6f0d0385` |
| 10 | `structure` | [BSDTheoremInput](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoreminput--57a67e9ebd9cab26e803ec52.md) | 316 | `declaration-track:57a67e9ebd9cab26e803ec52a49125cece061d6271238101b5be92727dddf847` |
| 11 | `structure` | [BSDTheoremAssemblyInputData](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremassemblyinputdata--967e976290415941d91eed40.md) | 331 | `declaration-track:967e976290415941d91eed4092d9de2f3f3f667ffd1c5e82724ff165737bfafc` |
| 12 | `structure` | [PackedBSDTheoremInput](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/packedbsdtheoreminput--3ea7d3218ba4eba6d4ef267a.md) | 371 | `declaration-track:3ea7d3218ba4eba6d4ef267a7430f5e9b81c15c4443034819bf3341fd5fcaff4` |
| 13 | `structure` | [BSDTheoremAssemblyCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremassemblycertificate--55de5761259ee710b0d278e8.md) | 392 | `declaration-track:55de5761259ee710b0d278e8da4f6f644f20d82c76f9b0d58290f4b1cc454e73` |
| 14 | `def` | [BSDTheoremAssemblyCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremassemblycertificate-certifiedforbsd--79e895f8f3085c5737167ed1.md) | 429 | `declaration-track:79e895f8f3085c5737167ed13154ea6e15bd36b1a3877bc1a0947c62952078bc` |
| 15 | `theorem` | [BSDTheoremAssemblyCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremassemblycertificate-certifiedforbsd-of-fields--6319ea208276611bdfaef3b5.md) | 456 | `result-track:6319ea208276611bdfaef3b5f464ac754cd517324d432d84f448e659d81873b1` |
| 16 | `structure` | [BSDTheoremAnalyticObjectSharedData](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremanalyticobjectshareddata--0070390144e3335cf8ef0001.md) | 498 | `declaration-track:0070390144e3335cf8ef000178d8feafd8d4251c4889b11a9890f1c11aae9d4a` |
| 17 | `structure` | [BSDTheoremAnalyticObjectCoherenceCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremanalyticobjectcoherencecertificate--42548ed5f4f4eb32f00d97c1.md) | 534 | `declaration-track:42548ed5f4f4eb32f00d97c11812f7f13a95d24624e18861daca143afa499e62` |
| 18 | `def` | [BSDTheoremAnalyticObjectCoherenceCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremanalyticobjectcoherencecertificate-certifiedforbsd--02a4f0822457131eed5b915a.md) | 572 | `declaration-track:02a4f0822457131eed5b915af0d73533f393689b7bed0aead02cbb62c354efa9` |
| 19 | `theorem` | [BSDTheoremAnalyticObjectCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremanalyticobjectcoherencecertificate-certifiedforbsd-of-fields--24565bae020dba8184e040be.md) | 602 | `result-track:24565bae020dba8184e040be7cb8f4817193a0add5478f0ac17405d812ef55f0` |
| 20 | `structure` | [BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremanalyticcontinuationuniquenesscoherencecertificate--9bd88bc50ac8b57cbe692c66.md) | 645 | `declaration-track:9bd88bc50ac8b57cbe692c666f6aaf0a23a71911f8b6ca2cb0beae9adbc03cde` |
| 21 | `def` | [BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate.certifiedForBSD](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremanalyticcontinuationuniquenesscoherencecertificate-certifiedfo--5ad37d1fe224c0aa5ec2b40c.md) | 690 | `declaration-track:5ad37d1fe224c0aa5ec2b40c460a0c07ff4946ab3e6d3a54ea5c028645b05624` |
| 22 | `theorem` | [BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Assembly/Variant7f6d59ac1d0cef156a4bbdc3b74fed8f9cee21eafa243532b9daa45d721134db.lean/declarations/bsdtheoremanalyticcontinuationuniquenesscoherencecertificate-certifiedfo--09070068779dd782559498b1.md) | 717 | `result-track:09070068779dd782559498b14b7fc32fdd8e9a80d605ddc315b7ece0d8255ba3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
