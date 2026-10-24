# add_left_aux5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3beccfd8-18b1-4e45-836b-2ba386885045",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a279c80-427b-3fbc-f918-4e750b5238d7",
  "kind": "theorem",
  "lexical_name": "add_left_aux5",
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
  "slug": "add-left-aux5--7b99402b5a0a4f0e5fbe0b80",
  "source": {
    "blob": "7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 199,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b99402b5a0a4f0e5fbe0b80f0ea070c661e0a66e6360424bd0d2a5ac8ff1a30",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a279c80-427b-3fbc-f918-4e750b5238d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem add_left_aux5 (x y z : E) :
    ‖(I : 𝕜) • (x + y) + z‖ * ‖(I : 𝕜) • (x + y) + z‖ =
    (‖(I : 𝕜) • (2 • x + y)‖ * ‖(I : 𝕜) • (2 • x + y)‖ +
    ‖(I : 𝕜) • y + 2 • z‖ * ‖(I : 𝕜) • y + 2 • z‖) / 2 -
    ‖(I : 𝕜) • x - z‖ * ‖(I : 𝕜) • x - z‖ := by
  rw [eq_sub_iff_add_eq, eq_div_iff (two_ne_zero' ℝ), mul_comm _ (2 : ℝ), eq_comm]
  have h₀ := parallelogram_identity ((I : 𝕜) • (x + y) + z) ((I : 𝕜) • x - z)
  convert h₀ using 4 <;> · try simp only [two_smul, smul_add]; abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
