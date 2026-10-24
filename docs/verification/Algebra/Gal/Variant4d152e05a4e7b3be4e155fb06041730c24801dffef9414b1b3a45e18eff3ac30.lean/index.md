# Verification target: GRWTSK.Algebra.Gal.Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbf2b6870f8ad7a85a8e0620426eba1993a9c690",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/index.md) · [Full source](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbf2b6870f8ad7a85a8e0620426eba1993a9c690`.

Source path: `GRWTSK/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [autToPow_injective](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/declarations/auttopow-injective--0d908ba1a0cd7a70734ab930.md) | 61 | `result-track:0d908ba1a0cd7a70734ab930617483759d490d65a78929e44b077e9f6e37f243` |
| 2 | `def` | [Aut.commGroup](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/declarations/aut-commgroup--abac7d2d06a9456db139282f.md) | 90 | `declaration-track:abac7d2d06a9456db139282faaa17b0706d05e946a1cd239f13f0663f5f42197` |
| 3 | `def` | [autEquivPow](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/declarations/autequivpow--1e34c16c968e886db068ad97.md) | 99 | `declaration-track:1e34c16c968e886db068ad979413a17c3e58a9a9d51c4827093b2637b8c9132b` |
| 4 | `def` | [fromZetaAut](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/declarations/fromzetaaut--bc7a23bcb2646909283df086.md) | 143 | `declaration-track:bc7a23bcb2646909283df08624e8cd4099d645651aca88bf7ca18cc453ad21a6` |
| 5 | `theorem` | [fromZetaAut_spec](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/declarations/fromzetaaut-spec--949ee038e559f8f3eaf10a0a.md) | 149 | `result-track:949ee038e559f8f3eaf10a0a94d11c6b590b693b9aa5a40e74d5f1dc0367e9a2` |
| 6 | `def` | [galCyclotomicEquivUnitsZMod](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/declarations/galcyclotomicequivunitszmod--a1ce7c0b8cda87ed1b434df2.md) | 167 | `declaration-track:a1ce7c0b8cda87ed1b434df255c827317238e75b07df3efa7f3ca05f886ee673` |
| 7 | `def` | [galXPowEquivUnitsZMod](../../../../mathematics/Algebra/Gal/Variant4d152e05a4e7b3be4e155fb06041730c24801dffef9414b1b3a45e18eff3ac30.lean/declarations/galxpowequivunitszmod--67c85235d451b4c0c1697e1c.md) | 175 | `declaration-track:67c85235d451b4c0c1697e1c9068a324b1ad64f07cdd416ae10f8e73844d35cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
