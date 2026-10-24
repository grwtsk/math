# exists_subset_image_finite_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bebf670-2e27-214f-2ddf-b715e23f9e98",
  "kind": "theorem",
  "lexical_name": "exists_subset_image_finite_and",
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
  "slug": "exists-subset-image-finite-and--2215b28af18d67adf27970d1",
  "source": {
    "blob": "07342e14185fa66a95181e899b239aae08621bb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 633,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant30cf089f29d96890f4c654097522b6a296b2739d58d0f7a950397bf00d11432e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2215b28af18d67adf27970d14799e8ee4ca6965c46e22ebad605875625dfae25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant30cf089f29d96890f4c654097522b6a296b2739d58d0f7a950397bf00d11432e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bebf670-2e27-214f-2ddf-b715e23f9e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subset_image_finite_and {f : α → β} {s : Set α} {p : Set β → Prop} :
    (∃ t ⊆ f '' s, t.Finite ∧ p t) ↔ ∃ t ⊆ s, t.Finite ∧ p (f '' t) := by
  classical
  simp_rw [@and_comm (_ ⊆ _), and_assoc, exists_finite_iff_finset, @and_comm (p _),
    Finset.subset_set_image_iff]
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant30cf089f29d96890f4c654097522b6a296b2739d58d0f7a950397bf00d11432e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant30cf089f29d96890f4c654097522b6a296b2739d58d0f7a950397bf00d11432e.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07342e14185fa66a95181e899b239aae08621bb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
