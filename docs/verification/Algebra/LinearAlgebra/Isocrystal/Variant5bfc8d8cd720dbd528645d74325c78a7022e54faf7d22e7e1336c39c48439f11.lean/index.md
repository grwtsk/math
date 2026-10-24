# Verification target: GRWTSK.Algebra.LinearAlgebra.Isocrystal.Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "655b7e16952e77ca869b62612543d0984fa2bc9b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `655b7e16952e77ca869b62612543d0984fa2bc9b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.FrobeniusFractionField` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FractionRing.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/fractionring-frobenius--b3cfbb1d2f15becee32a19d2.md) | 88 | `declaration-track:b3cfbb1d2f15becee32a19d258f73d0bf5216f43215fa4ce20a37f7e72633475` |
| 2 | `def` | [FractionRing.frobeniusRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/fractionring-frobeniusringhom--fc98b1fb6a3c04a78cbe5d7c.md) | 93 | `declaration-track:fc98b1fb6a3c04a78cbe5d7ce0064ed8920ec6e7a4fa69aef940d5dbca3c5270` |
| 3 | `instance` | [inv_pair₁](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/inv-pair--bc02fbc9f2dd8f058d4dccf3.md) | 99 | `declaration-track:bc02fbc9f2dd8f058d4dccf348ee174d72e4e277e3c6b3a5f9423d7fc334b225` |
| 4 | `instance` | [inv_pair₂](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/inv-pair--f124f77afa50ba5ad1dd3f64.md) | 103 | `declaration-track:f124f77afa50ba5ad1dd3f645807c984ebd4c6f9f325eaf2e9b222572c9d7784` |
| 5 | `class` | [Isocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/isocrystal--221aeaf831018d2633e2f693.md) | 122 | `declaration-track:221aeaf831018d2633e2f6931b2ec9c186331e04d82d6e1d12116d32a655090a` |
| 6 | `def` | [Isocrystal.frobenius](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/isocrystal-frobenius--c5d0e7dfc9b2ee7e54fd4705.md) | 137 | `declaration-track:c5d0e7dfc9b2ee7e54fd4705ae8e71bf4fb1f734802ffbc60699e53aec864d60` |
| 7 | `structure` | [IsocrystalHom](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/isocrystalhom--8e693ac272293592b60840ab.md) | 148 | `declaration-track:8e693ac272293592b60840aba3ac8190125cd46423ab46424fef0407e4e70fe4` |
| 8 | `structure` | [IsocrystalEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/isocrystalequiv--3049799fbf0643eda981a8b5.md) | 155 | `declaration-track:3049799fbf0643eda981a8b52c527f7b628eaed2b214c277e12c272a79523f2a` |
| 9 | `def` | [FractionRing.module](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/fractionring-module--8fd9918bc590b388943fa187.md) | 172 | `declaration-track:8fd9918bc590b388943fa1874559c8781dcb694f0d9bd8e48c53f1b4362dd20c` |
| 10 | `def` | [StandardOneDimIsocrystal](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/standardonedimisocrystal--ab7146ebd14ac97942461af9.md) | 182 | `declaration-track:ab7146ebd14ac97942461af90c46fa7d6066e8ed97232e12e50832074c668c87` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/instance--c3e45236e5e8748eeae0c937.md) | 189 | `declaration-track:c3e45236e5e8748eeae0c9375f2f5cdd09002a4edb5f7105b49a22c4402b5458` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/instance--ea463dc5810f090a58eb857a.md) | 191 | `declaration-track:ea463dc5810f090a58eb857a3d802bbe073ccd18ce35caf3cddde5c0ad99e8a6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/instance--de6285074db454143c73b5ac.md) | 201 | `declaration-track:de6285074db454143c73b5ac4992eee991182a39179d614dbe2822320bcd434f` |
| 14 | `theorem` | [StandardOneDimIsocrystal.frobenius_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/standardonedimisocrystal-frobenius-apply--f143543266f68e52844ad99b.md) | 207 | `result-track:f143543266f68e52844ad99b45f38b8c66263c6a074188ae335e83c68f5e4060` |
| 15 | `theorem` | [isocrystal_classification](../../../../../mathematics/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean/declarations/isocrystal-classification--ae8d8ddac4496032a73a514c.md) | 219 | `result-track:ae8d8ddac4496032a73a514cf4e86e5816a606cb62d9c6032c424ba4160af38b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
