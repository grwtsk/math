# volumeForm_robust'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccfbe4006693717d614547d1aec84156deb42fd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a414f22f-32f4-b875-de01-a4a667c48c65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04cbc84d-7487-bf3c-29df-00fc2444b344",
  "kind": "theorem",
  "lexical_name": "volumeForm_robust'",
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
  "slug": "volumeform-robust--a3324d7c966d159d4e76601e",
  "source": {
    "blob": "ccfbe4006693717d614547d1aec84156deb42fd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 254,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3324d7c966d159d4e76601ec59c82b2a9596671f337e3b40335e07508b8f991",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04cbc84d-7487-bf3c-29df-00fc2444b344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volumeForm_robust' (b : OrthonormalBasis (Fin n) ℝ E) (v : Fin n → E) :
    |o.volumeForm v| = |b.toBasis.det v| := by
  cases n
  · refine' o.eq_or_eq_neg_of_isEmpty.elim _ _ <;> rintro rfl <;> simp
  · rw [o.volumeForm_robust (b.adjustToOrientation o) (b.orientation_adjustToOrientation o),
      b.abs_det_adjustToOrientation]
#align orientation.volume_form_robust' Orientation.volumeForm_robust'

/-- Let `v` be an indexed family of `n` vectors in an oriented `n`-dimensional real inner
product space `E`. The output of the volume form of `E` when evaluated on `v` is bounded in absolute
value by the product of the norms of the vectors `v i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccfbe4006693717d614547d1aec84156deb42fd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
