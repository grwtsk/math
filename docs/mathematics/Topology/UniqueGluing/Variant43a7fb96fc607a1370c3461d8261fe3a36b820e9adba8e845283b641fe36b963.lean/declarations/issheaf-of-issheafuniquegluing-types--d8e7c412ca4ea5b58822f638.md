# isSheaf_of_isSheafUniqueGluing_types

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ff2f8331715070b51a755d3318a7252ace5cd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4219c3b-5381-fdeb-79f2-d69dec31405e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c73eb91-ec1c-d061-64c9-58f3634a78b4",
  "kind": "theorem",
  "lexical_name": "isSheaf_of_isSheafUniqueGluing_types",
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
  "slug": "issheaf-of-issheafuniquegluing-types--d8e7c412ca4ea5b58822f638",
  "source": {
    "blob": "97ff2f8331715070b51a755d3318a7252ace5cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 137,
    "path": "GRWTSK/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8e7c412ca4ea5b58822f63842f14f61c792b7ddf9c238c3f88a94cb04104a8e",
  "verification": {
    "reference": "docs/verification/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c73eb91-ec1c-d061-64c9-58f3634a78b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_of_isSheafUniqueGluing_types (Fsh : F.IsSheafUniqueGluing) : F.IsSheaf :=
  (isSheaf_iff_isSheafUniqueGluing_types F).mpr Fsh

end TypeValued

section

variable [HasLimitsOfSize.{x, x} C] [(forget C).ReflectsIsomorphisms]
  [PreservesLimitsOfSize.{x, x} (forget C)]
variable {X : TopCat.{x}} {F : Presheaf C X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniqueGluing/Variant43a7fb96fc607a1370c3461d8261fe3a36b820e9adba8e845283b641fe36b963.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ff2f8331715070b51a755d3318a7252ace5cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
