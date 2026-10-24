# Pairwise.forall_of_forall_of_flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4127590d32d7e175d2235600f401a801d5959bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2e25c62-72bf-d9c4-1314-4335d087852c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:003a37cf-05cf-6838-757a-27f429311f46",
  "kind": "theorem",
  "lexical_name": "Pairwise.forall_of_forall_of_flip",
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
  "slug": "pairwise-forall-of-forall-of-flip--36308d651e5af11082eb80bf",
  "source": {
    "blob": "f4127590d32d7e175d2235600f401a801d5959bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36308d651e5af11082eb80bf4885ef5f4cc9a3631ce62171fe5027b7583299e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:003a37cf-05cf-6838-757a-27f429311f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pairwise.forall_of_forall_of_flip (h₁ : ∀ x ∈ l, R x x) (h₂ : l.Pairwise R)
    (h₃ : l.Pairwise (flip R)) : ∀ ⦃x⦄, x ∈ l → ∀ ⦃y⦄, y ∈ l → R x y := by
  induction' l with a l ih
  · exact forall_mem_nil _
  rw [pairwise_cons] at h₂ h₃
  simp only [mem_cons]
  rintro x (rfl | hx) y (rfl | hy)
  · exact h₁ _ (l.mem_cons_self _)
  · exact h₂.1 _ hy
  · exact h₃.1 _ hx
  · exact ih (fun x hx => h₁ _ <| mem_cons_of_mem _ hx) h₂.2 h₃.2 hx hy
#align list.pairwise.forall_of_forall_of_flip List.Pairwise.forall_of_forall_of_flip

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4127590d32d7e175d2235600f401a801d5959bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
