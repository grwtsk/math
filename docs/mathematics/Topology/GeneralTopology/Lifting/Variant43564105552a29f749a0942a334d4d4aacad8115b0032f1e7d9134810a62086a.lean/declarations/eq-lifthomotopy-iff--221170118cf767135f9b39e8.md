# eq_liftHomotopy_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69caae4abbcaab0a74b29815e6fe28549d12295d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f362f4cf-43de-5f38-2c05-2e2ab461a202",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86a44ddb-2709-0ea3-e922-3832c21183ae",
  "kind": "lemma",
  "lexical_name": "eq_liftHomotopy_iff",
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
  "slug": "eq-lifthomotopy-iff--221170118cf767135f9b39e8",
  "source": {
    "blob": "69caae4abbcaab0a74b29815e6fe28549d12295d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 286,
    "path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:221170118cf767135f9b39e80a57eaa79d1630dce1dc208887d5ff8599424512",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86a44ddb-2709-0ea3-e922-3832c21183ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_liftHomotopy_iff (H' : I × A → E) : H' = cov.liftHomotopy H f H_0 ↔
    (∀ a, Continuous (H' ⟨·, a⟩)) ∧ p ∘ H' = H ∧ ∀ a, H' (0, a) = f a := by
  refine ⟨?_, fun ⟨H'_cont, H'_lifts, H'_0⟩ ↦ funext fun ⟨t, a⟩ ↦ ?_⟩
  · rintro rfl; refine ⟨fun a ↦ ?_, cov.liftHomotopy_lifts H f H_0, cov.liftHomotopy_zero H f H_0⟩
    simp_rw [liftHomotopy_apply]; exact (cov.liftPath _ _ <| H_0 a).2
  · apply congr_fun ((cov.eq_liftPath_iff _).mpr ⟨H'_cont a, _, H'_0 a⟩) t
    ext ⟨t, a⟩; exact congr_fun H'_lifts _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69caae4abbcaab0a74b29815e6fe28549d12295d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
