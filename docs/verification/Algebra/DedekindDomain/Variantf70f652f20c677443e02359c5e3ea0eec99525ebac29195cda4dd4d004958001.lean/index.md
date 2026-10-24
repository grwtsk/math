# Verification target: GRWTSK.Algebra.DedekindDomain.Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a4b65f709a277303058afe98ae27abea5355961",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean/index.md) · [Full source](../../../../mathematics/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a4b65f709a277303058afe98ae27abea5355961`.

Source path: `GRWTSK/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isInternal_prime_power_torsion_of_is_torsion_by_ideal](../../../../mathematics/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean/declarations/isinternal-prime-power-torsion-of-is-torsion-by-ideal--5dc540f74fdba7fcbbd321bf.md) | 33 | `result-track:5dc540f74fdba7fcbbd321bf916d01856b88a4a13e522256fe4c1bb181e3108d` |
| 2 | `theorem` | [isInternal_prime_power_torsion](../../../../mathematics/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean/declarations/isinternal-prime-power-torsion--3b5d7a3f6211df9092f19b5f.md) | 60 | `result-track:3b5d7a3f6211df9092f19b5f5428f77ffff763c1efd8a1e6fc2dfe73e240202b` |
| 3 | `theorem` | [exists_isInternal_prime_power_torsion](../../../../mathematics/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean/declarations/exists-isinternal-prime-power-torsion--8646f95764bfad2220fb9b6b.md) | 72 | `result-track:8646f95764bfad2220fb9b6b7e43571dba909c6f5d941e1abfbd9a42852a72fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
