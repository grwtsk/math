# Verification target: GRWTSK.Algebra.GroupTheory.Solvable.Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ec1a76ed6fe416bdc45377137673ddf8ae18ce1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ec1a76ed6fe416bdc45377137673ddf8ae18ce1`.

Source path: `GRWTSK/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.ViaEmbedding` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/derivedseries--3f82fdf9f99939ef6ee1b8fc.md) | 47 | `declaration-track:3f82fdf9f99939ef6ee1b8fc14e30da669cf6cae18fc75355a0e9d4d5a3e6732` |
| 2 | `theorem` | [derivedSeries_zero](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/derivedseries-zero--41ef223bf33358b2ebd7aae9.md) | 53 | `result-track:41ef223bf33358b2ebd7aae98e020fe7f6b2f195191df0642e1cc48b50bfdf05` |
| 3 | `theorem` | [derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/derivedseries-succ--a2b83a1fd74ca1b788d50468.md) | 58 | `result-track:a2b83a1fd74ca1b788d504680e6a9132bcfe510599abf64e10d64ee9b9e17074` |
| 4 | `theorem` | [derivedSeries_normal](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/derivedseries-normal--0f4c46ec53db0cd5972df538.md) | 64 | `result-track:0f4c46ec53db0cd5972df5383b2fa4f979684a647966c074bbbe6c2bb3c15bb4` |
| 5 | `theorem` | [derivedSeries_one](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/derivedseries-one--46485ff9b2a66549888ae9f3.md) | 72 | `result-track:46485ff9b2a66549888ae9f37f93c01113d8c2adad3287135da4d52d514e7090` |
| 6 | `theorem` | [map_derivedSeries_le_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/map-derivedseries-le-derivedseries--25cfddfff7171445236143c9.md) | 84 | `result-track:25cfddfff7171445236143c904ca178e4237b5b5b6bf3375fae67725fb9f112b` |
| 7 | `theorem` | [derivedSeries_le_map_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/derivedseries-le-map-derivedseries--7be178f319356b519cb6c1a0.md) | 93 | `result-track:7be178f319356b519cb6c1a0ee09863affb9e94b263d23cfaaa2cd005e8eafa6` |
| 8 | `theorem` | [map_derivedSeries_eq](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/map-derivedseries-eq--51e585a48ed4a0967a8b46a6.md) | 100 | `result-track:51e585a48ed4a0967a8b46a66134209a8e02b00a9812b87d3f55db928c043f7c` |
| 9 | `class` | [IsSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/issolvable--8d3e8e80d41443a9d33d24af.md) | 115 | `declaration-track:8d3e8e80d41443a9d33d24af1f1a06d166bdacd161ad1d8987663e4fb9ed9a28` |
| 10 | `theorem` | [isSolvable_def](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/issolvable-def--99e9b47e6be440f9de20d118.md) | 120 | `result-track:99e9b47e6be440f9de20d1183552b29ec89d9f08f2a540adfa7b228d906c5d79` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/instance--2f1fe98a8067d9c89074d403.md) | 124 | `declaration-track:2f1fe98a8067d9c89074d4035384d2634e488c15d33f3d64e8ca9982d715fe7c` |
| 12 | `theorem` | [isSolvable_of_comm](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/issolvable-of-comm--4163fe2fd8e364dc0576f2ba.md) | 128 | `result-track:4163fe2fd8e364dc0576f2ba05882d210584ebcf0589f98b00892d14ade75231` |
| 13 | `theorem` | [isSolvable_of_top_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/issolvable-of-top-eq-bot--7d083d04240af7fb3bf15c60.md) | 135 | `result-track:7d083d04240af7fb3bf15c60cb04e3493d3cf41d2a730b0a05087181d41d9441` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/instance--af2f531270682572864d2a53.md) | 139 | `declaration-track:af2f531270682572864d2a5337be5c7e84cfc04f0328c7c401f8a7a335a2369c` |
| 15 | `theorem` | [solvable_of_ker_le_range](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/solvable-of-ker-le-range--d30eb1fc84cbf6bdfa81cfbb.md) | 145 | `result-track:d30eb1fc84cbf6bdfa81cfbb8bd341ee1b12af3ae082d6aba7275e5d57aabcb7` |
| 16 | `theorem` | [solvable_of_solvable_injective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/solvable-of-solvable-injective--d7d8b712a0b1f47754266bdb.md) | 158 | `result-track:d7d8b712a0b1f47754266bdbcb424723b926876eacff60fb64d003078f9f7b33` |
| 17 | `instance` | [subgroup_solvable_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/subgroup-solvable-of-solvable--2245c4e12a82313d3c5e1bdf.md) | 163 | `declaration-track:2245c4e12a82313d3c5e1bdfa302e9871b01f927321a47405a7184c68674f7f4` |
| 18 | `theorem` | [solvable_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/solvable-of-surjective--4ebc3ae2b6e50ba87ddc922d.md) | 167 | `result-track:4ebc3ae2b6e50ba87ddc922d609a27fec1d9ed1b5cc0da4f3499f98450886d27` |
| 19 | `instance` | [solvable_quotient_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/solvable-quotient-of-solvable--1379ed300fb94ea388a1097f.md) | 171 | `declaration-track:1379ed300fb94ea388a1097febe8d09736248dec7772c0d9dce3c4a5f5611255` |
| 20 | `instance` | [solvable_prod](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/solvable-prod--a5f126ed2716ce0817824c5c.md) | 176 | `declaration-track:a5f126ed2716ce0817824c5ca9b096630d0f817d18ae6daa20cef255c3124c90` |
| 21 | `theorem` | [IsSimpleGroup.derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/issimplegroup-derivedseries-succ--8cdd458ca6f2e2f38cce58a7.md) | 188 | `result-track:8cdd458ca6f2e2f38cce58a7b40d8b1d41c1f62b017599d073311273084cf8bf` |
| 22 | `theorem` | [IsSimpleGroup.comm_iff_isSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/issimplegroup-comm-iff-issolvable--347b9bd00366ce81b9c722e1.md) | 197 | `result-track:347b9bd00366ce81b9c722e101dbd93903b59ce63657a700b9d82c9b1914fd64` |
| 23 | `theorem` | [not_solvable_of_mem_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/not-solvable-of-mem-derivedseries--20ca7d48c76181341c1164df.md) | 214 | `result-track:20ca7d48c76181341c1164df2249ab955ac393c4433cf50ff826528acd2d4867` |
| 24 | `theorem` | [Equiv.Perm.fin_5_not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/equiv-perm-fin-5-not-solvable--5ed1db43a6411ee255c5763e.md) | 221 | `result-track:5ed1db43a6411ee255c5763e5b759ec48323428f709f0dc443d401c98cbcf5e7` |
| 25 | `theorem` | [Equiv.Perm.not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant4e629f6728a54219546174078829570e840927756b520384a3a08a74e3108a66.lean/declarations/equiv-perm-not-solvable--d9049c67c690b7cb0402541e.md) | 233 | `result-track:d9049c67c690b7cb0402541e40df9189e787f1b91cacd8a5c8066dd1df140467` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
