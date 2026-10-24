# ultrafilter_extend_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "490dc97ef1d481089e0c432496b0b30d41fc9c03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea1ef505-db29-13f9-c8cb-7de195dfc28e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77b487dd-b3a6-5b0b-8d4d-c30696b0c822",
  "kind": "theorem",
  "lexical_name": "ultrafilter_extend_eq_iff",
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
  "slug": "ultrafilter-extend-eq-iff--5e364ccc1e8a5cb03b1abb33",
  "source": {
    "blob": "490dc97ef1d481089e0c432496b0b30d41fc9c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e364ccc1e8a5cb03b1abb337342f6bae57c0bac31ddfb1e93f0cc9a380b390f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b487dd-b3a6-5b0b-8d4d-c30696b0c822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ultrafilter_extend_eq_iff {f : α → γ} {b : Ultrafilter α} {c : γ} :
    Ultrafilter.extend f b = c ↔ ↑(b.map f) ≤ 𝓝 c :=
  ⟨fun h ↦ by
     -- Write b as an ultrafilter limit of pure ultrafilters, and use
     -- the facts that ultrafilter.extend is a continuous extension of f.
     let b' : Ultrafilter (Ultrafilter α) := b.map pure
     have t : ↑b' ≤ 𝓝 b := ultrafilter_converges_iff.mpr (bind_pure _).symm
     rw [← h]
     have := (continuous_ultrafilter_extend f).tendsto b
     refine le_trans ?_ (le_trans (map_mono t) this)
     change _ ≤ map (Ultrafilter.extend f ∘ pure) ↑b
     rw [ultrafilter_extend_extends]
     exact le_rfl,
   fun h ↦
    let _ : TopologicalSpace α := ⊥
    isDenseInducing_pure.extend_eq_of_tendsto
      (le_trans (map_mono (ultrafilter_comap_pure_nhds _)) h)⟩

end Extension

end Ultrafilter

section PreStoneCech

variable (α : Type u) [TopologicalSpace α]

/-- Auxiliary construction towards the Stone-Čech compactification of a topological space.
It should not be used after the Stone-Čech compactification is constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490dc97ef1d481089e0c432496b0b30d41fc9c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
