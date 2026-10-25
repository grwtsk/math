# UInt32.ofInt_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:609d23fa-ca3a-80ab-9b0e-5c56b3d16a56",
  "kind": "theorem",
  "lexical_name": "UInt32.ofInt_add",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "uint32-ofint-add--1f4293bce5c65dafdd9f62f6",
  "source": {
    "blob": "99e1b264ca34d36079562f343283a0500bdcc209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2599,
    "line": 2591,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f4293bce5c65dafdd9f62f622510397b9ece8c4dd2fbd8805fd70920e73595a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:609d23fa-ca3a-80ab-9b0e-5c56b3d16a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2591–2599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem UInt32.ofInt_add (x y : Int) : UInt32.ofInt (x + y) = UInt32.ofInt x + UInt32.ofInt y := by
  dsimp only [UInt32.ofInt]
  rw [Int.add_emod]
  have h₁ : 0 ≤ x % 2 ^ 32 := Int.emod_nonneg _ (by decide)
  have h₂ : 0 ≤ y % 2 ^ 32 := Int.emod_nonneg _ (by decide)
  have h₃ : 0 ≤ x % 2 ^ 32 + y % 2 ^ 32 := Int.add_nonneg h₁ h₂
  rw [Int.toNat_emod h₃ (by decide), Int.toNat_add h₁ h₂]
  have : (2 ^ 32 : Int).toNat = 2 ^ 32 := (rfl)
  rw [this, UInt32.ofNat_mod_size, UInt32.ofNat_add]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc1d4612e854d33b6e81999e76fbcda939a129ecfc31c23f5825e1cccd8b3f499.lean#L2591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99e1b264ca34d36079562f343283a0500bdcc209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
