# Verification target: GRWTSK.Algebra.Radical.Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d75b8869c469ef3246b15f82ae619532c430e312",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d75b8869c469ef3246b15f82ae619532c430e312`.

Source path: `GRWTSK/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.IsHomogeneous.isPrime_of_homogeneous_mem_or_mem](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/declarations/ideal-ishomogeneous-isprime-of-homogeneous-mem-or-mem--986ab898444cc06a7dbdcd9b.md) | 53 | `result-track:986ab898444cc06a7dbdcd9b323c90708613dcdc62b1bcbe0c58d5ffabd68405` |
| 2 | `theorem` | [Ideal.IsHomogeneous.isPrime_iff](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/declarations/ideal-ishomogeneous-isprime-iff--ed485a54c435d849acd09a03.md) | 144 | `result-track:ed485a54c435d849acd09a03a7aea41b34d47845009d39e3bb107624dd9b45ef` |
| 3 | `theorem` | [Ideal.IsPrime.homogeneousCore](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/declarations/ideal-isprime-homogeneouscore--e4235d677321edcb19456ef7.md) | 153 | `result-track:e4235d677321edcb19456ef7d254018104ef0732fb60460faeca1c4d2ef70ebd` |
| 4 | `theorem` | [Ideal.IsHomogeneous.radical_eq](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/declarations/ideal-ishomogeneous-radical-eq--ed02b445c1b9f9ca7ffc1b74.md) | 163 | `result-track:ed02b445c1b9f9ca7ffc1b7485a039bf5d3c51ccefb14760ef2b8d8d5df34a5a` |
| 5 | `theorem` | [Ideal.IsHomogeneous.radical](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/declarations/ideal-ishomogeneous-radical--9caf423f8cf293d5d448cfd0.md) | 174 | `result-track:9caf423f8cf293d5d448cfd052c7f858f312853d87d49a38a193f8b9ba9bae6a` |
| 6 | `def` | [HomogeneousIdeal.radical](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/declarations/homogeneousideal-radical--2f3285c19efcb21d76ae6c01.md) | 180 | `declaration-track:2f3285c19efcb21d76ae6c01d975b67b9185ac6a5e9cc2dd41ee98c50ad0e618` |
| 7 | `theorem` | [HomogeneousIdeal.coe_radical](../../../../mathematics/Algebra/Radical/Variant36a9623ad2331e6afd89539cbc02bd4b08e5d84f2b5abb50ac78076909c1669f.lean/declarations/homogeneousideal-coe-radical--2fcc9e549356041d14bb4af6.md) | 184 | `result-track:2fcc9e549356041d14bb4af6b9cb4d0229deb52e3e584274a45ca3df7220da75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
