# Pointed.of_nonempty_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af5e9d4a43af76a837820dca45d6506750f8dcac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:052f7678-c59a-bf09-cde2-87e4a19efc94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4397c66-cd30-9f27-54ad-49051822bf6e",
  "kind": "lemma",
  "lexical_name": "Pointed.of_nonempty_of_isClosed",
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
  "slug": "pointed-of-nonempty-of-isclosed--5c1ccd7b4fde7e808ff34efd",
  "source": {
    "blob": "af5e9d4a43af76a837820dca45d6506750f8dcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c1ccd7b4fde7e808ff34efd1dae636b4714cdab544e5c9dc5bc77897c28eacc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4397c66-cd30-9f27-54ad-49051822bf6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pointed.of_nonempty_of_isClosed (hC : (C : Set E).Nonempty) (hSclos : IsClosed (C : Set E)) :
    C.Pointed := by
  obtain ⟨x, hx⟩ := hC
  let f : 𝕜 → E := (· • x)
  -- The closure of `f (0, ∞)` is a subset of `C`
  have hfS : closure (f '' Set.Ioi 0) ⊆ C :=
    hSclos.closure_subset_iff.2 <| by rintro _ ⟨_, h, rfl⟩; exact C.smul_mem h hx
  -- `f` is continuous at `0` from the right
  have fc : ContinuousWithinAt f (Set.Ioi (0 : 𝕜)) 0 := by fun_prop
  -- `0 ∈ closure f (0, ∞) ⊆ C, 0 ∈ C`
  simpa [f, Pointed, ← SetLike.mem_coe] using hfS <| fc.mem_closure_image <| by simp

variable [IsOrderedRing 𝕜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e9d4a43af76a837820dca45d6506750f8dcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
