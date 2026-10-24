# localization_localization_surj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55aef0f5-4564-7081-b20e-95ba94a91c04",
  "kind": "theorem",
  "lexical_name": "localization_localization_surj",
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
  "slug": "localization-localization-surj--d021863d7c3111f3548180b0",
  "source": {
    "blob": "6627644612543b753f443169fef0d405f8581f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 76,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d021863d7c3111f3548180b06e0c818ebf17dc82bd3d3e48a05ae6fb2e5d2446",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55aef0f5-4564-7081-b20e-95ba94a91c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_localization_surj [IsLocalization N T] (x : T) :
    ∃ y : R × localizationLocalizationSubmodule M N,
        x * algebraMap R T y.2 = algebraMap R T y.1 := by
  rcases IsLocalization.surj N x with ⟨⟨y, s⟩, eq₁⟩
  -- x = y / s
  rcases IsLocalization.surj M y with ⟨⟨z, t⟩, eq₂⟩
  -- y = z / t
  rcases IsLocalization.surj M (s : S) with ⟨⟨z', t'⟩, eq₃⟩
  -- s = z' / t'
  dsimp only at eq₁ eq₂ eq₃
  refine ⟨⟨z * t', z' * t, ?_⟩, ?_⟩ -- x = y / s = (z * t') / (z' * t)
  · rw [mem_localizationLocalizationSubmodule]
    refine ⟨s, t * t', ?_⟩
    rw [RingHom.map_mul, ← eq₃, mul_assoc, ← RingHom.map_mul, mul_comm t, Submonoid.coe_mul]
  · simp only [Subtype.coe_mk, RingHom.map_mul, IsScalarTower.algebraMap_apply R S T, ← eq₃, ← eq₂,
      ← eq₁]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6627644612543b753f443169fef0d405f8581f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
