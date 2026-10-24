# span_smul_of_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16188b3a49e9bb8a6ba9752831c23b2ed7094140",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:349d0e8f-cf2f-bb54-8d0b-8f83404e213c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61c1ac6a-65d2-9fc5-db74-8949a04a71d8",
  "kind": "theorem",
  "lexical_name": "span_smul_of_span_eq_top",
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
  "slug": "span-smul-of-span-eq-top--ea7d13ff3bdc21374304dcf3",
  "source": {
    "blob": "16188b3a49e9bb8a6ba9752831c23b2ed7094140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 273,
    "path": "GRWTSK/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7d13ff3bdc21374304dcf3c42af85e991cd7d8c85085ea7de5b756ac56f028",
  "verification": {
    "reference": "docs/verification/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61c1ac6a-65d2-9fc5-db74-8949a04a71d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_smul_of_span_eq_top {s : Set S} (hs : span R s = ⊤) (t : Set A) :
    span R (s • t) = (span S t).restrictScalars R :=
  le_antisymm
    (span_le.2 fun _x ⟨p, _hps, _q, hqt, hpqx⟩ ↦ hpqx ▸ (span S t).smul_mem p (subset_span hqt))
    fun _ hp ↦ closure_induction (hx := hp) (zero_mem _) (fun _ _ _ _ ↦ add_mem) fun s0 y hy ↦ by
      refine span_induction (fun x hx ↦ subset_span <| by exact ⟨x, hx, y, hy, rfl⟩) ?_ ?_ ?_
        (hs ▸ mem_top : s0 ∈ span R s)
      · rw [zero_smul]; apply zero_mem
      · intro _ _ _ _; rw [add_smul]; apply add_mem
      · intro r s0 _ hy; rw [IsScalarTower.smul_assoc]; exact smul_mem _ r hy

-- The following two lemmas were originally used to prove `span_smul_of_span_eq_top`
-- but are now not needed.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Tower/Variant8dfbac0f3ad8c692afacde19851351428e88bc32eb2fec5ef689b84fa7b79b49.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16188b3a49e9bb8a6ba9752831c23b2ed7094140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
