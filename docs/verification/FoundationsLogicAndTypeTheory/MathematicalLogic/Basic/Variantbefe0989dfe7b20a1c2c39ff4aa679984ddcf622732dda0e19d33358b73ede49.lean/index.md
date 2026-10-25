# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a93b54380b9fcca73a2efda5ea4446e3e5a9c13",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a93b54380b9fcca73a2efda5ea4446e3e5a9c13`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_dvd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/map-dvd-iff--e82db644c9018689f6893066.md) | 34 | `result-track:e82db644c9018689f6893066d5a318decb3f7d609ae0c8f81151482e29170e8a` |
| 2 | `theorem` | [map_dvd_iff_dvd_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/map-dvd-iff-dvd-symm--351b6610fea8577a48c32d4c.md) | 38 | `result-track:351b6610fea8577a48c32d4c914c2540dd5a6abd647922f6003862c5a65ee78f` |
| 3 | `theorem` | [MulEquiv.decompositionMonoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/mulequiv-decompositionmonoid--5ae2f42125bbf3fb70dfd009.md) | 43 | `result-track:5ae2f42125bbf3fb70dfd00913cfe148c9c2e494316547b418eab10976828857` |
| 4 | `def` | [Equiv.dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/equiv-dvd--54a822a713f66364c157ffeb.md) | 56 | `declaration-track:54a822a713f66364c157ffeb72ce6966d6175d5fa0f6d0aa61b689cd0a38becf` |
| 5 | `theorem` | [Equiv.dvd_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/equiv-dvd-apply--c5a71369788f11531fce97fb.md) | 66 | `result-track:c5a71369788f11531fce97fbfe12e37d65cba95f30f7dd7d882e7a90bae94646` |
| 6 | `theorem` | [dvd_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-add--dc76cbef68aa713b03727c01.md) | 75 | `result-track:dc76cbef68aa713b03727c011fa53431627cfe0b55308968a5ea16663bd5dde7` |
| 7 | `lemma` | [min_pow_dvd_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/min-pow-dvd-add--87b773b5dc947088dae8d9e9.md) | 85 | `result-track:87b773b5dc947088dae8d9e965e94678552f9c670c60a80d63bb7a4e8e511d44` |
| 8 | `theorem` | [Dvd.dvd.linear_comb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-dvd-linear-comb--a687ad96d30fa3a29e1df370.md) | 94 | `result-track:a687ad96d30fa3a29e1df370f8bf7fe75789c3c15e4202ca559e028ef5ea0b1d` |
| 9 | `theorem` | [dvd_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-neg--863c06a37a80ae8589f83617.md) | 106 | `result-track:863c06a37a80ae8589f83617500136eeb4e534d8d75e8b3a8abbef034a45b26f` |
| 10 | `theorem` | [neg_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/neg-dvd--6dac02b78a10ac0f9fcf326e.md) | 113 | `result-track:6dac02b78a10ac0f9fcf326ee0afd8dd889ab3a431fac885c08b3173bfef150d` |
| 11 | `theorem` | [dvd_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-sub--4b9637539fbe92e5823874d3.md) | 127 | `result-track:4b9637539fbe92e5823874d36a5f54c176a7dafc527169daaccb596e0d8aca82` |
| 12 | `theorem` | [dvd_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-add-left--9c18033f61c2b85cda8d5542.md) | 134 | `result-track:9c18033f61c2b85cda8d5542530c652ce3ff476a1e0ef7af7b8eeb42913c3ff8` |
| 13 | `theorem` | [dvd_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-add-right--14fdbc949c980c38c3dee999.md) | 139 | `result-track:14fdbc949c980c38c3dee9992c225145a278f1716f033a61006e9233be78a8fe` |
| 14 | `theorem` | [dvd_sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-sub-left--c526987929e0629b6cee8e71.md) | 143 | `result-track:c526987929e0629b6cee8e71d2b964fdfd80f1218e0e187493200e5f4029493f` |
| 15 | `theorem` | [dvd_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-sub-right--7a75abfc33bf0b6ec9b9fa0e.md) | 148 | `result-track:7a75abfc33bf0b6ec9b9fa0e79093d2bda6d68c261ebf72c68f6111618b3a500` |
| 16 | `theorem` | [dvd_iff_dvd_of_dvd_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-iff-dvd-of-dvd-sub--2d1869deebef28003ce5fdcc.md) | 151 | `result-track:2d1869deebef28003ce5fdccc2a16103b185bd19a0880a35553fb02edd0614d1` |
| 17 | `theorem` | [dvd_sub_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-sub-comm--7ec50a699343a77c46d9935b.md) | 154 | `result-track:7ec50a699343a77c46d9935b601d869502270f23f090fb4a4af55c664dc93428` |
| 18 | `theorem` | [dvd_add_self_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-add-self-left--1cedecfd1873114c0232b7d8.md) | 164 | `result-track:1cedecfd1873114c0232b7d8248b1333f23a6629a50a3d34dc56896a022da1b4` |
| 19 | `theorem` | [dvd_add_self_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-add-self-right--0d970efc3954bf165f0e36df.md) | 169 | `result-track:0d970efc3954bf165f0e36dfc4684e8d7737277b88b206ca78d69ea363677ed3` |
| 20 | `theorem` | [dvd_sub_self_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-sub-self-left--8e01cf815af6ab47379a78da.md) | 174 | `result-track:8e01cf815af6ab47379a78da0a199c5b9e483b015b7b4be2b8e008331eebe6b4` |
| 21 | `theorem` | [dvd_sub_self_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-sub-self-right--f82100481b8f2c13dfbadf56.md) | 179 | `result-track:f82100481b8f2c13dfbadf5627107ad08d5e4021b6708aee9fb69d7d8c9a03e1` |
| 22 | `theorem` | [dvd_mul_sub_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbefe0989dfe7b20a1c2c39ff4aa679984ddcf622732dda0e19d33358b73ede49.lean/declarations/dvd-mul-sub-mul--11d698ab4a214d6a6e245351.md) | 188 | `result-track:11d698ab4a214d6a6e24535165ce4fe4638f807fd8661d78af2c4835351c1ea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
