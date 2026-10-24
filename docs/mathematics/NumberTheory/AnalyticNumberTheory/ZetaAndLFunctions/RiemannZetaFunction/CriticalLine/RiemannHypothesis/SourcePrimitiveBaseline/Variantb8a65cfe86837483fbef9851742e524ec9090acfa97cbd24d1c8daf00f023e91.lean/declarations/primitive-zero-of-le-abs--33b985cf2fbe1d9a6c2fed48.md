# primitive_zero_of_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4bdf03bd364d1062b5c35ba21e53b96d4c7811e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8a65cfe86837483fbef9851742e524ec9090acfa97cbd24d1c8daf00f023e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:772027e3-f3d9-8ab6-7b2d-92a8cf89d63f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f99a6c19-bd56-471c-42d2-a7d910906f36",
  "kind": "theorem",
  "lexical_name": "primitive_zero_of_le_abs",
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
  "slug": "primitive-zero-of-le-abs--33b985cf2fbe1d9a6c2fed48",
  "source": {
    "blob": "d4bdf03bd364d1062b5c35ba21e53b96d4c7811e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantb8a65cfe86837483fbef9851742e524ec9090acfa97cbd24d1c8daf00f023e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33b985cf2fbe1d9a6c2fed480dbd142ca34301043723b4cfca2e1505af4e2af3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantb8a65cfe86837483fbef9851742e524ec9090acfa97cbd24d1c8daf00f023e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f99a6c19-bd56-471c-42d2-a7d910906f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primitive_zero_of_le_abs {A x : ℝ} (hA : 0 < A)
    (hx : A ≤ |x|) : normalizedPrimitiveBump A x = 0 := by
  by_cases hm : x ∈ Icc (-A) A
  · by_cases hs : 0 ≤ x
    · have he : x = A := by rw [abs_of_nonneg hs] at hx; linarith [hm.2]
      rw [he]
      exact (normalizedPrimitiveBump_endpoints hA).2
    · have he : x = -A := by rw [abs_of_neg (lt_of_not_ge hs)] at hx; linarith [hm.1]
      rw [he]
      exact (normalizedPrimitiveBump_endpoints hA).1
  · exact normalizedPrimitiveBump_zero_of_not_mem hA hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantb8a65cfe86837483fbef9851742e524ec9090acfa97cbd24d1c8daf00f023e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitiveBaseline/Variantb8a65cfe86837483fbef9851742e524ec9090acfa97cbd24d1c8daf00f023e91.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4bdf03bd364d1062b5c35ba21e53b96d4c7811e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
