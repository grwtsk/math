# Finite.exists_bijOn_of_encard_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0372030e-828b-c029-4d0f-c7dd4800dd67",
  "kind": "theorem",
  "lexical_name": "Finite.exists_bijOn_of_encard_eq",
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
  "slug": "finite-exists-bijon-of-encard-eq--7926b929cc66593af62511c0",
  "source": {
    "blob": "b08e799e6244fa8fd4a5cd055c04b858fda23fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 582,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7926b929cc66593af62511c0ab864f460c89a664ad90b14614bba58048150899",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0372030e-828b-c029-4d0f-c7dd4800dd67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finite.exists_bijOn_of_encard_eq [Nonempty β] (hs : s.Finite) (h : s.encard = t.encard) :
    ∃ (f : α → β), BijOn f s t := by
  obtain ⟨f, hf, hinj⟩ := hs.exists_injOn_of_encard_le h.le; use f
  convert! hinj.bijOn_image
  rw [(hs.image f).eq_of_subset_of_encard_le (image_subset_iff.mpr hf)
    (h.symm.trans hinj.encard_image.symm).le]

/-- A version of the pigeonhole principle for `Set`s rather than `Finset`s.

See also `Finset.exists_ne_map_eq_of_card_lt_of_maps_to` and
`Set.exists_ne_map_eq_of_ncard_lt_of_maps_to`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b08e799e6244fa8fd4a5cd055c04b858fda23fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
