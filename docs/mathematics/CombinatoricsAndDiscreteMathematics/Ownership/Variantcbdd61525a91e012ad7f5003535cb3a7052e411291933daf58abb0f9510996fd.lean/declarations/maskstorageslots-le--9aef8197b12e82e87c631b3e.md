# maskStorageSlots_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:274d0127-a534-354a-cbe9-bd4de32895cc",
  "kind": "theorem",
  "lexical_name": "maskStorageSlots_le",
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
  "slug": "maskstorageslots-le--9aef8197b12e82e87c631b3e",
  "source": {
    "blob": "05d033511e3537d8b65fb25566a544b57250ff7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aef8197b12e82e87c631b3e568d775586db37da460cd9f6a79fce05f1a9d5cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:274d0127-a534-354a-cbe9-bd4de32895cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maskStorageSlots_le (C : Fin n → Finset X) (b : ℕ)
    (hsize : ∀ i, (C i).card ≤ b) : maskStorageSlots C ≤ n * b := by
  simpa only [maskStorageSlots_eq, maskEntryVisits_eq] using maskEntryVisits_le C b hsize

/-- Catalogue of all individual source-block restrictions; duplicates merge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05d033511e3537d8b65fb25566a544b57250ff7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
