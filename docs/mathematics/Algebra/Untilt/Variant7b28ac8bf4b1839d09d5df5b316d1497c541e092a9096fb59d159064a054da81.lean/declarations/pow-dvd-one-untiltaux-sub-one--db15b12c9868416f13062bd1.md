# pow_dvd_one_untiltAux_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "838eedf603a7b219fff35956a254c2ff4dddcc6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8f2464f-edc1-4c2d-a433-712b209db26c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:099c8d7d-887a-1793-8af2-0066c5789ddc",
  "kind": "lemma",
  "lexical_name": "pow_dvd_one_untiltAux_sub_one",
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
  "slug": "pow-dvd-one-untiltaux-sub-one--db15b12c9868416f13062bd1",
  "source": {
    "blob": "838eedf603a7b219fff35956a254c2ff4dddcc6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db15b12c9868416f13062bd1218204c45b17cb0ae8d15506df2bd93e1dc41c59",
  "verification": {
    "reference": "docs/verification/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:099c8d7d-887a-1793-8af2-0066c5789ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_dvd_one_untiltAux_sub_one (m : ℕ) :
    (p : O) ^ m ∣ (1 : PreTilt O p).untiltAux m - 1 := by
  cases m with
  | zero => simp [untiltAux]
  | succ m =>
    simp only [untiltAux]
    nth_rw 3 [← one_pow (p ^ m)]
    refine dvd_sub_pow_of_dvd_sub (R := O) ?_ m
    rw [← mem_span_singleton, ← Ideal.Quotient.eq]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `838eedf603a7b219fff35956a254c2ff4dddcc6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
