# isLeftInversion_simple_iff_isLeftDescent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e0c20d3617828ef479631cbcd6c8f666f0a5b54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5c8d85e-6a12-9e66-9e92-cdca34510cbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cc50e99-029e-3ac3-f810-44ed06259ac7",
  "kind": "theorem",
  "lexical_name": "isLeftInversion_simple_iff_isLeftDescent",
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
  "slug": "isleftinversion-simple-iff-isleftdescent--f57d1df31a7efaac1d54739f",
  "source": {
    "blob": "5e0c20d3617828ef479631cbcd6c8f666f0a5b54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f57d1df31a7efaac1d54739fb4aa72c6203abf0e95b366dbee80a1da4b10f96d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cc50e99-029e-3ac3-f810-44ed06259ac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLeftInversion_simple_iff_isLeftDescent (w : W) (i : B) :
    cs.IsLeftInversion w (s i) ↔ cs.IsLeftDescent w i := by
  simp [IsLeftInversion, IsLeftDescent, cs.isReflection_simple i]

/-- The right inversion sequence of `ω`. The right inversion sequence of a word
$s_{i_1} \cdots s_{i_\ell}$ is the sequence
$$s_{i_\ell}\cdots s_{i_1}\cdots s_{i_\ell}, \ldots,
    s_{i_{\ell}}s_{i_{\ell - 1}}s_{i_{\ell - 2}}s_{i_{\ell - 1}}s_{i_\ell}, \ldots,
    s_{i_{\ell}}s_{i_{\ell - 1}}s_{i_\ell}, s_{i_\ell}.$$
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0c20d3617828ef479631cbcd6c8f666f0a5b54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
