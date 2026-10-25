# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckedQuasiIsomorphism.Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14f1147c0a3be24ea22545fabd9e82da3b2f5094",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14f1147c0a3be24ea22545fabd9e82da3b2f5094`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.Derived.TorsionComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.ProofStatus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CheckedQuasiIsoShadow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/declarations/checkedquasiisoshadow--0fa8b3a3891490b571b7adf4.md) | 22 | `declaration-track:0fa8b3a3891490b571b7adf437acc8693412d9e6f50309b7f283ef3764753991` |
| 2 | `theorem` | [checkedQuasiIsoShadow_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/declarations/checkedquasiisoshadow-refl--41b10ac391eca05a39bf1620.md) | 27 | `result-track:41b10ac391eca05a39bf162072468d7c4651119a19a8b9442bda2e0c8ada6c63` |
| 3 | `theorem` | [checkedQuasiIsoShadow_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/declarations/checkedquasiisoshadow-symm--456ac03858ed135731c2fdb5.md) | 33 | `result-track:456ac03858ed135731c2fdb5c30e60f93879d953fa5edb588d76fd0c2cf9df7c` |
| 4 | `theorem` | [checkedQuasiIsoShadow_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/declarations/checkedquasiisoshadow-trans--7f684db37c1c98c5cca02340.md) | 40 | `result-track:7f684db37c1c98c5cca023401e2898e17bb33ca1a4f336ada7cf1d54b8bace00` |
| 5 | `theorem` | [checkedQuasiIsoShadow_preserves_euler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/declarations/checkedquasiisoshadow-preserves-euler--cc80f3debdf589ba4b908c49.md) | 48 | `result-track:cc80f3debdf589ba4b908c49f0e5cde1f3a8796b3c64834f16f41bce1fefaff1` |
| 6 | `theorem` | [checkedQuasiIsoShadow_preserves_torsionMass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/declarations/checkedquasiisoshadow-preserves-torsionmass--3807b87a73df589a737a1122.md) | 54 | `result-track:3807b87a73df589a737a112212807ec5d75d233a019cfbf174e57daf4e4e73dd` |
| 7 | `structure` | [LegacyQuasiIsoAnchor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckedQuasiIsomorphism/Variant60f6467ee4c106837e89dcaa0c0317e6a5ceffe3890ae4bec11683b034175f38.lean/declarations/legacyquasiisoanchor--31d2f059e0b91c31ff274b95.md) | 60 | `declaration-track:31d2f059e0b91c31ff274b95accdfeab5f3c47442c6392ee7694bae882c43d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
