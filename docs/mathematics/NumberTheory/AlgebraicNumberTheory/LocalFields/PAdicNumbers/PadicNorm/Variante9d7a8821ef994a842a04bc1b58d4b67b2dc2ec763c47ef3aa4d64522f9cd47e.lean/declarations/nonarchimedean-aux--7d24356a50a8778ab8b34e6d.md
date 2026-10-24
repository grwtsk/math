# nonarchimedean_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "262c19a892cf480eae035521bc8e60b8de797acb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96ebb7d5-cd53-eb07-0cd7-a40d490211dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1811c9d-234f-c572-b759-a909f0615983",
  "kind": "theorem",
  "lexical_name": "nonarchimedean_aux",
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
  "slug": "nonarchimedean-aux--7d24356a50a8778ab8b34e6d",
  "source": {
    "blob": "262c19a892cf480eae035521bc8e60b8de797acb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d24356a50a8778ab8b34e6db50cf90d52d99b1f7b96c2bd0e141a45a41ddc04",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1811c9d-234f-c572-b759-a909f0615983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem nonarchimedean_aux {q r : ℚ} (h : padicValRat p q ≤ padicValRat p r) :
    padicNorm p (q + r) ≤ max (padicNorm p q) (padicNorm p r) :=
  have hnqp : padicNorm p q ≥ 0 := padicNorm.nonneg _
  have hnrp : padicNorm p r ≥ 0 := padicNorm.nonneg _
  if hq : q = 0 then by simp [hq, max_eq_right hnrp, le_max_right]
  else
    if hr : r = 0 then by simp [hr, max_eq_left hnqp, le_max_left]
    else
      if hqr : q + r = 0 then le_trans (by simpa [hqr] using hnqp) (le_max_left _ _)
      else by
        unfold padicNorm; split_ifs
        apply le_max_iff.2
        left
        apply zpow_le_of_le
        · exact_mod_cast le_of_lt hp.1.one_lt
        · apply neg_le_neg
          have : padicValRat p q = min (padicValRat p q) (padicValRat p r) := (min_eq_left h).symm
          rw [this]
          exact min_le_padicValRat_add hqr

/-- The `p`-adic norm is nonarchimedean: the norm of `p + q` is at most the max of the norm of `p`
and the norm of `q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variante9d7a8821ef994a842a04bc1b58d4b67b2dc2ec763c47ef3aa4d64522f9cd47e.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `262c19a892cf480eae035521bc8e60b8de797acb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
