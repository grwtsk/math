# flat_of_zero_first_and_second_variations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82cca41c-f021-b456-f2d5-8e78006258dd",
  "kind": "theorem",
  "lexical_name": "flat_of_zero_first_and_second_variations",
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
  "slug": "flat-of-zero-first-and-second-variations--e787c8d16225212e55c23f9c",
  "source": {
    "blob": "9e93862a6b66b1ba631b91e28e57ce70013a5392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 127,
    "path": "GRWTSK/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e787c8d16225212e55c23f9cb29f01d9d7d6128e04bec9bcc68c17158dd9f988",
  "verification": {
    "reference": "docs/verification/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82cca41c-f021-b456-f2d5-8e78006258dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flat_of_zero_first_and_second_variations (a d ell H : 𝕜)
    (hfirst : FieldDerivAt (increment a d ell H) 0 0)
    (hsecond : FieldDerivAt (slope a d ell H) 0 0) :
    ∀ e, increment a d ell H e = 0 := by
  exact flat_affine_path a d ell H
    ((first_variation a d ell H).unique hfirst)
    ((second_variation a d ell H).unique hsecond)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e93862a6b66b1ba631b91e28e57ce70013a5392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
