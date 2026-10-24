# dense_biInter_of_Gδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61560b8c-d805-9763-2933-270c7aa44dc3",
  "kind": "theorem",
  "lexical_name": "dense_biInter_of_Gδ",
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
  "slug": "dense-biinter-of-g--0764177c7cb419a17cbc86ca",
  "source": {
    "blob": "f7eecb27e8705b47215657356ef9fe0b13e12fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 281,
    "path": "GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0764177c7cb419a17cbc86ca0f6688c8dc12c1ce34d373325a4e7930287aa0b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61560b8c-d805-9763-2933-270c7aa44dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dense_biInter_of_Gδ {S : Set β} {f : ∀ x ∈ S, Set α} (ho : ∀ s (H : s ∈ S), IsGδ (f s H))
    (hS : S.Countable) (hd : ∀ s (H : s ∈ S), Dense (f s H)) : Dense (⋂ s ∈ S, f s ‹_›) := by
  rw [biInter_eq_iInter]
  haveI := hS.toEncodable
  exact dense_iInter_of_Gδ (fun s => ho s s.2) fun s => hd s s.2
set_option linter.uppercaseLean3 false in
#align dense_bInter_of_Gδ dense_biInter_of_Gδ

/-- Baire theorem: the intersection of two dense Gδ sets is dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7eecb27e8705b47215657356ef9fe0b13e12fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
