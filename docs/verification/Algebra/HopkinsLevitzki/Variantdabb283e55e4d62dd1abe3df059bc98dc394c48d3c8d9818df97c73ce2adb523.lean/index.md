# Verification target: GRWTSK.Algebra.HopkinsLevitzki.Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92bafdef8e2b44b9c55da9705d47d054d3ea0313",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/index.md) · [Full source](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92bafdef8e2b44b9c55da9705d47d054d3ea0313`.

Source path: `GRWTSK/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteLength` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Nilpotent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Noetherian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.KrullDimension.Zero` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [induction](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/induction--57f3814a05a1c705bcddb853.md) | 50 | `result-track:57f3814a05a1c705bcddb8533c8a6e995bc116269628d7f2bd4778c1a25f359a` |
| 2 | `theorem` | [finite_of_isNoetherian_or_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/finite-of-isnoetherian-or-isartinian--2b2536824b962f003624d234.md) | 83 | `result-track:2b2536824b962f003624d2342176188a0a4c031618994a75a57a92b60ed1a6bc` |
| 3 | `theorem` | [finite_of_isNoetherian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/finite-of-isnoetherian--039417b5145a7807c92188ac.md) | 97 | `result-track:039417b5145a7807c92188aced9bd5feaba790a133ad4f31e9be775894c22f38` |
| 4 | `theorem` | [finite_of_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/finite-of-isartinian--fa99603a8dbffa6cdba2ae43.md) | 100 | `result-track:fa99603a8dbffa6cdba2ae43f51e268ab68494b1f0df84353a7e882b48e8634e` |
| 5 | `theorem` | [isNoetherian_iff_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isnoetherian-iff-isartinian--af70eae9a8215de2b19a4bcf.md) | 107 | `result-track:af70eae9a8215de2b19a4bcf030bf47320646ef2fe2d013b5d57e71991121754` |
| 6 | `theorem` | [IsArtinianRing.tfae](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isartinianring-tfae--08e15fcc2827191be4b34880.md) | 115 | `result-track:08e15fcc2827191be4b34880e0eafe281fbc48937a6acfe2210a4a7f9e6f72aa` |
| 7 | `theorem` | [isArtinianRing_iff_isFiniteLength](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isartinianring-iff-isfinitelength--f01b66a3dc2552d6ce319916.md) | 126 | `result-track:f01b66a3dc2552d6ce3199166c741229f12d2099bfcaaac25a38e9d0712b13ac` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/instance--8b95b752401bfb970a467265.md) | 132 | `declaration-track:8b95b752401bfb970a467265929e69543ba2c978840e5d9967350506cda3ba34` |
| 9 | `theorem` | [isNoetherian_of_finite_isArtinian](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isnoetherian-of-finite-isartinian--017aaf335b2442add37d061c.md) | 136 | `result-track:017aaf335b2442add37d061cc12a983e999176294c50677e605fdb22718ffff3` |
| 10 | `theorem` | [IsNoetherianRing.isArtinianRing_of_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isnoetherianring-isartinianring-of-krulldimle-zero--6039a93c3e392c133e3ddf9a.md) | 152 | `result-track:6039a93c3e392c133e3ddf9a7cf39bbb11f1fbf05f1ca2dc85577f404a250c90` |
| 11 | `theorem` | [isArtinianRing_iff_isNoetherianRing_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isartinianring-iff-isnoetherianring-krulldimle-zero--6d9c012cf22749a361819d4c.md) | 167 | `result-track:6d9c012cf22749a361819d4ce0484428b644de81f06d4d8f46b231cebc2788c3` |
| 12 | `theorem` | [isArtinianRing_iff_krullDimLE_zero](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isartinianring-iff-krulldimle-zero--cc1229c3e1a90987e36d595a.md) | 171 | `result-track:cc1229c3e1a90987e36d595a5b98529775c16f8adae06b445d8efdabfbccf2d6` |
| 13 | `lemma` | [isArtinianRing_iff_isNilpotent_maximalIdeal](../../../../mathematics/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/declarations/isartinianring-iff-isnilpotent-maximalideal--b4c4d9af7d46ca9330b3b734.md) | 175 | `result-track:b4c4d9af7d46ca9330b3b734f8248d7b60f6d76a7cc3e894dd99f7bfebe46002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
