# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3f27d9e929bbd4a822d8704376ffc88c62b1fd9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3f27d9e929bbd4a822d8704376ffc88c62b1fd9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.NeZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/mono-cast--4a634c6e67836306b512b7a7.md) | 40 | `result-track:4a634c6e67836306b512b7a7f9576cca914a868862c4c17cd7a10c284c00ae94` |
| 2 | `theorem` | [_root_.GRWTSK.Algebra.UniversalAlgebra.MonoCast.Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.GCongr.natCast_le_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/root-grwtsk-algebra-universalalgebra-monocast-variant1c9926b55add722aac4--403d9f4ecce8d9dcda848213.md) | 45 | `result-track:403d9f4ecce8d9dcda848213967840f2a2ee953da5a52c86dd46ab99eedf52af` |
| 3 | `theorem` | [cast_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-nonneg--b4cace98721dcbd59ea95a5d.md) | 49 | `result-track:b4cace98721dcbd59ea95a5d7b37c22189ae5f3a5b5e2f81b00a7ca64d36bdd1` |
| 4 | `theorem` | [ofNat_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/ofnat-nonneg--6f4796f42b5765d88345f2c3.md) | 54 | `result-track:6f4796f42b5765d88345f2c3c94e9b3b329fab0f6ffcab5ebed4948230c5705d` |
| 5 | `theorem` | [cast_add_one_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-add-one-pos--bb2d4784908e8ee20097c098.md) | 60 | `result-track:bb2d4784908e8ee20097c09853bd881a36697b74669b5485c66208633c1125db` |
| 6 | `theorem` | [cast_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-pos--be5aead8ed261b7446fb8c35.md) | 67 | `result-track:be5aead8ed261b7446fb8c35bb921bb167b1b9d23a363b87df964fba42abb2b8` |
| 7 | `theorem` | [strictMono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/strictmono-cast--9118d57200012b04ecd9680c.md) | 73 | `result-track:9118d57200012b04ecd9680c422069ee2b859d082e9b921ec780751e855ff994` |
| 8 | `lemma` | [_root_.GRWTSK.Algebra.UniversalAlgebra.MonoCast.Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.GCongr.natCast_lt_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/root-grwtsk-algebra-universalalgebra-monocast-variant1c9926b55add722aac4--3b0a9f1990638530db1941ea.md) | 77 | `result-track:3b0a9f1990638530db1941eafc05a8abdab5283c2920bb6a4d9c90af51c83ff4` |
| 9 | `def` | [castOrderEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/castorderembedding--4954eb3c9b697e0defcaaef1.md) | 81 | `declaration-track:4954eb3c9b697e0defcaaef18e12d853ebfb7ed9fdd5204e46c5f4ed3236340d` |
| 10 | `theorem` | [cast_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-le--c34258f148084fe081dc2bff.md) | 85 | `result-track:c34258f148084fe081dc2bff4d43d09e20fdfc4e5f30d663b55d5fbd29828039` |
| 11 | `theorem` | [cast_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-lt--fda0f63daf0e3dae5775494b.md) | 89 | `result-track:fda0f63daf0e3dae5775494bad88a91ae4c35ce4e46ad4ce95183f945106f02c` |
| 12 | `theorem` | [one_lt_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/one-lt-cast--35549c25885bbf1c2497f95f.md) | 93 | `result-track:35549c25885bbf1c2497f95ff9344d073a6cdf39ee94215a29d0e42baa8679d5` |
| 13 | `theorem` | [one_le_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/one-le-cast--0f37b4ae048be5d88a6ad05d.md) | 96 | `result-track:0f37b4ae048be5d88a6ad05d9518db06ccb9e80414f89ae14391368fb9de3c38` |
| 14 | `theorem` | [cast_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-lt-one--29e9a601f31d54ccdcd16a68.md) | 99 | `result-track:29e9a601f31d54ccdcd16a681f0fec4c077943dfc4f31d8634e46b85833ecda8` |
| 15 | `theorem` | [cast_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-le-one--258a14e9b47a9b86377f4ce0.md) | 103 | `result-track:258a14e9b47a9b86377f4ce037160e3b8d3eae8e8c80d28212474c0cce9d3a1f` |
| 16 | `lemma` | [cast_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-nonpos--d785b81a89b58976e039cb5b.md) | 105 | `result-track:d785b81a89b58976e039cb5b07ae90d7f5372023bed4155550964aac7d04f440` |
| 17 | `theorem` | [ofNat_le_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/ofnat-le-cast--8f853e4a54b24edded3073f3.md) | 111 | `result-track:8f853e4a54b24edded3073f3c40d639805eb6419c43fb6543a0c3f356d9ad6f4` |
| 18 | `theorem` | [ofNat_lt_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/ofnat-lt-cast--1f5b55348bdc84afbd2cfecd.md) | 115 | `result-track:1f5b55348bdc84afbd2cfecdf3f17a2d2ef8fa3cda0f3e5ca8379da0ca9f1bbc` |
| 19 | `theorem` | [cast_le_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-le-ofnat--af8fde24ce73ba4dc02b1e96.md) | 123 | `result-track:af8fde24ce73ba4dc02b1e96ebfa667db395b645738cf6c227822254b70c35c5` |
| 20 | `theorem` | [cast_lt_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/cast-lt-ofnat--d4a65899ab57517ae76fccbf.md) | 127 | `result-track:d4a65899ab57517ae76fccbf6a4a82f62aca80a17b214fb76a9a5c122abad789` |
| 21 | `theorem` | [one_lt_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/one-lt-ofnat--310138790e4dc1540b361bbd.md) | 131 | `result-track:310138790e4dc1540b361bbdad2103718c14b612cf9343a1cd620cd123e9b5d9` |
| 22 | `theorem` | [one_le_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/one-le-ofnat--87f451ecde8aafd3025db0f1.md) | 135 | `result-track:87f451ecde8aafd3025db0f1110cd3c61fec91a42f86c1fb035e1b73b636491f` |
| 23 | `theorem` | [not_ofNat_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/not-ofnat-le-one--be28f4b9db078c8a68dd0120.md) | 139 | `result-track:be28f4b9db078c8a68dd0120cb9e6b55bb6e96ab938c72abb24e96a9db59027f` |
| 24 | `theorem` | [not_ofNat_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/not-ofnat-lt-one--73f53c4e681b8961af2002e4.md) | 143 | `result-track:73f53c4e681b8961af2002e40f1d6453e788e32bc7ad73db0a06734867f73fdc` |
| 25 | `theorem` | [ofNat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/ofnat-le--786b871fa8665b53ad1deedb.md) | 153 | `result-track:786b871fa8665b53ad1deedbd34313e0d3a827635dd8ae05bb2e574b6890b4d2` |
| 26 | `theorem` | [ofNat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/ofnat-lt--64899374677e6f2c029dd53e.md) | 158 | `result-track:64899374677e6f2c029dd53e974a6298db78b005d9ca67f2d1b165ff8278d837` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/instance--51d6083fc363f710acf522f3.md) | 166 | `declaration-track:51d6083fc363f710acf522f34c9043db68f0e788f013332a568fa893c8bbc42a` |
| 28 | `theorem` | [NeZero.nat_of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant7cd7d4db7394112ebd3dc3117ef8ce1db87327c935911c084171575bc0ff25ff.lean/declarations/nezero-nat-of-injective--cb85c5e8e5d4980198568641.md) | 173 | `result-track:cb85c5e8e5d4980198568641058c6c04a12aad6ff8f593be872cb919e093febd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
