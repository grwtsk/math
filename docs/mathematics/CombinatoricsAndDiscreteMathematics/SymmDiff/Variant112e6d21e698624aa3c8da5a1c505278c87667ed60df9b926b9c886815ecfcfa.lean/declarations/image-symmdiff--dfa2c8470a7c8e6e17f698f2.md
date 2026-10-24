# image_symmDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70e379fc-b38d-6fc7-367a-6d5a63ee7ef5",
  "kind": "theorem",
  "lexical_name": "image_symmDiff",
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
  "slug": "image-symmdiff--dfa2c8470a7c8e6e17f698f2",
  "source": {
    "blob": "dff71deef7956f8ecb4b8df61729d5973789a7ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa2c8470a7c8e6e17f698f2736cd25d4f847c9efe98e67c66803bb6f73b759f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70e379fc-b38d-6fc7-367a-6d5a63ee7ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_symmDiff [DecidableEq β] {f : α → β} (s t : Finset α) (hf : Injective f) :
    (s ∆ t).image f = s.image f ∆ t.image f :=
  mod_cast Set.image_symmDiff hf s t

/-- See `symmDiff_subset_sdiff'` for the swapped version of this. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff71deef7956f8ecb4b8df61729d5973789a7ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
