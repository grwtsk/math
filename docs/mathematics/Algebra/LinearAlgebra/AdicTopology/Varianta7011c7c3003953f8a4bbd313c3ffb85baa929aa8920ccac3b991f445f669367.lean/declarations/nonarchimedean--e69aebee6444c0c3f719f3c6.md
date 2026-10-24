# nonarchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d889c7809a5da3a878d3174dee01835ff8b60d72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6791c20b-4354-a785-eef9-8847abfee67e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d846972-6e8d-0fdf-2011-a83e1dc2d4e8",
  "kind": "theorem",
  "lexical_name": "nonarchimedean",
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
  "slug": "nonarchimedean--e69aebee6444c0c3f719f3c6",
  "source": {
    "blob": "d889c7809a5da3a878d3174dee01835ff8b60d72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e69aebee6444c0c3f719f3c6645f77521e1a1c4af7f983a27987f82b44e84de0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d846972-6e8d-0fdf-2011-a83e1dc2d4e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonarchimedean (I : Ideal R) : @NonarchimedeanRing R _ I.adicTopology :=
  I.adic_basis.toRing_subgroups_basis.nonarchimedean

/-- For the `I`-adic topology, the neighborhoods of zero has basis given by the powers of `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta7011c7c3003953f8a4bbd313c3ffb85baa929aa8920ccac3b991f445f669367.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d889c7809a5da3a878d3174dee01835ff8b60d72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
