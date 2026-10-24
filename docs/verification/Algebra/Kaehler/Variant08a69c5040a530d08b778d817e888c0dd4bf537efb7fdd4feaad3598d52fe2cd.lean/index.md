# Verification target: GRWTSK.Algebra.Kaehler.Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8496d5bf06be1bc55372ba850642e28cd2a8607f",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8496d5bf06be1bc55372ba850642e28cd2a8607f`.

Source path: `GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivationOfSectionOfKerSqZero](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/derivationofsectionofkersqzero--196c9b9f575022be7f1430ba.md) | 71 | `declaration-track:196c9b9f575022be7f1430ba921b5b991720a4df573d0a349dbbd9d3a7e8b7d7` |
| 2 | `lemma` | [isScalarTower_of_section_of_ker_sqZero](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/isscalartower-of-section-of-ker-sqzero--4681f0dcf97866ce8d4b51bb.md) | 100 | `result-track:4681f0dcf97866ce8d4b51bbc223c10686058adb2364a1ac4a9439a7d450cd79` |
| 3 | `def` | [retractionOfSectionOfKerSqZero](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/retractionofsectionofkersqzero--f4fb67d15718dd70f1f15a3d.md) | 119 | `declaration-track:f4fb67d15718dd70f1f15a3d8f6685203d9ae4ba3c9372e248f54121480ef47d` |
| 4 | `lemma` | [retractionOfSectionOfKerSqZero_tmul_D](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/retractionofsectionofkersqzero-tmul-d--500ce47e3adfdd89c319a346.md) | 127 | `result-track:500ce47e3adfdd89c319a346e9659437768009791523dad7c7df910a82cd9b13` |
| 5 | `lemma` | [retractionOfSectionOfKerSqZero_comp_kerToTensor](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/retractionofsectionofkersqzero-comp-kertotensor--7a3055b1c52a2f8cde87ad0d.md) | 139 | `result-track:7a3055b1c52a2f8cde87ad0dc4bf819f17d29351ae16d5f3960572b8ec2a9b4d` |
| 6 | `lemma` | [sectionOfRetractionKerToTensorAux_prop](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/sectionofretractionkertotensoraux-prop--a496c0e7b415a0fb22b13c4d.md) | 154 | `result-track:a496c0e7b415a0fb22b13c4d9b7cf4d67f67898309d2dab3476cfe3c71565a7c` |
| 7 | `def` | [sectionOfRetractionKerToTensorAux](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/sectionofretractionkertotensoraux--aa8ec0abb07b777a92f32bd2.md) | 171 | `declaration-track:aa8ec0abb07b777a92f32bd2fd95629bc623a7b0c9c65ec54e68cb99af7383ef` |
| 8 | `lemma` | [sectionOfRetractionKerToTensorAux_algebraMap](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/sectionofretractionkertotensoraux-algebramap--46fcbdcb804e4a9809182c6e.md) | 189 | `result-track:46fcbdcb804e4a9809182c6e0c2ee662f00aa2a70ead73e17673cb68b8d277b7` |
| 9 | `lemma` | [toAlgHom_comp_sectionOfRetractionKerToTensorAux](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/toalghom-comp-sectionofretractionkertotensoraux--2ea0a566fd6e2c3c94cdf6c7.md) | 196 | `result-track:2ea0a566fd6e2c3c94cdf6c7b71d63eddd503a31766b00cc8406dee95ea20740` |
| 10 | `def` | [sectionOfRetractionKerToTensor](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/sectionofretractionkertotensor--7910b0dbf23fdf60f5b34d42.md) | 209 | `declaration-track:7910b0dbf23fdf60f5b34d4281b9cee47019b547b597fd39a0f1a7501d9edf3f` |
| 11 | `lemma` | [sectionOfRetractionKerToTensor_algebraMap](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/sectionofretractionkertotensor-algebramap--4a66afc2f4c86d62916e3e3a.md) | 213 | `result-track:4a66afc2f4c86d62916e3e3a57ef4e047f83a9202d7412146a4bceb41fd9022b` |
| 12 | `lemma` | [toAlgHom_comp_sectionOfRetractionKerToTensor](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/toalghom-comp-sectionofretractionkertotensor--174178eedc4fa394dcf569c5.md) | 218 | `result-track:174178eedc4fa394dcf569c524153d7db4ab4cff91337af8f9e709054518db37` |
| 13 | `def` | [retractionKerToTensorEquivSection](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/retractionkertotensorequivsection--b552391b6ef95de2b242d8be.md) | 234 | `declaration-track:b552391b6ef95de2b242d8be78af104b3b625b22f1095bf835855bf5d431c262` |
| 14 | `def` | [derivationQuotKerSq](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/derivationquotkersq--9acb189f52690018a252b2a0.md) | 259 | `declaration-track:9acb189f52690018a252b2a023d2174b2c5173555560af1babba0688cd371782` |
| 15 | `lemma` | [derivationQuotKerSq_mk](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/derivationquotkersq-mk--0028df0dad56a5b2e2c282b7.md) | 284 | `result-track:0028df0dad56a5b2e2c282b731c718db3548e8ed808e8803220e4126cf7b1106` |
| 16 | `def` | [tensorKaehlerQuotKerSqEquiv](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/tensorkaehlerquotkersqequiv--b693275fb82f6f2ad0d099a3.md) | 293 | `declaration-track:b693275fb82f6f2ad0d099a3a939dd0d41b73ef50df2b03cb8116f07055d6789` |
| 17 | `lemma` | [tensorKaehlerQuotKerSqEquiv_tmul_D](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/tensorkaehlerquotkersqequiv-tmul-d--fb88fcedb67ad9d15fa15fbc.md) | 314 | `result-track:fb88fcedb67ad9d15fa15fbced74ec05dc535aacfe44e21da114b12771b6d332` |
| 18 | `lemma` | [tensorKaehlerQuotKerSqEquiv_symm_tmul_D](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/tensorkaehlerquotkersqequiv-symm-tmul-d--4f9fff360f3a349b92905ed8.md) | 320 | `result-track:4f9fff360f3a349b92905ed82a912388a14865283dc68be404dd74367305d176` |
| 19 | `def` | [retractionKerCotangentToTensorEquivSection](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/retractionkercotangenttotensorequivsection--e9c28b89f79d157b883408ca.md) | 332 | `declaration-track:e9c28b89f79d157b883408cae61466dccf2acdf46fad51753f5268cd4e6abcd7` |
| 20 | `theorem` | [Algebra.FormallySmooth.iff_split_injection](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/algebra-formallysmooth-iff-split-injection--ec009a9e9cde8a7a98c121fd.md) | 391 | `result-track:ec009a9e9cde8a7a98c121fdc262febc5b9399febf6f5f057d4aaf26971f85bb` |
| 21 | `theorem` | [Algebra.Extension.formallySmooth_iff_split_injection](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/algebra-extension-formallysmooth-iff-split-injection--3d3b1723580bfd4dea24f235.md) | 403 | `result-track:3d3b1723580bfd4dea24f235211e182414bebd05436222d895f8f22b82be8036` |
| 22 | `theorem` | [Algebra.FormallySmooth.iff_injective_and_split](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/algebra-formallysmooth-iff-injective-and-split--e4881c725d703010881eb059.md) | 424 | `result-track:e4881c725d703010881eb059a3ca221089961928ef2f2d33b1a6e30e74f6f383` |
| 23 | `theorem` | [Algebra.FormallySmooth.iff_injective_and_projective'](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/algebra-formallysmooth-iff-injective-and-projective--53bf05657502a2c9e99bd1b8.md) | 436 | `result-track:53bf05657502a2c9e99bd1b8738efd461cca831b29fbef760f24ce1bcce69451` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/instance--20ae93a6d43ce644ad3ebe40.md) | 448 | `declaration-track:20ae93a6d43ce644ad3ebe40b7643fa3458140f8e8abc4e65a2660294ffc5f66` |
| 25 | `theorem` | [Algebra.FormallySmooth.iff_injective_and_projective](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/algebra-formallysmooth-iff-injective-and-projective--4a37e7b56df9e75af86ca36c.md) | 457 | `result-track:4a37e7b56df9e75af86ca36c392c17c448f5abe0415faf29c2698cd2cb47224c` |
| 26 | `theorem` | [Algebra.FormallySmooth.iff_subsingleton_and_projective](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/algebra-formallysmooth-iff-subsingleton-and-projective--49c07c39d71e167d8819aaa0.md) | 468 | `result-track:49c07c39d71e167d8819aaa079d9240f159da1bc7e21ef3aaefc06b7229f1fc3` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/instance--8bdae16373929a8916a5445b.md) | 477 | `declaration-track:8bdae16373929a8916a5445b1cee0fca5807eaab100247db55633c5d2408ea7c` |
| 28 | `lemma` | [CotangentSpace.map_toInfinitesimal_bijective](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/cotangentspace-map-toinfinitesimal-bijective--b2b33008430d5b4d42df36a3.md) | 482 | `result-track:b2b33008430d5b4d42df36a38489c2ea8eea247282c0ab5b89c580f55823e4ff` |
| 29 | `lemma` | [Cotangent.map_toInfinitesimal_bijective](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/cotangent-map-toinfinitesimal-bijective--b5a3804a781bb2e0b2c286fb.md) | 495 | `result-track:b5a3804a781bb2e0b2c286fbef46bbd59a5db00fa0d7c8dc568fdcc53319ef7c` |
| 30 | `lemma` | [H1Cotangent.map_toInfinitesimal_bijective](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/h1cotangent-map-toinfinitesimal-bijective--c3ead3aa50ca1ddec3be4fd2.md) | 516 | `result-track:c3ead3aa50ca1ddec3be4fd28d6084cb97efe55942296b0fe770fc56d6763562` |
| 31 | `def` | [homInfinitesimal](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/hominfinitesimal--bcc538435aa828fcee40950a.md) | 533 | `declaration-track:bcc538435aa828fcee40950a426801d472587c14cc59b6cf575a28154b2266b4` |
| 32 | `def` | [H1Cotangent.equivOfFormallySmooth](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/h1cotangent-equivofformallysmooth--361cdefb1546d78d6ffe819b.md) | 559 | `declaration-track:361cdefb1546d78d6ffe819ba441a0881eb30c6cd566a73ae12b3e80f637d0ba` |
| 33 | `lemma` | [H1Cotangent.equivOfFormallySmooth_toLinearMap](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/h1cotangent-equivofformallysmooth-tolinearmap--e9d83befcc12816018491b46.md) | 566 | `result-track:e9d83befcc12816018491b4642c9cda57a9d5fc16f638c19cacf8d3c3bd87fe1` |
| 34 | `lemma` | [H1Cotangent.equivOfFormallySmooth_apply](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/h1cotangent-equivofformallysmooth-apply--2b28c6232b69c56f363747da.md) | 575 | `result-track:2b28c6232b69c56f363747dab956234ee13466e68920a8cc154fc91c7766cca8` |
| 35 | `lemma` | [H1Cotangent.equivOfFormallySmooth_symm](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/h1cotangent-equivofformallysmooth-symm--85237b6bbb12b4997c0e151d.md) | 580 | `result-track:85237b6bbb12b4997c0e151df65d5cf90ad79b3d6b6f85b77590293b5a55c740` |
| 36 | `def` | [equivH1CotangentOfFormallySmooth](../../../../mathematics/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/declarations/equivh1cotangentofformallysmooth--6c9083db81e3b874ebc192dd.md) | 586 | `declaration-track:6c9083db81e3b874ebc192dd76a8bd4384a672db8d3fd93da72d86bbe38ef381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
