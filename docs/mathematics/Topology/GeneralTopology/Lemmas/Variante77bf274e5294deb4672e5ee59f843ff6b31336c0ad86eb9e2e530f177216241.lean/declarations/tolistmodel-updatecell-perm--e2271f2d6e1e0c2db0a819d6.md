# toListModel_updateCell_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c693635-0b5d-34c7-9796-5973989fe68e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:352faa3d-9f60-6670-53dd-9cf200b237ed",
  "kind": "theorem",
  "lexical_name": "toListModel_updateCell_perm",
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
  "slug": "tolistmodel-updatecell-perm--e2271f2d6e1e0c2db0a819d6",
  "source": {
    "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 383,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2271f2d6e1e0c2db0a819d6d9d68d38277581037ab9dff745a60c0d88c76b09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:352faa3d-9f60-6670-53dd-9cf200b237ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toListModel_updateCell_perm [Ord α] [TransOrd α] [BEq α] [LawfulBEqOrd α]
    {l : Impl α β} (hlb : l.Balanced) (hlo : l.Ordered) {k : α}
    {f : Cell α β (compare k) → Cell α β (compare k)}
    {g : List ((a : α) × β a) → List ((a : α) × β a)}
    (hfg : ∀ {c}, (f c).inner.toList = g c.inner.toList)
    (hg₁ : ∀ {l l'}, DistinctKeys l → List.Perm l l' → List.Perm (g l) (g l'))
    (hg₂ : ∀ {l l'}, containsKey k l' = false → g (l ++ l') = g l ++ l') :
    List.Perm (l.updateCell k f hlb).impl.toListModel (g l.toListModel) := by
  obtain ⟨l, h₁, h₂, h₃⟩ := exists_cell_of_updateCell l hlb hlo k f
  refine h₂.trans (List.Perm.trans ?_ (hg₁ hlo.distinctKeys h₁).symm)
  rwa [hfg, hg₂, List.findCell_inner]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc6135c55a9da254fb5401996378c149a5caf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
