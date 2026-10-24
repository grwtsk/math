# Verification target: GRWTSK.Algebra.Ideal.Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16bdc6baea38b94bfcb55209e1203a2947c7fac0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16bdc6baea38b94bfcb55209e1203a2947c7fac0`.

Source path: `GRWTSK/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.ResidueField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ideal.ResidueField](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-residuefield--565ab2ab747115d2ad31e6dd.md) | 26 | `declaration-track:565ab2ab747115d2ad31e6ddb86c1433459f311f41e1e08c9671c16d30d57e03` |
| 2 | `abbrev` | [Ideal.ResidueField.map](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-residuefield-map--9b964402a3e7558adbfb0cbd.md) | 31 | `declaration-track:9b964402a3e7558adbfb0cbd94cfd69d6049d1aa1478547e65b0851953ef45d1` |
| 3 | `def` | [Ideal.ResidueField.mapₐ](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-residuefield-map--a13282a69f89f7ee8e634dc0.md) | 37 | `declaration-track:a13282a69f89f7ee8e634dc07f2181e524fc4e3eb450cf844dca04dce577454a` |
| 4 | `lemma` | [Ideal.ResidueField.mapₐ_apply](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-residuefield-map-apply--cf423bf2ac6f01900ff394b2.md) | 47 | `result-track:cf423bf2ac6f01900ff394b25ad11ef20823368889747f99eaa083fae2df9c95` |
| 5 | `lemma` | [Ideal.algebraMap_residueField_eq_zero](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-algebramap-residuefield-eq-zero--b3cb0c029fa89e933871a837.md) | 53 | `result-track:b3cb0c029fa89e933871a8376034c290eb849277f30febe4b51870496ef583bc` |
| 6 | `lemma` | [Ideal.ker_algebraMap_residueField](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-ker-algebramap-residuefield--bb1265f87c012dff33adb838.md) | 60 | `result-track:bb1265f87c012dff33adb8380a38d79f79bd073cd9cd67d0da3eff675b1ac527` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/instance--53866b5d63e9a1ae6e4aa228.md) | 65 | `declaration-track:53866b5d63e9a1ae6e4aa22892552f91a83504f883c22ecf7d4376e4f71af8bf` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/instance--e45d0968f46e291bed4aa966.md) | 69 | `declaration-track:e45d0968f46e291bed4aa966cb32242543afcc82657c4115609d67fa394841ff` |
| 9 | `lemma` | [algebraMap_mk](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/algebramap-mk--7e6c48c3cc1220b9c6071157.md) | 73 | `result-track:7e6c48c3cc1220b9c6071157a51b387acb37d4b4907d446df1c79c877e2511b1` |
| 10 | `lemma` | [Ideal.injective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-injective-algebramap-quotient-residuefield--5460adda9333eb399256229c.md) | 77 | `result-track:5460adda9333eb399256229c5ecad30d939ae5e8a4f3cc67d3817c11c81a9bd6` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/instance--9098842bbfee30688755763f.md) | 84 | `declaration-track:9098842bbfee30688755763f06c99a40aad4d2223d3c258f6b79c58e0c472eed` |
| 12 | `lemma` | [Ideal.bijective_algebraMap_quotient_residueField](../../../../mathematics/Algebra/Ideal/Variantabcf5c93330e309e4952e6792a9d0be8fa5bc2e73db8fb294f8bcb63c531da60.lean/declarations/ideal-bijective-algebramap-quotient-residuefield--59760f37f5c87caa2fa83515.md) | 103 | `result-track:59760f37f5c87caa2fa8351503b6e6e53afd823e93e81a2e8599243f50649780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
