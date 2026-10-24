# mk_le_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d77b1f48397831306cfe743b29eef16889534918",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 527,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e53feecdf4b3249750689ed3ebf9cce5121e390533fa8fc698ca47261d3b9b3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cafe3fb3-09bb-df98-2e77-15355222eedd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:163e3fd0-f910-728f-0505-323d63dd848d",
  "kind": "theorem",
  "lexical_name": "mk_le_of_forall_le",
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
  "slug": "mk-le-of-forall-le--25a6e4de091b07c02f76d29b",
  "source": {
    "blob": "d77b1f48397831306cfe743b29eef16889534918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 527,
    "path": "GRWTSK/Algebra/Basic/Variante53feecdf4b3249750689ed3ebf9cce5121e390533fa8fc698ca47261d3b9b3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25a6e4de091b07c02f76d29b7edf2c5f1b85b412dafeb9249c8713ac2150d627",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante53feecdf4b3249750689ed3ebf9cce5121e390533fa8fc698ca47261d3b9b3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:163e3fd0-f910-728f-0505-323d63dd848d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_le_of_forall_le {f : CauSeq ℚ abs} {x : ℝ} (h : ∃ i, ∀ j ≥ i, (f j : ℝ) ≤ x) :
    mk f ≤ x := by
  obtain ⟨i, H⟩ := h
  rw [← neg_le_neg_iff, ← mk_neg]
  exact le_mk_of_forall_le ⟨i, fun j ij => by simp [H _ ij]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante53feecdf4b3249750689ed3ebf9cce5121e390533fa8fc698ca47261d3b9b3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante53feecdf4b3249750689ed3ebf9cce5121e390533fa8fc698ca47261d3b9b3f.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d77b1f48397831306cfe743b29eef16889534918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
