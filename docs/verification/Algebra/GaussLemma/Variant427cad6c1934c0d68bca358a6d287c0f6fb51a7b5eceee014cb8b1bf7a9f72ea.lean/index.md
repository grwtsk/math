# Verification target: GRWTSK.Algebra.GaussLemma.Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f9dcefc7d3e77b284d02e41a34dec5c44049323",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/index.md) · [Full source](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f9dcefc7d3e77b284d02e41a34dec5c44049323`.

Source path: `GRWTSK/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SplittingField.Construction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integralClosure.mem_lifts_of_monic_of_dvd_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/integralclosure-mem-lifts-of-monic-of-dvd-map--1f34611c581acc2a117b5106.md) | 61 | `result-track:1f34611c581acc2a117b5106542c0032fddb9a18520cad511cc0f51216df2314` |
| 2 | `theorem` | [IsIntegrallyClosed.eq_map_mul_C_of_dvd](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isintegrallyclosed-eq-map-mul-c-of-dvd--01941f79750ed86de1ad51ee.md) | 83 | `result-track:01941f79750ed86de1ad51ee025a13423d8d37a95df3c6aaf46542c878748e1f` |
| 3 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-isunit-iff-isunit-map-of-injective--6a12edc88c356dadd4f6040a.md) | 120 | `result-track:6a12edc88c356dadd4f6040aa510297bc1033ac5326d3997e8bb671c3ec14f40` |
| 4 | `theorem` | [IsPrimitive.irreducible_of_irreducible_map_of_injective](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-irreducible-of-irreducible-map-of-injective--717f77c3c7a78216a3a9f287.md) | 128 | `result-track:717f77c3c7a78216a3a9f287ffc158b7d0e53667413909bbe3e6a2fa5d87a81d` |
| 5 | `theorem` | [IsPrimitive.isUnit_iff_isUnit_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-isunit-iff-isunit-map--172b9bb6fbdaec3f281e4d8a.md) | 142 | `result-track:172b9bb6fbdaec3f281e4d8ad37dcfdaa5513daeec19588ce443aacb14d14aab` |
| 6 | `theorem` | [Monic.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/monic-irreducible-iff-irreducible-map-fraction-map--2af7b4ba73b33ad62c529e27.md) | 152 | `result-track:2af7b4ba73b33ad62c529e27429c260374742b54344dc76c1e7da65389f748b2` |
| 7 | `theorem` | [isIntegrallyClosed_iff'](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isintegrallyclosed-iff--64cd207d8a5eedd210c7043b.md) | 188 | `result-track:64cd207d8a5eedd210c7043b51f4a8a6eef5a315f3fd84840a3430aa18581da0` |
| 8 | `theorem` | [Monic.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/monic-dvd-of-fraction-map-dvd-fraction-map--1421d95a7376ce201b23163f.md) | 202 | `result-track:1421d95a7376ce201b23163f34eb816e884e3e9f1b3adb192e532dae3023ea7c` |
| 9 | `theorem` | [Monic.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/monic-dvd-iff-fraction-map-dvd-fraction-map--bebf0f7793ee05ed08a9edbd.md) | 212 | `result-track:bebf0f7793ee05ed08a9edbd7a5d1a016648aef0bbed5ea17c29a56152985bd6` |
| 10 | `theorem` | [isUnit_or_eq_zero_of_isUnit_integerNormalization_primPart](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isunit-or-eq-zero-of-isunit-integernormalization-primpart--d721ceeb0d6969246f259ea8.md) | 225 | `result-track:d721ceeb0d6969246f259ea8bd7cddce2707479c5e96fb295b40543fb2ee4b4b` |
| 11 | `theorem` | [IsPrimitive.irreducible_iff_irreducible_map_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-irreducible-iff-irreducible-map-fraction-map--19d5cf11bf5ad4b4615d331b.md) | 244 | `result-track:19d5cf11bf5ad4b4615d331bc933a34b8905ab23f24a2423db163aa163ed40a1` |
| 12 | `theorem` | [IsPrimitive.dvd_of_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-dvd-of-fraction-map-dvd-fraction-map--87301643143ba6611925a547.md) | 285 | `result-track:87301643143ba6611925a547d31e5d92dd064ba298d3101cb62a6f744d6d9604` |
| 13 | `theorem` | [IsPrimitive.dvd_iff_fraction_map_dvd_fraction_map](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-dvd-iff-fraction-map-dvd-fraction-map--4bd5f13672bd956f80c66db8.md) | 309 | `result-track:4bd5f13672bd956f80c66db866e4c1ab59b610059186d20e46af07bde337f695` |
| 14 | `theorem` | [IsPrimitive.Int.irreducible_iff_irreducible_map_cast](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-int-irreducible-iff-irreducible-map-cast--215972ebda449bfb66e22040.md) | 320 | `result-track:215972ebda449bfb66e22040335ae4c5aeaf0fb091f8a036b5750f2a569fd669` |
| 15 | `theorem` | [IsPrimitive.Int.dvd_iff_map_cast_dvd_map_cast](../../../../mathematics/Algebra/GaussLemma/Variant427cad6c1934c0d68bca358a6d287c0f6fb51a7b5eceee014cb8b1bf7a9f72ea.lean/declarations/isprimitive-int-dvd-iff-map-cast-dvd-map-cast--01395526ef2cd79bc87e19e0.md) | 324 | `result-track:01395526ef2cd79bc87e19e00695775ddc7c7e2422bf63966e706deb3ab71eed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
