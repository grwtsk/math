# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2fc2be46372d1a347d9586fbd06124be4521ea6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2fc2be46372d1a347d9586fbd06124be4521ea6`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitOfInvertible](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/unitofinvertible--e64431e0729608637b46355c.md) | 23 | `declaration-track:e64431e0729608637b46355cf15a76f4083c3338fbd228e4c3788745d82d311c` |
| 2 | `theorem` | [isUnit_of_invertible](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/isunit-of-invertible--950494af931442a75ce9d6d5.md) | 29 | `result-track:950494af931442a75ce9d6d5ccc4dcb5c8f23205812bae908091f41ebf9d35f6` |
| 3 | `def` | [Units.invertible](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/units-invertible--a2cde704e33545c81f46dd16.md) | 33 | `declaration-track:a2cde704e33545c81f46dd1639bacc62d1fcd18c730c550385f86c39597f07c9` |
| 4 | `theorem` | [invOf_units](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invof-units--d00c3c8477192fd3089dac21.md) | 40 | `result-track:d00c3c8477192fd3089dac2180d1437328ead611106e654e2c0f9ecfab783f9d` |
| 5 | `theorem` | [IsUnit.nonempty_invertible](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/isunit-nonempty-invertible--81820fc4bb40b47b84cd8643.md) | 43 | `result-track:81820fc4bb40b47b84cd86434a51bd04cfeb48c63910f20dcd65ad9400a09a0e` |
| 6 | `def` | [IsUnit.invertible](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/isunit-invertible--98129eba5633ef2522502087.md) | 50 | `declaration-track:98129eba5633ef2522502087bddf720f64cbda20c96d5d453ac80ba959223051` |
| 7 | `theorem` | [nonempty_invertible_iff_isUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/nonempty-invertible-iff-isunit--811dc01f8146fbdc328db86b.md) | 54 | `result-track:811dc01f8146fbdc328db86beac299baba49a3587648d759015ed7b53d4154fc` |
| 8 | `theorem` | [Commute.invOf_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/commute-invof-right--81b0da5ac3c7c3f7dc61b809.md) | 57 | `result-track:81b0da5ac3c7c3f7dc61b809ff3abb1baa28378e93a8acf9444e4d51eea4dd4b` |
| 9 | `theorem` | [Commute.invOf_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/commute-invof-left--04e6b84f57a4c86cc4b03923.md) | 64 | `result-track:04e6b84f57a4c86cc4b03923ea5422a477745e436d2e17b1633fc565a7a3438a` |
| 10 | `theorem` | [commute_invOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/commute-invof--25ef73ddf675ac77444cc0f3.md) | 71 | `result-track:25ef73ddf675ac77444cc0f3ea3e2a57fe60b55dfaef29b148a87fe66d4b8798` |
| 11 | `abbrev` | [invertibleOfInvertibleMul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertibleofinvertiblemul--a0bb9ad6df2b154bffb43839.md) | 81 | `declaration-track:a0bb9ad6df2b154bffb43839e3bb61c4ad9292e99ffda3cd3e86173df77e29bb` |
| 12 | `abbrev` | [invertibleOfMulInvertible](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertibleofmulinvertible--068d580670c97bc97e635723.md) | 89 | `declaration-track:068d580670c97bc97e6357239d4070a0b15f322d18eeb408a8e6c4b0b7476cd6` |
| 13 | `def` | [Invertible.mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertible-mulleft--ce9487768f99055d86db7389.md) | 98 | `declaration-track:ce9487768f99055d86db7389f9c4d0bd50da11140b3d779c415b2b5f1f5c26ca` |
| 14 | `def` | [Invertible.mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertible-mulright--a9cf13b5aeca74f49c38f343.md) | 106 | `declaration-track:a9cf13b5aeca74f49c38f343fd45d76e4f768095d524fa79938c18c42b15010b` |
| 15 | `instance` | [invertiblePow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertiblepow--d4c3b6baba68d32ffbca9c0b.md) | 112 | `declaration-track:d4c3b6baba68d32ffbca9c0be63db0079c39047afe9926aacac7205c464bf031` |
| 16 | `lemma` | [invOf_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invof-pow--1a1b94f8342f6223d2629034.md) | 117 | `result-track:1a1b94f8342f6223d2629034864bde86115c03fda31e1beb5c87655ed5313e8b` |
| 17 | `def` | [invertibleOfPowEqOne](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertibleofpoweqone--d5871866e3071d1d14d9e99f.md) | 121 | `declaration-track:d5871866e3071d1d14d9e99f40a734a39085d0bc3bea03444e01e659a14a8206` |
| 18 | `def` | [Invertible.map](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertible-map--b0b194148b5126637ed20bc2.md) | 128 | `declaration-track:b0b194148b5126637ed20bc2eab7cc900d47af4b4886086efbec0120ccc0c1bc` |
| 19 | `theorem` | [map_invOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/map-invof--a5a2b3ecebd82542b3ce32db.md) | 137 | `result-track:a5a2b3ecebd82542b3ce32db158f66bb337da69d6d7b93cfa6bb109b0fee753b` |
| 20 | `def` | [Invertible.ofLeftInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertible-ofleftinverse--e8ac535710ef93ee7a436eb7.md) | 149 | `declaration-track:e8ac535710ef93ee7a436eb798386bddb0363701191b19140418362d22d02069` |
| 21 | `def` | [invertibleEquivOfLeftInverse](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant91fe277e607ea6fe47d75ef8840a0d07a2c9ba818253f45f3e5a7be87f6cb23c.lean/declarations/invertibleequivofleftinverse--7b4fbc3c81dd127c8fa01ae7.md) | 156 | `declaration-track:7b4fbc3c81dd127c8fa01ae7e4d8205e60943015efcf600c51108950f15ef428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
