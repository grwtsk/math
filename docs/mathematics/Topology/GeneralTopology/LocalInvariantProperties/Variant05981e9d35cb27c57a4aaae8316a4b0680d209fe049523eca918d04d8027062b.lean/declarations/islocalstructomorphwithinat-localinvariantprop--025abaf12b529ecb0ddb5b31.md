# isLocalStructomorphWithinAt_localInvariantProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1570fc5c3a05428aacd05d619a9ca4b26944488",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 592,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf90455d-603e-25a6-c4d6-f4611ef92d9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3aac987-ed90-2922-dca7-54d8f3be0303",
  "kind": "theorem",
  "lexical_name": "isLocalStructomorphWithinAt_localInvariantProp",
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
  "slug": "islocalstructomorphwithinat-localinvariantprop--025abaf12b529ecb0ddb5b31",
  "source": {
    "blob": "e1570fc5c3a05428aacd05d619a9ca4b26944488",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 592,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:025abaf12b529ecb0ddb5b31978fdd612863c2245ee78f95ad69f466bc30ad1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3aac987-ed90-2922-dca7-54d8f3be0303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalStructomorphWithinAt_localInvariantProp [ClosedUnderRestriction G] :
    LocalInvariantProp G G (IsLocalStructomorphWithinAt G) :=
  { is_local := by
      intro s x u f hu hux
      constructor
      · rintro h hx
        rcases h hx.1 with ⟨e, heG, hef, hex⟩
        have : s ∩ u ∩ e.source ⊆ s ∩ e.source := by mfld_set_tac
        exact ⟨e, heG, hef.mono this, hex⟩
      · rintro h hx
        rcases h ⟨hx, hux⟩ with ⟨e, heG, hef, hex⟩
        refine ⟨e.restr (interior u), ?_, ?_, ?_⟩
        · exact closedUnderRestriction' heG isOpen_interior
        · have : s ∩ u ∩ e.source = s ∩ (e.source ∩ u) := by mfld_set_tac
          simpa only [this, interior_interior, hu.interior_eq, mfld_simps] using hef
        · simp only [*, hu.interior_eq, mfld_simps]
    right_invariance' := by
      intro s x f e' he'G he'x h hx
      have hxs : x ∈ s := by simpa only [e'.left_inv he'x, mfld_simps] using hx
      rcases h hxs with ⟨e, heG, hef, hex⟩
      refine ⟨e'.symm.trans e, G.trans (G.symm he'G) heG, ?_, ?_⟩
      · intro y hy
        simp only [mfld_simps] at hy
        simp only [hef ⟨hy.1, hy.2.2⟩, mfld_simps]
      · simp only [hex, he'x, mfld_simps]
    congr_of_forall := by
      intro s x f g hfgs _ h hx
      rcases h hx with ⟨e, heG, hef, hex⟩
      refine ⟨e, heG, ?_, hex⟩
      intro y hy
      rw [← hef hy, hfgs y hy.1]
    left_invariance' := by
      intro s x f e' he'G _ hfx h hx
      rcases h hx with ⟨e, heG, hef, hex⟩
      refine ⟨e.trans e', G.trans heG he'G, ?_, ?_⟩
      · intro y hy
        simp only [mfld_simps] at hy
        simp only [hef ⟨hy.1, hy.2.1⟩, mfld_simps]
      · simpa only [hex, hef ⟨hx, hex⟩, mfld_simps] using hfx }

/-- A slight reformulation of `IsLocalStructomorphWithinAt` when `f` is an open partial homeomorph.
  This gives us an `e` that is defined on a subset of `f.source`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant05981e9d35cb27c57a4aaae8316a4b0680d209fe049523eca918d04d8027062b.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1570fc5c3a05428aacd05d619a9ca4b26944488` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
