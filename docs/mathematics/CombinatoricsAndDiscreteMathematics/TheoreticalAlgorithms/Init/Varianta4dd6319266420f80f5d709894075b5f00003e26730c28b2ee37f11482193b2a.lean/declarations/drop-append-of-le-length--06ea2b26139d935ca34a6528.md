# drop_append_of_le_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d846fe6e24fb90a8534e48e90b9e35f0fb7e8f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 585,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4dd6319266420f80f5d709894075b5f00003e26730c28b2ee37f11482193b2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9772cbf0-69d2-1397-4eca-992ac579c2d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89b8e3ac-a7e4-f4c4-d0e1-c1d19a3ea79e",
  "kind": "lemma",
  "lexical_name": "drop_append_of_le_length",
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
  "slug": "drop-append-of-le-length--06ea2b26139d935ca34a6528",
  "source": {
    "blob": "2d846fe6e24fb90a8534e48e90b9e35f0fb7e8f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 585,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Varianta4dd6319266420f80f5d709894075b5f00003e26730c28b2ee37f11482193b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ea2b26139d935ca34a65284d1518df6a72bed2f1133a205f166476e03c5831",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Varianta4dd6319266420f80f5d709894075b5f00003e26730c28b2ee37f11482193b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89b8e3ac-a7e4-f4c4-d0e1-c1d19a3ea79e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma drop_append_of_le_length (h : n ≤ x.length) :
    (x ++ₛ a).drop n = x.drop n ++ₛ a := by
  obtain ⟨m, hm⟩ := Nat.exists_eq_add_of_le h
  ext k; rcases lt_or_ge k m with _ | hk
  · rw [get_drop, get_append_left, get_append_left, List.getElem_drop]; simpa [hm]
  · obtain ⟨p, rfl⟩ := Nat.exists_eq_add_of_le hk
    have hm' : m = (x.drop n).length := by simp [hm]
    simp_rw [get_drop, ← Nat.add_assoc, ← hm, get_append_right, hm', get_append_right]

-- Take theorem reduces a proof of equality of infinite streams to an
-- induction over all their finite approximations.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Varianta4dd6319266420f80f5d709894075b5f00003e26730c28b2ee37f11482193b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Init/Varianta4dd6319266420f80f5d709894075b5f00003e26730c28b2ee37f11482193b2a.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d846fe6e24fb90a8534e48e90b9e35f0fb7e8f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
