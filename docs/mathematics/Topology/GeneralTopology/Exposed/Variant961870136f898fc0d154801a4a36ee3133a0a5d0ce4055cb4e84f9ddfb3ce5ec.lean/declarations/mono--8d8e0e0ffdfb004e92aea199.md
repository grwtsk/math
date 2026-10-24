# mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f70ec11d-7058-c22f-64e8-9995ffed6552",
  "kind": "theorem",
  "lexical_name": "mono",
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
  "slug": "mono--8d8e0e0ffdfb004e92aea199",
  "source": {
    "blob": "015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d8e0e0ffdfb004e92aea199e8ca31d2657082f8b1342e039ddba8725ace3050",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f70ec11d-7058-c22f-64e8-9995ffed6552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mono (hC : IsExposed 𝕜 A C) (hBA : B ⊆ A) (hCB : C ⊆ B) : IsExposed 𝕜 B C := by
  rintro ⟨w, hw⟩
  obtain ⟨l, rfl⟩ := hC ⟨w, hw⟩
  exact ⟨l, Subset.antisymm (fun x hx => ⟨hCB hx, fun y hy => hx.2 y (hBA hy)⟩) fun x hx =>
    ⟨hBA hx.1, fun y hy => (hw.2 y hy).trans (hx.2 w (hCB hw))⟩⟩

/-- If `B` is a nonempty exposed subset of `A`, then `B` is the intersection of `A` with some closed
half-space. The converse is *not* true. It would require that the corresponding open half-space
doesn't intersect `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variant961870136f898fc0d154801a4a36ee3133a0a5d0ce4055cb4e84f9ddfb3ce5ec.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015e3a41f25ae35d8cf8ba0ddceb5e0e0a27833e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
