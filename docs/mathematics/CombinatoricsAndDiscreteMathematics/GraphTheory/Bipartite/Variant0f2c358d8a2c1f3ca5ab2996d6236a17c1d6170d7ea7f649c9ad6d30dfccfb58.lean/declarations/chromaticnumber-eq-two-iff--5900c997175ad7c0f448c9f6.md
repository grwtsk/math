# chromaticNumber_eq_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ebe843e-f410-0544-e91f-1acc66a1e9a6",
  "kind": "theorem",
  "lexical_name": "chromaticNumber_eq_two_iff",
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
  "slug": "chromaticnumber-eq-two-iff--5900c997175ad7c0f448c9f6",
  "source": {
    "blob": "fbf216e964a59127e6a1b2c1a91c80ce906d8f40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 324,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5900c997175ad7c0f448c9f604b0aa885a67a59b3e1e93d21c1e670cd0ccac3f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ebe843e-f410-0544-e91f-1acc66a1e9a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chromaticNumber_eq_two_iff : G.chromaticNumber = 2 ↔ G.IsBipartite ∧ G ≠ ⊥ :=
  ⟨fun h ↦ ⟨chromaticNumber_le_two_iff_isBipartite.mp (by simp [h]),
            two_le_chromaticNumber_iff_ne_bot.mp (by simp [h])⟩,
   fun ⟨h₁, h₂⟩ ↦ ENat.eq_of_forall_natCast_le_iff fun _ ↦
      ⟨fun h ↦ h.trans <| chromaticNumber_le_two_iff_isBipartite.mpr h₁,
       fun h ↦ h.trans <| two_le_chromaticNumber_iff_ne_bot.mpr h₂⟩⟩

variable (V) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf216e964a59127e6a1b2c1a91c80ce906d8f40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
