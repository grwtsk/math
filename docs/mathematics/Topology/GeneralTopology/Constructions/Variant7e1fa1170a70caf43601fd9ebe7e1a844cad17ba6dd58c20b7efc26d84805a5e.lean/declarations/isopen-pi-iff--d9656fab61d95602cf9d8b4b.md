# isOpen_pi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e10a11ac4225f22da72d9714d5de296ab914fed0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 859,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bc5d355-aa75-2a18-90a8-34814c322e45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84efdfd4-dd4b-d776-5962-02438f2d5252",
  "kind": "theorem",
  "lexical_name": "isOpen_pi_iff",
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
  "slug": "isopen-pi-iff--d9656fab61d95602cf9d8b4b",
  "source": {
    "blob": "e10a11ac4225f22da72d9714d5de296ab914fed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 859,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9656fab61d95602cf9d8b4b2d4834fb3fbab327b68dbd9712b4e2a2956215ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84efdfd4-dd4b-d776-5962-02438f2d5252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_pi_iff {s : Set (∀ a, π a)} :
    IsOpen s ↔
      ∀ f, f ∈ s → ∃ (I : Finset ι) (u : ∀ a, Set (π a)),
        (∀ a, a ∈ I → IsOpen (u a) ∧ f a ∈ u a) ∧ (I : Set ι).pi u ⊆ s := by
  rw [isOpen_iff_nhds]
  simp_rw [le_principal_iff, nhds_pi, Filter.mem_pi', mem_nhds_iff]
  refine forall₂_congr fun a _ => ⟨?_, ?_⟩
  · rintro ⟨I, t, ⟨h1, h2⟩⟩
    refine ⟨I, fun a => eval a '' (I : Set ι).pi fun a => (h1 a).choose, fun i hi => ?_, ?_⟩
    · simp_rw [eval_image_pi (Finset.mem_coe.mpr hi)
          (pi_nonempty_iff.mpr fun i => ⟨_, fun _ => (h1 i).choose_spec.2.2⟩)]
      exact (h1 i).choose_spec.2
    · exact Subset.trans
        (pi_mono fun i hi => (eval_image_pi_subset hi).trans (h1 i).choose_spec.1) h2
  · rintro ⟨I, t, ⟨h1, h2⟩⟩
    classical
    refine ⟨I, fun a => ite (a ∈ I) (t a) univ, fun i => ?_, ?_⟩
    · by_cases hi : i ∈ I
      · use t i
        simp_rw [if_pos hi]
        exact ⟨Subset.rfl, (h1 i) hi⟩
      · use univ
        simp_rw [if_neg hi]
        exact ⟨Subset.rfl, isOpen_univ, mem_univ _⟩
    · rw [← univ_pi_ite]
      simp only [← ite_and, ← Finset.mem_coe, and_self_iff, univ_pi_ite, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant7e1fa1170a70caf43601fd9ebe7e1a844cad17ba6dd58c20b7efc26d84805a5e.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e10a11ac4225f22da72d9714d5de296ab914fed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
