# ContinuousOn.if

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fcb9e290ca73882fdb5cde61853318fc2106ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be885c69-4262-6727-a0aa-e4393b5719ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dcd2a54-1e8b-491a-8a70-fc90a57bd281",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.if",
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
  "slug": "continuouson-if--9fd1ba6dcdc4bd5f75f07d83",
  "source": {
    "blob": "6fcb9e290ca73882fdb5cde61853318fc2106ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fd1ba6dcdc4bd5f75f07d83d05c5863fe434511e8a22ea0b4eeaf657623fdb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dcd2a54-1e8b-491a-8a70-fc90a57bd281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.if {p : α → Prop} [∀ a, Decidable (p a)]
    (hp : ∀ a ∈ s ∩ frontier { a | p a }, f a = g a)
    (hf : ContinuousOn f <| s ∩ closure { a | p a })
    (hg : ContinuousOn g <| s ∩ closure { a | ¬p a }) :
    ContinuousOn (fun a => if p a then f a else g a) s := by
  apply ContinuousOn.if'
  · rintro a ha
    simp only [← hp a ha, ite_self]
    apply tendsto_nhdsWithin_mono_left (inter_subset_inter_right s subset_closure)
    exact hf a ⟨ha.1, ha.2.1⟩
  · rintro a ha
    simp only [hp a ha, ite_self]
    apply tendsto_nhdsWithin_mono_left (inter_subset_inter_right s subset_closure)
    rcases ha with ⟨has, ⟨_, ha⟩⟩
    rw [← mem_compl_iff, ← closure_compl] at ha
    apply hg a ⟨has, ha⟩
  · exact hf.mono (inter_subset_inter_right s subset_closure)
  · exact hg.mono (inter_subset_inter_right s subset_closure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fcb9e290ca73882fdb5cde61853318fc2106ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
