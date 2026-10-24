# IsCompact.exists_isLeast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2089a86-bb98-9adc-472d-0a10d14a4374",
  "kind": "theorem",
  "lexical_name": "IsCompact.exists_isLeast",
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
  "slug": "iscompact-exists-isleast--7c89ba11abe5f760b3a30a52",
  "source": {
    "blob": "454da57d03f8316a1946bd94d6665572a776dcd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c89ba11abe5f760b3a30a52f60ba51fef46ef0453b9e89029473f1b5b5bba02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2089a86-bb98-9adc-472d-0a10d14a4374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.exists_isLeast [ClosedIicTopology α] {s : Set α} (hs : IsCompact s)
    (ne_s : s.Nonempty) : ∃ x, IsLeast s x := by
  haveI : Nonempty s := ne_s.to_subtype
  suffices : (s ∩ ⋂ x ∈ s, Iic x).Nonempty
  · exact ⟨this.choose, this.choose_spec.1, mem_iInter₂.mp this.choose_spec.2⟩
  rw [biInter_eq_iInter]
  by_contra H
  rw [not_nonempty_iff_eq_empty] at H
  rcases hs.elim_directed_family_closed (fun x : s => Iic ↑x) (fun x => isClosed_Iic) H
      (directed_of_inf fun _ _ h => Iic_subset_Iic.mpr h) with ⟨x, hx⟩
  exact not_nonempty_iff_eq_empty.mpr hx ⟨x, x.2, le_rfl⟩
#align is_compact.exists_is_least IsCompact.exists_isLeast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantdababdfb5f8126c8a9f15bfbb7f9ef68559830dd42e73e179a24b2266d333c46.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454da57d03f8316a1946bd94d6665572a776dcd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
