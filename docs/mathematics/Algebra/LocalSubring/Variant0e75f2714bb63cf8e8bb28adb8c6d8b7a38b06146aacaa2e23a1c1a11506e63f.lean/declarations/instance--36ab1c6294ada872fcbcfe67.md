# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f86c51f779002b7cba0e0b99dea6ea2ac1f322be42a50a7fcdb040fa930d8e37",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--36ab1c6294ada872fcbcfe67",
  "source": {
    "blob": "9a76dca48d7bd17a413b400c2e657a899a101801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/Algebra/LocalSubring/Variant0e75f2714bb63cf8e8bb28adb8c6d8b7a38b06146aacaa2e23a1c1a11506e63f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36ab1c6294ada872fcbcfe67eb44f9be858ebe0bc7a10fad1138f4409351ac87",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variant0e75f2714bb63cf8e8bb28adb8c6d8b7a38b06146aacaa2e23a1c1a11506e63f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f86c51f779002b7cba0e0b99dea6ea2ac1f322be42a50a7fcdb040fa930d8e37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PartialOrder (LocalSubring R) where
  le A B := ∃ h : A.1 ≤ B.1, IsLocalHom (Subring.inclusion h)
  le_refl a := ⟨le_rfl, ⟨fun _ ↦ id⟩⟩
  le_trans A B C h₁ h₂ := ⟨h₁.1.trans h₂.1, @RingHom.isLocalHom_comp _ _ _ _ _ _ _ _ h₂.2 h₁.2⟩
  le_antisymm A B h₁ h₂ := toSubring_injective (le_antisymm h₁.1 h₂.1)

/-- `A` dominates `B` if and only if `B ≤ A` (as subrings) and `m_A ∩ B = m_B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variant0e75f2714bb63cf8e8bb28adb8c6d8b7a38b06146aacaa2e23a1c1a11506e63f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variant0e75f2714bb63cf8e8bb28adb8c6d8b7a38b06146aacaa2e23a1c1a11506e63f.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a76dca48d7bd17a413b400c2e657a899a101801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
