# generateFrom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ff62b6c-46dd-f441-3d5f-86a77e6b45af",
  "kind": "theorem",
  "lexical_name": "generateFrom_eq",
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
  "slug": "generatefrom-eq--22b50f9b41d88a259685deb7",
  "source": {
    "blob": "3f58d006d5570e35dfb85d57c9a3424fd85c5b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 743,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22b50f9b41d88a259685deb788f91df177a9f8350bfa00a15a8b4bff0857516d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ff62b6c-46dd-f441-3d5f-86a77e6b45af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 743–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateFrom_eq {s : Set (Set α)} (hs : IsPiSystem s) :
    generateFrom s = (generate s).toMeasurableSpace fun t₁ t₂ => generate_inter hs :=
  le_antisymm (generateFrom_le fun t ht => GenerateHas.basic t ht)
    (ofMeasurableSpace_le_ofMeasurableSpace_iff.mp <| by
      rw [ofMeasurableSpace_toMeasurableSpace]
      exact generate_le _ fun t ht => measurableSet_generateFrom ht)
#align measurable_space.dynkin_system.generate_from_eq MeasurableSpace.DynkinSystem.generateFrom_eq

end DynkinSystem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variantfebe0f69ac800f08a15b71ce7918808ab74d7f5b954a28a06acb4dd73f670c1b.lean#L743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f58d006d5570e35dfb85d57c9a3424fd85c5b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
