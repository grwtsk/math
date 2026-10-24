# exists_min_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63fd04c5-0cfa-08ab-9f53-13c4381466db",
  "kind": "theorem",
  "lexical_name": "exists_min_image",
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
  "slug": "exists-min-image--719ae4978ad3a992f850230b",
  "source": {
    "blob": "92fcac1ca2ac07f22eb5ae0fa1c57d0924fa7d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:719ae4978ad3a992f850230b8cf7af66d97c0cafbd745d30308d98224695132d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63fd04c5-0cfa-08ab-9f53-13c4381466db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_min_image [LinearOrder β] [Northcott h] (s : Set α) (hs : s.Nonempty) :
    ∃ a ∈ s, ∀ a' ∈ s, h a ≤ h a' := by
  obtain ⟨a₁, h₁⟩ := hs
  obtain ⟨a₂, h₂, h₃⟩ := Set.exists_min_image ({a | h a ≤ h a₁} ∩ s) h
    ((finite_le (h a₁)).inter_of_left s) ⟨a₁, le_rfl, h₁⟩
  grind

/-- A composition `h' ∘ h` is Northcott when `h` is Northcott and preimages of bounded above sets
under `h'` are bounded above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fcac1ca2ac07f22eb5ae0fa1c57d0924fa7d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
