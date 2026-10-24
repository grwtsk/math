# comp_of_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f707a3-cfe0-b4c0-d0c2-452c1d94601a",
  "kind": "lemma",
  "lexical_name": "comp_of_bddAbove",
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
  "slug": "comp-of-bddabove--71b00468d6bf2e287156f091",
  "source": {
    "blob": "92fcac1ca2ac07f22eb5ae0fa1c57d0924fa7d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b00468d6bf2e287156f091208ba6826fd7d6dd4850a35d2c9a2546db3fb296",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f707a3-cfe0-b4c0-d0c2-452c1d94601a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_of_bddAbove [Preorder β] [LE γ] [Northcott h] (H : ∀ c, BddAbove (h' ⁻¹' {x | x ≤ c})) :
    Northcott (h' ∘ h) where
  finite_le c := by
    obtain ⟨b, hb⟩ := bddAbove_def.mp (H c)
    exact (finite_le (h := h) b).subset <| by grind

/-- A composition `h' ∘ h` is Northcott when `h'` is Northcott and the fibers of `h` are finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Northcott/Variant6f28b6033a69f22653703d53a976874f505477a1bf6874bb7aae2ba7a23e5579.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fcac1ca2ac07f22eb5ae0fa1c57d0924fa7d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
