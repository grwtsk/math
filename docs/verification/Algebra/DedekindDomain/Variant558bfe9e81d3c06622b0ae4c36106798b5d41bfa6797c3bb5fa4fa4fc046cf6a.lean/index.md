# Verification target: GRWTSK.Algebra.DedekindDomain.Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0ec4685ce1b9a58ba6b65d575a5f186882852e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean/index.md) · [Full source](../../../../mathematics/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0ec4685ce1b9a58ba6b65d575a5f186882852e`.

Source path: `GRWTSK/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isInternal_prime_power_torsion_of_is_torsion_by_ideal](../../../../mathematics/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean/declarations/isinternal-prime-power-torsion-of-is-torsion-by-ideal--059760f7ddfd9b969705fd3f.md) | 41 | `result-track:059760f7ddfd9b969705fd3fd83d49358a1fd35765672464e1b48e42728033c2` |
| 2 | `theorem` | [isInternal_prime_power_torsion](../../../../mathematics/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean/declarations/isinternal-prime-power-torsion--036dbfde95e1a6335e10a44f.md) | 68 | `result-track:036dbfde95e1a6335e10a44fe6d4a47f9e5faac62b4d6abf64013030603b99a4` |
| 3 | `theorem` | [exists_isInternal_prime_power_torsion](../../../../mathematics/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean/declarations/exists-isinternal-prime-power-torsion--71ca212be7fe82e383c186b3.md) | 80 | `result-track:71ca212be7fe82e383c186b3d0331b5546da0353d3d91357586bd421f81e4546` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
