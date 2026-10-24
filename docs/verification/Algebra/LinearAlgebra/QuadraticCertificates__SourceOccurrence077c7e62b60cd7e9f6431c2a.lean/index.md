# Verification target: GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80bdb1f803d73e44b66ad7c05672a0a18a31b7bf",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuadraticCertificates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80bdb1f803d73e44b66ad7c05672a0a18a31b7bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuadraticCertificates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuadraticCertificates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/quadratic--238d126e8c3ee4e3b0145aff.md) | 28 | `declaration-track:238d126e8c3ee4e3b0145aff9b14a52def34e54927301ce158069c965cffc2a3` |
| 2 | `structure` | [Problem](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/problem--a0acf21f53ca747e21c2a08d.md) | 31 | `declaration-track:a0acf21f53ca747e21c2a08d02257f33bd0d65c6bdba2fb485a33092e7a14cc1` |
| 3 | `def` | [Problem.Admissible](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/problem-admissible--9d3b839915b17f2c7b21e099.md) | 40 | `declaration-track:9d3b839915b17f2c7b21e099432d2f72c13a7d102c18f9f4dd9ecab4b69c0875` |
| 4 | `structure` | [Certificate](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/certificate--2f2cdb8793c55aa1da5d9623.md) | 45 | `declaration-track:2f2cdb8793c55aa1da5d9623c68809236d92b7936c2f2be4f91da317287f530f` |
| 5 | `def` | [Valid](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/valid--6a7a63d16847cebcb9fb1180.md) | 54 | `declaration-track:6a7a63d16847cebcb9fb11808d3aaf4bfd7d52f30c36719490d4672d7ffbd832` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/instance--2f39f34d832d7d30e8d6e0d7.md) | 60 | `declaration-track:2f39f34d832d7d30e8d6e0d7c868a7bf756df4a56ba614c970d662e7549f7e53` |
| 7 | `def` | [check](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/check--d72cf100f1032a023cde595e.md) | 65 | `declaration-track:d72cf100f1032a023cde595ede688bbda79060caeb0bed7e4c35ce25acc3d529` |
| 8 | `theorem` | [quadratic_add](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/quadratic-add--b32f5a444403a0eef7e09984.md) | 69 | `result-track:b32f5a444403a0eef7e09984565715f368845deda01a661b1c4009c221abca3a` |
| 9 | `theorem` | [quadratic_smul](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/quadratic-smul--8f500269a0b835a630aa0db9.md) | 74 | `result-track:8f500269a0b835a630aa0db9450a03cfefcfc1d7f7d2a01886eef8cf1a15ef51` |
| 10 | `theorem` | [quadratic_sum](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/quadratic-sum--13611fd93c88deb3d4cb60b4.md) | 79 | `result-track:13611fd93c88deb3d4cb60b41dc0d320a348e0a40158d67a9212fde81be7b75a` |
| 11 | `theorem` | [gram_nonnegative](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/gram-nonnegative--0b72bde95877c0519bbdf663.md) | 85 | `result-track:0b72bde95877c0519bbdf663138616efc53c03aeab97289a986ed66fdf0b6048` |
| 12 | `theorem` | [sound](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/sound--e7084b1108ef3449a55ff608.md) | 92 | `result-track:e7084b1108ef3449a55ff6086f832143373e7da2c1be77bef4ffaecf5d0e412e` |
| 13 | `theorem` | [check_sound](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/check-sound--0b02ff8b9fb819267ff1f4f3.md) | 106 | `result-track:0b02ff8b9fb819267ff1f4f371c5605db4cefd0d9cc66753fa6b7697f13a7ec2` |
| 14 | `def` | [congruence](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/congruence--ed4f1d8e95e16ad3dd423d21.md) | 116 | `declaration-track:ed4f1d8e95e16ad3dd423d21e39bdd5f40752cb599ccf81ce1c3a410fcba1f10` |
| 15 | `def` | [Problem.pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/problem-pullback--03937873468796f438baa14c.md) | 122 | `declaration-track:03937873468796f438baa14cc1a6bc34d3c4621d341f794fde66fb1c06b85980` |
| 16 | `def` | [Certificate.pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/certificate-pullback--fc6f8196638a53b918dcc342.md) | 128 | `declaration-track:fc6f8196638a53b918dcc3420bdd9c5d7b7743469874682be579039dcee50c70` |
| 17 | `theorem` | [valid_pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/valid-pullback--1b96621a59e896273d40c3cc.md) | 137 | `result-track:1b96621a59e896273d40c3cc2a21572a55e0610597cb456195e394da67a311d7` |
| 18 | `theorem` | [check_pullback](../../../../mathematics/Algebra/LinearAlgebra/QuadraticCertificates__SourceOccurrence077c7e62b60cd7e9f6431c2a.lean/declarations/check-pullback--61c22df4d886be9397d41664.md) | 148 | `result-track:61c22df4d886be9397d41664b664ecca27d06fd2f8bcc8fd3abe68bafe0e3d1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
