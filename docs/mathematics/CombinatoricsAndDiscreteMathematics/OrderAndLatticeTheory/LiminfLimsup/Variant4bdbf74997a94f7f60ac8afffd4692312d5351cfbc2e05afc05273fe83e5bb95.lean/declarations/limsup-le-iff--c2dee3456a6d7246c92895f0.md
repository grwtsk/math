# limsup_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e61e485b4114ebb9b0b55fabec32a39113e2b23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 840,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:445d1959-aa36-bcc8-da6c-f9f043d667f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e195410-391a-0d61-91b9-67d7c4cbe532",
  "kind": "theorem",
  "lexical_name": "limsup_le_iff",
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
  "slug": "limsup-le-iff--c2dee3456a6d7246c92895f0",
  "source": {
    "blob": "6e61e485b4114ebb9b0b55fabec32a39113e2b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 840,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2dee3456a6d7246c92895f001c94041e07316f000385e93b1f0d6bde6a43c20",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e195410-391a-0d61-91b9-67d7c4cbe532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_le_iff {x : β} (h₁ : f.IsCoboundedUnder (· ≤ ·) u := by isBoundedDefault)
    (h₂ : f.IsBoundedUnder (· ≤ ·) u := by isBoundedDefault) :
    limsup u f ≤ x ↔ ∀ y > x, ∀ᶠ a in f, u a < y := by
  refine ⟨fun h _ h' ↦ eventually_lt_of_limsup_lt (h.trans_lt h') h₂, fun h ↦ ?_⟩
  --Two cases: Either `x` is a cluster point from above, or it is not.
  --In the first case, we use `forall_lt_iff_le'` and split an interval.
  --In the second case, the function `u` must eventually be smaller or equal to `x`.
  by_cases h' : ∀ y > x, ∃ z, x < z ∧ z < y
  · rw [← forall_lt_iff_le']
    intro y x_y
    rcases h' y x_y with ⟨z, x_z, z_y⟩
    exact (limsup_le_of_le h₁ ((h z x_z).mono (fun _ ↦ le_of_lt))).trans_lt z_y
  · apply limsup_le_of_le h₁
    set_option push_neg.use_distrib true in push_neg at h'
    rcases h' with ⟨z, x_z, hz⟩
    exact (h z x_z).mono  <| fun w hw ↦ (or_iff_left (not_le_of_lt hw)).1 (hz (u w))

/- A version of `limsup_le_iff` with large inequalities in densely ordered spaces.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e61e485b4114ebb9b0b55fabec32a39113e2b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
