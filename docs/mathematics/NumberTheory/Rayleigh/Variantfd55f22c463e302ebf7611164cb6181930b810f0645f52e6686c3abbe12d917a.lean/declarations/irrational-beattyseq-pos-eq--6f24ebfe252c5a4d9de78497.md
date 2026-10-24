# Irrational.beattySeq'_pos_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a44ef0dec35fcd61938bbb7320e8787e9c4d4434",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb547f5d-b0a8-2aed-4538-b8e062844508",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dc8b1ff-62b1-8c41-c02b-0429379fe522",
  "kind": "theorem",
  "lexical_name": "Irrational.beattySeq'_pos_eq",
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
  "slug": "irrational-beattyseq-pos-eq--6f24ebfe252c5a4d9de78497",
  "source": {
    "blob": "a44ef0dec35fcd61938bbb7320e8787e9c4d4434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f24ebfe252c5a4d9de784972961f6b08b660305d8f1a9330f4822f19a1792d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dc8b1ff-62b1-8c41-c02b-0429379fe522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Irrational.beattySeq'_pos_eq {r : ℝ} (hr : Irrational r) :
    {beattySeq' r k | k > 0} = {beattySeq r k | k > 0} := by
  dsimp only [beattySeq, beattySeq']
  congr! 4; rename_i k; rw [and_congr_right_iff]; intro hk; congr!
  rw [sub_eq_iff_eq_add, Int.ceil_eq_iff, Int.cast_add, Int.cast_one, add_sub_cancel_right]
  refine ⟨(Int.floor_le _).lt_of_ne fun h ↦ ?_, (Int.lt_floor_add_one _).le⟩
  exact (hr.intCast_mul hk.ne').ne_int ⌊k * r⌋ h.symm

/-- **Rayleigh's theorem** on Beatty sequences. Let `r` be an irrational number greater than 1, and
`1/r + 1/s = 1`. Then `B⁺_r` and `B⁺_s` partition the positive integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Rayleigh/Variantfd55f22c463e302ebf7611164cb6181930b810f0645f52e6686c3abbe12d917a.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a44ef0dec35fcd61938bbb7320e8787e9c4d4434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
