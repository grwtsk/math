# Verification target: GRWTSK.Algebra.LinearAlgebra.Reduced.Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05cb121520c3b58e20d1271be07bd4d147c3d14d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05cb121520c3b58e20d1271be07bd4d147c3d14d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsReduced](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/isreduced--1f4f1796b48bb184bad1badb.md) | 42 | `declaration-track:1f4f1796b48bb184bad1badbb1fd6edb9b85cd76f8e63a13851f512279dd32b2` |
| 2 | `lemma` | [isReduced_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/isreduced-iff--f69cbe61d25d8785392a334e.md) | 46 | `result-track:f69cbe61d25d8785392a334e46a47dba0925d896bd5dc71b88cd644fa9cfbaed` |
| 3 | `lemma` | [IsReduced.linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/isreduced-linearindependent--304f6e0282ca03dd7cb2e0f7.md) | 56 | `result-track:304f6e0282ca03dd7cb2e0f7852108e54795650e93d055f17c8d8cfa5ea1fa6d` |
| 4 | `lemma` | [IsReduced.linearIndependent_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/isreduced-linearindependent-iff--8d7df3c682e33d51926003a8.md) | 61 | `result-track:8d7df3c682e33d51926003a831c511fde2b5f9291c8c250d188dedc97c5aeb69` |
| 5 | `lemma` | [two_smul_notMem_range_root](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/two-smul-notmem-range-root--988bb623f6e90f2ecfdbe61f.md) | 71 | `result-track:988bb623f6e90f2ecfdbe61f7ad6244510c8c7d71d73a099f815dda878fb8238` |
| 6 | `lemma` | [linearIndependent_of_add_mem_range_root](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/linearindependent-of-add-mem-range-root--0b9122a13cbfe59cb06af81a.md) | 88 | `result-track:0b9122a13cbfe59cb06af81a66492c3e4fa5e60e3a2195e258b7fedbf10d6180` |
| 7 | `lemma` | [linearIndependent_of_sub_mem_range_root](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/linearindependent-of-sub-mem-range-root--3b7aa2ecdb48213ba4f6532d.md) | 97 | `result-track:3b7aa2ecdb48213ba4f6532d3ddc103299fe04fba525b72adca261b6388c5816` |
| 8 | `lemma` | [linearIndependent_of_add_mem_range_root'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/linearindependent-of-add-mem-range-root--9b62ec25647615de935d53b2.md) | 105 | `result-track:9b62ec25647615de935d53b28634ad2bc50927dd88816904056a83c3c5c7467c` |
| 9 | `lemma` | [linearIndependent_of_sub_mem_range_root'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/linearindependent-of-sub-mem-range-root--819d7c106789d54293ef85c1.md) | 112 | `result-track:819d7c106789d54293ef85c12ff226454c2481ca6f07260202bf49f9ce4f72bd` |
| 10 | `lemma` | [infinite_of_linearIndependent_coxeterWeight_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/infinite-of-linearindependent-coxeterweight-four--79d678080b31c1cefa44d920.md) | 119 | `result-track:79d678080b31c1cefa44d920b361a9ea744ce8fae43cfc22cbf4d6e244eb2811` |
| 11 | `lemma` | [pairing_smul_root_eq_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairing-smul-root-eq-of-not-linearindependent--bf68040231460d13aa3d441a.md) | 138 | `result-track:bf68040231460d13aa3d441a67088cdd843a9834a8cd8cd48b3a3a43313ece5e` |
| 12 | `lemma` | [coxeterWeight_ne_four_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/coxeterweight-ne-four-of-linearindependent--d52f2ebfec10f0c8fefb82b8.md) | 162 | `result-track:d52f2ebfec10f0c8fefb82b874fe7f44a55294f1178c75f50eed701ef75da0d3` |
| 13 | `lemma` | [linearIndependent_iff_coxeterWeight_ne_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/linearindependent-iff-coxeterweight-ne-four--fa5f6094cb5f6d6e230823e2.md) | 172 | `result-track:fa5f6094cb5f6d6e230823e2deaf2ebd29c346179b86cc7be46e03527a57fc7b` |
| 14 | `lemma` | [coxeterWeight_eq_four_iff_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/coxeterweight-eq-four-iff-not-linearindependent--082d1ab33914d7beeb654b26.md) | 188 | `result-track:082d1ab33914d7beeb654b266e71621747846fc2cb2c4f834fde3a38e277a6c9` |
| 15 | `lemma` | [pairing_two_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairing-two-two-iff--28028be0bc318929544fa7a9.md) | 196 | `result-track:28028be0bc318929544fa7a9e5d8e17fe6766a5271827f8a7a4c1d5b3dd5caea` |
| 16 | `lemma` | [pairing_neg_two_neg_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairing-neg-two-neg-two-iff--93f96cd64d00d4b934bdfbb9.md) | 206 | `result-track:93f96cd64d00d4b934bdfbb9a879779e82cf2d2dd546dca65100873fdac57883` |
| 17 | `lemma` | [pairing_one_four_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairing-one-four-iff--7e7dd41a185bf9192b54eba8.md) | 214 | `result-track:7e7dd41a185bf9192b54eba838b1221e2ebe79ca3a34ce824874234689cf4007` |
| 18 | `lemma` | [pairing_neg_one_neg_four_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairing-neg-one-neg-four-iff--3f36c19c9d695a2e3822253e.md) | 231 | `result-track:3f36c19c9d695a2e3822253ea5d5e2962d4b8a1df7d5e06d45c8b5eef215d70b` |
| 19 | `lemma` | [pairing_one_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairing-one-four-iff--3745d411d087d11784cd2db1.md) | 237 | `result-track:3745d411d087d11784cd2db10660559cb64eeaa9061d9c07fcf99343933c3c6b` |
| 20 | `lemma` | [pairing_neg_one_neg_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairing-neg-one-neg-four-iff--6e9734026181346e8ff10f3a.md) | 243 | `result-track:6e9734026181346e8ff10f3a64b14de398f60d29c195d729518ad52d4087ace4` |
| 21 | `lemma` | [linearIndependent_iff_coxeterWeightIn_ne_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/linearindependent-iff-coxeterweightin-ne-four--4553b983841a6df11dad4d35.md) | 255 | `result-track:4553b983841a6df11dad4d35c8995b8fe09ccf3a30d3ec0dc3ab60e4f9aab811` |
| 22 | `lemma` | [coxeterWeightIn_eq_four_iff_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/coxeterweightin-eq-four-iff-not-linearindependent--c94f22274d147c5d909e9994.md) | 260 | `result-track:c94f22274d147c5d909e99948739b4fcefb6f0087b324d1df6b212f0fbe8da66` |
| 23 | `lemma` | [coxeterWeightIn_ne_four](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/coxeterweightin-ne-four--31c72ec9275ca21b25ab5a04.md) | 264 | `result-track:31c72ec9275ca21b25ab5a04576880920d3b09db0ab635d96ec660732fe6ddef` |
| 24 | `lemma` | [pairingIn_two_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairingin-two-two-iff--cbbd77be9e40ef5c0119cbc1.md) | 272 | `result-track:cbbd77be9e40ef5c0119cbc1dcfcdf5f35f1bd8b4acf38119dfbdeee4257553e` |
| 25 | `lemma` | [pairingIn_neg_two_neg_two_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairingin-neg-two-neg-two-iff--76d768caa31167fedbe4a1ef.md) | 278 | `result-track:76d768caa31167fedbe4a1efc774241511b21aef5a5b8894ccb59529fb736eaa` |
| 26 | `lemma` | [pairingIn_one_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairingin-one-four-iff--202c396045bcedd95602c6da.md) | 285 | `result-track:202c396045bcedd95602c6da0347a0cea59b4f4a6093e9dc061bcd4a0699e1a6` |
| 27 | `lemma` | [pairingIn_neg_one_neg_four_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/declarations/pairingin-neg-one-neg-four-iff--5ed591355d60fc988b01f1d1.md) | 291 | `result-track:5ed591355d60fc988b01f1d11771ff67a82a88c7a5c21d98485b1ca26f0780f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
