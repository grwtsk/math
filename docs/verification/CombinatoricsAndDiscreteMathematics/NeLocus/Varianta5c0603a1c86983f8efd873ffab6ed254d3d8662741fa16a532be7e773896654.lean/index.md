# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NeLocus.Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45866422c035703826636d066f2dcd64e6a228e7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45866422c035703826636d066f2dcd64e6a228e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Finsupp` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus--42ba543e64770da4f3e37fdc.md) | 35 | `declaration-track:42ba543e64770da4f3e37fdc013e646f303deb346879d71140a45e054af70058` |
| 2 | `theorem` | [mem_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/mem-nelocus--2e76b30193ad61807fbefee1.md) | 39 | `result-track:2e76b30193ad61807fbefee1d906d4e71f98a43af2fdb75ef6c3f26fc8727c3e` |
| 3 | `theorem` | [notMem_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/notmem-nelocus--14bcd91e0f507abfbbe6bca6.md) | 43 | `result-track:14bcd91e0f507abfbbe6bca68c993a8fd974c48b854dca40be3e3b2765af3667` |
| 4 | `theorem` | [coe_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/coe-nelocus--cc84823d463ebb6b5babc3e2.md) | 49 | `result-track:cc84823d463ebb6b5babc3e228168e3805125e0b1cefe1c69dceb8bb844d84af` |
| 5 | `theorem` | [neLocus_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-eq-empty--560489cc96104abef437d049.md) | 54 | `result-track:560489cc96104abef437d049379ced1b92811c91656be058183bee20aeef024d` |
| 6 | `theorem` | [nonempty_neLocus_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nonempty-nelocus-iff--c699196d2bb5366bde24831d.md) | 60 | `result-track:c699196d2bb5366bde24831da716bd75a10cd7f7b999086d7f2dab3829e9fb44` |
| 7 | `theorem` | [neLocus_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-comm--f44ab8b782b225291a5166bd.md) | 63 | `result-track:f44ab8b782b225291a5166bd231f0ea15077da4675feae37fbc19631e97f155e` |
| 8 | `theorem` | [neLocus_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-zero-right--dc881ea4caa801b8ceace921.md) | 67 | `result-track:dc881ea4caa801b8ceace921a2cbd44cc9dd71ab42921bdabef56a5c61042733` |
| 9 | `theorem` | [neLocus_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-zero-left--78d2ba968d893261b2402aaf.md) | 72 | `result-track:78d2ba968d893261b2402aaf360300f58ac42ea00c1d687aeedce2c86b544b2a` |
| 10 | `theorem` | [subset_mapRange_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/subset-maprange-nelocus--2d2045494a52fd9084fee834.md) | 79 | `result-track:2d2045494a52fd9084fee83491d0343f0465a0f80cef32fec5ff689836630bbc` |
| 11 | `theorem` | [zipWith_neLocus_eq_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/zipwith-nelocus-eq-left--8a58b0f0d7bccde4fa3d8c46.md) | 83 | `result-track:8a58b0f0d7bccde4fa3d8c4669f42efbcfec276c6f187a4a3ac999e21ba3ac13` |
| 12 | `theorem` | [zipWith_neLocus_eq_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/zipwith-nelocus-eq-right--65bad5d578b7a88bb90785a2.md) | 90 | `result-track:65bad5d578b7a88bb90785a2041a8a5de58c8bcf4b66ea7aa54213515d8f7d14` |
| 13 | `theorem` | [mapRange_neLocus_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/maprange-nelocus-eq--61d9dee846fe741f2f28f0f5.md) | 97 | `result-track:61d9dee846fe741f2f28f0f58132a0cedb0d4ed98e6c0952a95326a26420137d` |
| 14 | `theorem` | [neLocus_add_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-add-left--a65a22831c8f1385d7b539e8.md) | 108 | `result-track:a65a22831c8f1385d7b539e8a3846385693644161918a8a86d96a3000281d3da` |
| 15 | `theorem` | [neLocus_add_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-add-right--68f2b895eb52be50fa22f472.md) | 113 | `result-track:68f2b895eb52be50fa22f472f453079cbb63a34388fcc545cfdc13bd660409dc` |
| 16 | `theorem` | [neLocus_neg_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-neg-neg--d12eb5390f8bc8cb93096c35.md) | 122 | `result-track:d12eb5390f8bc8cb93096c35f3c439c947946144e3f9113eb9a977657764111a` |
| 17 | `theorem` | [neLocus_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-neg--d3a30cad88c50335f44337d4.md) | 125 | `result-track:d3a30cad88c50335f44337d421c3ccd82fa7eaac83675232e5f2e65e150eb21a` |
| 18 | `theorem` | [neLocus_eq_support_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-eq-support-sub--952ea33de34354710c34ffd9.md) | 127 | `result-track:952ea33de34354710c34ffd9ee06f4340300a8b9020bd9d4c28123bbb4c8388a` |
| 19 | `theorem` | [neLocus_sub_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-sub-left--ccecf4057fcc71e5ffbc96f2.md) | 131 | `result-track:ccecf4057fcc71e5ffbc96f2d547b3291b4fd3f91d7ae19711aa13706c128683` |
| 20 | `theorem` | [neLocus_sub_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-sub-right--7bcee5ce3a6fe1fef2fa6f97.md) | 135 | `result-track:7bcee5ce3a6fe1fef2fa6f97a0249c3fa15b3af9c77947d53da8f3a65ff00b0a` |
| 21 | `theorem` | [neLocus_self_add_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-self-add-right--9cf01fca236456c3e137ccf3.md) | 139 | `result-track:9cf01fca236456c3e137ccf3864a5d0b93dee4adb6a0dfc00c8413e2a1867f9d` |
| 22 | `theorem` | [neLocus_self_add_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-self-add-left--5bbe24d014f673ac2456106b.md) | 143 | `result-track:5bbe24d014f673ac2456106b4dee2a56aa3791efd5342b64eb88aa4766c1beb8` |
| 23 | `theorem` | [neLocus_self_sub_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-self-sub-right--22ef23aaf105e8843e5bcb2a.md) | 147 | `result-track:22ef23aaf105e8843e5bcb2aeac5f1d03f550805ff32be7ae48b9364a60f5230` |
| 24 | `theorem` | [neLocus_self_sub_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Varianta5c0603a1c86983f8efd873ffab6ed254d3d8662741fa16a532be7e773896654.lean/declarations/nelocus-self-sub-left--6a1b31d1cc4f2631f1bd101c.md) | 151 | `result-track:6a1b31d1cc4f2631f1bd101ca1ad5a26d4144329614c38ff728a45261c1db7b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
