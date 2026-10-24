# IsGδ.dense_iUnion_interior_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:309cc88e-567e-1147-e316-d2af0deadad0",
  "kind": "theorem",
  "lexical_name": "IsGδ.dense_iUnion_interior_of_closed",
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
  "slug": "isg-dense-iunion-interior-of-closed--2536e36d65ada848d4c713e8",
  "source": {
    "blob": "f7eecb27e8705b47215657356ef9fe0b13e12fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2536e36d65ada848d4c713e8bb539a46e93981da934452e963d07afe26eb70c2",
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

Occurrence: `result:309cc88e-567e-1147-e316-d2af0deadad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGδ.dense_iUnion_interior_of_closed [Encodable ι] {s : Set α} (hs : IsGδ s) (hd : Dense s)
    {f : ι → Set α} (hc : ∀ i, IsClosed (f i)) (hU : s ⊆ ⋃ i, f i) :
    Dense (⋃ i, interior (f i)) := by
  let g i := (frontier (f i))ᶜ
  have hgo : ∀ i, IsOpen (g i) := fun i => isClosed_frontier.isOpen_compl
  have hgd : Dense (⋂ i, g i) := by
    refine' dense_iInter_of_open hgo fun i x => _
    rw [closure_compl, interior_frontier (hc _)]
    exact id
  refine' (hd.inter_of_Gδ hs (isGδ_iInter_of_open fun i => (hgo i)) hgd).mono _
  rintro x ⟨hxs, hxg⟩
  rw [mem_iInter] at hxg
  rcases mem_iUnion.1 (hU hxs) with ⟨i, hi⟩
  exact mem_iUnion.2 ⟨i, self_diff_frontier (f i) ▸ ⟨hi, hxg _⟩⟩
set_option linter.uppercaseLean3 false in
#align is_Gδ.dense_Union_interior_of_closed IsGδ.dense_iUnion_interior_of_closed

/-- If a countable family of closed sets cover a dense `Gδ` set, then the union of their interiors
is dense. Formulated here with a union over a countable set in any type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Baire/Variant676e5341a2da45d692a43c375e438055aa55ba4361c03bd5b28aecf6666ee31d.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7eecb27e8705b47215657356ef9fe0b13e12fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
