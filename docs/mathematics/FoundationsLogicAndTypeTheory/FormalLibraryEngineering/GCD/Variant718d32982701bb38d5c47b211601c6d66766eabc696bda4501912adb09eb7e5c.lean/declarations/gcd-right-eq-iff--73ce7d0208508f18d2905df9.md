# gcd_right_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0da92d26-b471-9c1e-9d72-f856f5e395f9",
  "kind": "theorem",
  "lexical_name": "gcd_right_eq_iff",
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
  "slug": "gcd-right-eq-iff--73ce7d0208508f18d2905df9",
  "source": {
    "blob": "16e6ad06ce019ea97bf4794e71b5ccc08a8eae30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ce7d0208508f18d2905df933515c864e20433cedb4ae12ee2cf8e1fca6f188",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da92d26-b471-9c1e-9d72-f856f5e395f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_right_eq_iff {m n n' : Nat} : gcd m n = gcd m n' ↔ ∀ k, k ∣ m → (k ∣ n ↔ k ∣ n') := by
  refine ⟨fun h k hkm => ⟨fun hkn => ?_, fun hkn' => ?_⟩, fun h => Nat.dvd_antisymm ?_ ?_⟩
  · exact Nat.dvd_trans (h ▸ dvd_gcd hkm hkn) (Nat.gcd_dvd_right m n')
  · exact Nat.dvd_trans (h ▸ dvd_gcd hkm hkn') (Nat.gcd_dvd_right m n)
  · exact dvd_gcd_iff.2 ⟨gcd_dvd_left _ _, (h _ (gcd_dvd_left _ _)).1 (gcd_dvd_right _ _)⟩
  · exact dvd_gcd_iff.2 ⟨gcd_dvd_left _ _, (h _ (gcd_dvd_left _ _)).2 (gcd_dvd_right _ _)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant718d32982701bb38d5c47b211601c6d66766eabc696bda4501912adb09eb7e5c.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e6ad06ce019ea97bf4794e71b5ccc08a8eae30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
