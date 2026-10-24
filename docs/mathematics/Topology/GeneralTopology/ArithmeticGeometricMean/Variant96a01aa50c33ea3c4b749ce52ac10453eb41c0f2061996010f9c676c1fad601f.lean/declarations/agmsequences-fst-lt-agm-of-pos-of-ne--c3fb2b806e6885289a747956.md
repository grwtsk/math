# agmSequences_fst_lt_agm_of_pos_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e93661e4260b22e72e16969289b4ea6a6e0bb65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82b43d6d-756c-a5ff-00f5-616e6e94ad8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d958078-185b-1ecf-9b25-48447beed8ec",
  "kind": "lemma",
  "lexical_name": "agmSequences_fst_lt_agm_of_pos_of_ne",
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
  "slug": "agmsequences-fst-lt-agm-of-pos-of-ne--c3fb2b806e6885289a747956",
  "source": {
    "blob": "9e93661e4260b22e72e16969289b4ea6a6e0bb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3fb2b806e6885289a7479565092956650e3ba5ea0da6b238c73a868c60df832",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d958078-185b-1ecf-9b25-48447beed8ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma agmSequences_fst_lt_agm_of_pos_of_ne (hx : 0 < x) (hy : 0 < y) (hn : x ≠ y) (n : ℕ) :
    (agmSequences x y n).1 < agm x y := by
  rw [agm_eq_agm_agmSequences_fst_agmSequences_snd n]
  set p := (agmSequences x y n).1
  set q := (agmSequences x y n).2
  apply (?_ : p < sqrt (p * q)).trans_le (agmSequences_fst_le_agm 0)
  have ppos : 0 < p :=
    (show 0 < sqrt (x * y) by positivity).trans_le (agmSequences_fst_monotone zero_le)
  have plq : p < q := agmSequences_fst_lt_snd_of_ne hn ..
  nth_rw 1 [← mul_self_sqrt p, sqrt_mul]
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e93661e4260b22e72e16969289b4ea6a6e0bb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
