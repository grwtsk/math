# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.IsAlgClosed.Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c18178e06515cfa1d7c224f82805da8a540bb8c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c18178e06515cfa1d7c224f82805da8a540bb8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.PrimeFin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Classification` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Field.CharP` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Satisfiability` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [genericMonicPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/genericmonicpoly--e55c2724b6aa91513034be54.md) | 58 | `declaration-track:e55c2724b6aa91513034be5420179b425cc4218c1238c53d1983f282e2bf0321` |
| 2 | `theorem` | [lift_genericMonicPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/lift-genericmonicpoly--fec0452fdf6f80e06d2e4496.md) | 61 | `result-track:fec0452fdf6f80e06d2e4496c1bc1a925c189d2d63cfb10859468c2a1b0905f4` |
| 3 | `def` | [genericMonicPolyHasRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/genericmonicpolyhasroot--5b5d29e26fcdcc32e00f7faa.md) | 71 | `declaration-track:5b5d29e26fcdcc32e00f7faa9e3c55406a17dbda26d52492b0fb6f10786dd872` |
| 4 | `theorem` | [realize_genericMonicPolyHasRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/realize-genericmonicpolyhasroot--c1384bea43e5bf0827306085.md) | 74 | `result-track:c1384bea43e5bf0827306085c6c738026304581df046e15fd2f9607bb29cbe11` |
| 5 | `def` | [_root_.FirstOrder.Language.Theory.ACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/root-firstorder-language-theory-acf--cc93ff812875de1796daac05.md) | 83 | `declaration-track:cc93ff812875de1796daac059bd06e5c49c5680564aec93cb414186159868d9a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/instance--59916629656a85c7cf23cacc.md) | 86 | `declaration-track:59916629656a85c7cf23cacc0cd32052432802ec627b9c2e05236ace9a8386db` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/instance--e19dc82b70bf8c4efe6a1bc1.md) | 90 | `declaration-track:e19dc82b70bf8c4efe6a1bc1ac71e58dd6efda4f6b21d26db8bbded450ed7618` |
| 8 | `theorem` | [modelField_of_modelACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/modelfield-of-modelacf--6ab5c7116548a3a76a93a3bf.md) | 101 | `result-track:6ab5c7116548a3a76a93a3bfa53ef0263bf6f7e2ff436b5f55f1ef57fad1c903` |
| 9 | `def` | [fieldOfModelACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/fieldofmodelacf--a2ef291560171f5c98e870b2.md) | 109 | `declaration-track:a2ef291560171f5c98e870b228c8e5196adc3eb494577463833bcfcdc07ed2ea` |
| 10 | `theorem` | [isAlgClosed_of_model_ACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/isalgclosed-of-model-acf--6806bd79674551f664c18973.md) | 115 | `result-track:6806bd79674551f664c189735760af713b82781f4ea4a2d4dc092466e8005907` |
| 11 | `theorem` | [ACF_isSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/acf-issatisfiable--4f7b6707e47fed6c671ed30b.md) | 129 | `result-track:4f7b6707e47fed6c671ed30b0bec5932beb62c33dd9fc2c8ab40caf36e08951f` |
| 12 | `theorem` | [ACF_categorical](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/acf-categorical--560a06f68260c029c0f72d33.md) | 150 | `result-track:560a06f68260c029c0f72d33fc26b5606c1fc0751887c4ff387baecabd4c40ef` |
| 13 | `theorem` | [ACF_isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/acf-iscomplete--57fbd9b87dd20feb4a9e7a7e.md) | 170 | `result-track:57fbd9b87dd20feb4a9e7a7e642fa8f25307684113bc0f3a8a9e0caddb52c339` |
| 14 | `theorem` | [finite_ACF_prime_not_realize_of_ACF_zero_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/finite-acf-prime-not-realize-of-acf-zero-realize--b429d668ae28ef6261855d85.md) | 185 | `result-track:b429d668ae28ef6261855d851d3022b62908c7ce879e733468daf7a6afe3e89d` |
| 15 | `theorem` | [ACF_zero_realize_iff_infinite_ACF_prime_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/acf-zero-realize-iff-infinite-acf-prime-realize--77e8148a3f7371745bb1ad1a.md) | 227 | `result-track:77e8148a3f7371745bb1ad1a15ef21b5f8fdbdad452d15a28ba988447ced039a` |
| 16 | `theorem` | [ACF_zero_realize_iff_finite_ACF_prime_not_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.lean/declarations/acf-zero-realize-iff-finite-acf-prime-not-realize--cc0e5889f529ec9b9d404ac8.md) | 240 | `result-track:cc0e5889f529ec9b9d404ac84066ac9dfbfc40ec074168c5e127d0703d5eacf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
