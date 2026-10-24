# isTotallyDisconnected_of_isTotallySeparated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d95a4ba-0b73-5456-386f-9e4d292f9771",
  "kind": "theorem",
  "lexical_name": "isTotallyDisconnected_of_isTotallySeparated",
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
  "slug": "istotallydisconnected-of-istotallyseparated--d10dc16ea6a08b9cead9f407",
  "source": {
    "blob": "fd11b06d09450631e88f4260cb6e7029b0cb6bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d10dc16ea6a08b9cead9f40749802f957c20e63075b13e4e26fd97b7e878d92d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d95a4ba-0b73-5456-386f-9e4d292f9771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTotallyDisconnected_of_isTotallySeparated {s : Set α} (H : IsTotallySeparated s) :
    IsTotallyDisconnected s := by
  intro t hts ht x x_in y y_in
  by_contra h
  obtain
    ⟨u : Set α, v : Set α, hu : IsOpen u, hv : IsOpen v, hxu : x ∈ u, hyv : y ∈ v, hs : s ⊆ u ∪ v,
      huv⟩ :=
    H (hts x_in) (hts y_in) h
  refine (ht _ _ hu hv (hts.trans hs) ⟨x, x_in, hxu⟩ ⟨y, y_in, hyv⟩).ne_empty ?_
  rw [huv.inter_eq, inter_empty]

alias IsTotallySeparated.isTotallyDisconnected := isTotallyDisconnected_of_isTotallySeparated

/-- A space is totally separated if any two points can be separated by two disjoint open sets
covering the whole space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd11b06d09450631e88f4260cb6e7029b0cb6bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
