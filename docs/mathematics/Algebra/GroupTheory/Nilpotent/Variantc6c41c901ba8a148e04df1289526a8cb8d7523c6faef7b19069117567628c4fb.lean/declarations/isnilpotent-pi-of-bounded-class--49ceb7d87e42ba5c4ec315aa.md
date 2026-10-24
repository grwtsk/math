# isNilpotent_pi_of_bounded_class

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e14d4b0d7bafda7bcbc82da04ff2817fef0073a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 721,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d91f94bc-8277-c87a-0489-c59dd457ce71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dafc3c0b-6b0d-4d90-2bf2-915d7d1ad35f",
  "kind": "theorem",
  "lexical_name": "isNilpotent_pi_of_bounded_class",
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
  "slug": "isnilpotent-pi-of-bounded-class--49ceb7d87e42ba5c4ec315aa",
  "source": {
    "blob": "8e14d4b0d7bafda7bcbc82da04ff2817fef0073a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 721,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ceb7d87e42ba5c4ec315aa1a2718c927786520d86b99a2440ac49ecb288bfa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dafc3c0b-6b0d-4d90-2bf2-915d7d1ad35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotent_pi_of_bounded_class [∀ i, IsNilpotent (Gs i)] (n : ℕ)
    (h : ∀ i, Group.nilpotencyClass (Gs i) ≤ n) : IsNilpotent (∀ i, Gs i) := by
  rw [nilpotent_iff_lowerCentralSeries]
  refine ⟨n, ?_⟩
  rw [eq_bot_iff]
  apply le_trans (lowerCentralSeries_pi_le _)
  rw [← eq_bot_iff, pi_eq_bot_iff]
  intro i
  apply lowerCentralSeries_eq_bot_iff_nilpotencyClass_le.mpr (h i)

end BoundedPi

section FinitePi

-- Now for finite products
variable {η : Type*} {Gs : η → Type*} [∀ i, Group (Gs i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc6c41c901ba8a148e04df1289526a8cb8d7523c6faef7b19069117567628c4fb.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e14d4b0d7bafda7bcbc82da04ff2817fef0073a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
