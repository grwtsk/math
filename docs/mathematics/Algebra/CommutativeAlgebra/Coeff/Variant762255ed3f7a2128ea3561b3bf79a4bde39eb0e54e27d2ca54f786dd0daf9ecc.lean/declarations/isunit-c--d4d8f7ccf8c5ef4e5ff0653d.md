# isUnit_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2811dc15d07a0421e15261ea448ffe22acbad367",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a09acb2f-6c6b-642b-0593-17c371572738",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64157e85-7e94-c5b1-c75e-513f629ed047",
  "kind": "theorem",
  "lexical_name": "isUnit_C",
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
  "slug": "isunit-c--d4d8f7ccf8c5ef4e5ff0653d",
  "source": {
    "blob": "2811dc15d07a0421e15261ea448ffe22acbad367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4d8f7ccf8c5ef4e5ff0653d89103ffd8803b69f9a8b0c635f08a89652b6efff",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64157e85-7e94-c5b1-c75e-513f629ed047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_C {x : R} : IsUnit (C x) ↔ IsUnit x :=
  ⟨fun h => (congr_arg IsUnit coeff_C_zero).mp (h.map <| @constantCoeff R _), fun h => h.map C⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant762255ed3f7a2128ea3561b3bf79a4bde39eb0e54e27d2ca54f786dd0daf9ecc.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2811dc15d07a0421e15261ea448ffe22acbad367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
