# Verification target: GRWTSK.NumberTheory.Bertrand.Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27e971ff636073c568e8059e2873d6fedeaf51e8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27e971ff636073c568e8059e2873d6fedeaf51e8`.

Source path: `GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Bertrand` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bertrandProfile](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandprofile--50ea114232bb54d2433daa1e.md) | 15 | `declaration-track:50ea114232bb54d2433daa1e172b86369c9e31624add04be471d963d66c49b1a` |
| 2 | `def` | [bertrandPrimeSourceProfile](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandprimesourceprofile--fc4c961269e1a5955f678c4f.md) | 33 | `declaration-track:fc4c961269e1a5955f678c4feb1f1d9e767f6149550544cf72ca636ea3ad3fdf` |
| 3 | `theorem` | [bertrandProof](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandproof--5aa348ad88e6bc282b2835d2.md) | 51 | `result-track:5aa348ad88e6bc282b2835d2c16ac7a4af4688fd133a3741978c66b0681661d5` |
| 4 | `theorem` | [bertrandAdmissible](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandadmissible--c6e0810fb6ac2d6380ec8092.md) | 65 | `result-track:c6e0810fb6ac2d6380ec8092fb69aefb06a587ed09fb243bcec8d89a30682f15` |
| 5 | `theorem` | [bertrandIntervalClaim](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandintervalclaim--dca2056893a87bf30af11809.md) | 74 | `result-track:dca2056893a87bf30af118094455fd5a8c789f99e2ef0dcfcf5930c83922ee3c` |
| 6 | `def` | [bertrandCertifiedTheorem](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandcertifiedtheorem--57cf4ddffe7987365d9040bc.md) | 80 | `declaration-track:57cf4ddffe7987365d9040bcf97e003556dbb30bcf4cf458553df0ea20490c8e` |
| 7 | `def` | [bertrandPrimeSourceRefines](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandprimesourcerefines--ce1197889ad5eaad3df8f7d0.md) | 91 | `declaration-track:ce1197889ad5eaad3df8f7d0b11df4cc52329be8a281efc5a071247e2b0aec85` |
| 8 | `theorem` | [bertrandPrimeSourceIntervalClaim](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandprimesourceintervalclaim--1c1aac8bf768b3e2af83e635.md) | 108 | `result-track:1c1aac8bf768b3e2af83e6353c5a409f3853de96f8856583247f23685c7cdb5a` |
| 9 | `def` | [bertrandPrimeSourceCertifiedTheorem](../../../../mathematics/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/declarations/bertrandprimesourcecertifiedtheorem--f0790a08ec7a519c1c9d1822.md) | 113 | `declaration-track:f0790a08ec7a519c1c9d1822d1d0402df460c579caf4a6d2bde1b1ffa77282e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
