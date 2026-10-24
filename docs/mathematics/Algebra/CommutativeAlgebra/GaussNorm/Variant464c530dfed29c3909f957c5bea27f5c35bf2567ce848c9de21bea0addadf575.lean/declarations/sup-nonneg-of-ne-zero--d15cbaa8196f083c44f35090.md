# sup'_nonneg_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8b65df38067a1bb8aa2057523220359ec65191c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8586d90-d3c3-be12-10fa-873a41dae25d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e459aa47-f9fd-fbce-80e2-a273c0db22a9",
  "kind": "lemma",
  "lexical_name": "sup'_nonneg_of_ne_zero",
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
  "slug": "sup-nonneg-of-ne-zero--d15cbaa8196f083c44f35090",
  "source": {
    "blob": "b8b65df38067a1bb8aa2057523220359ec65191c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d15cbaa8196f083c44f35090974e36155631354263e10c4de3132cd2812da18e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e459aa47-f9fd-fbce-80e2-a273c0db22a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sup'_nonneg_of_ne_zero [NonnegHomClass F R ℝ] {p : R[X]} (h : p.support.Nonempty)
    (hc : 0 ≤ c) : 0 ≤ p.support.sup' h fun i ↦ (v (p.coeff i) * c ^ i) := by
  simp only [Finset.le_sup'_iff, mem_support_iff]
  use p.natDegree
  simp_all only [support_nonempty, ne_eq, coeff_natDegree, leadingCoeff_eq_zero, not_false_eq_true,
    true_and]
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b65df38067a1bb8aa2057523220359ec65191c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
