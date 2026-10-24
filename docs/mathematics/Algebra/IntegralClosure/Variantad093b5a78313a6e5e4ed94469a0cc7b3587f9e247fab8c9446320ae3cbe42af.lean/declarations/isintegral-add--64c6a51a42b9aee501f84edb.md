# isIntegral_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b666459e-bc94-1629-0f60-64b9657c0efd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:898141b7-d51a-7bd4-7040-cb41f88c2df3",
  "kind": "theorem",
  "lexical_name": "isIntegral_add",
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
  "slug": "isintegral-add--64c6a51a42b9aee501f84edb",
  "source": {
    "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 516,
    "path": "GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64c6a51a42b9aee501f84edbe01bea23c0881a80ed45e62578a1ca08098c91ca",
  "verification": {
    "reference": "docs/verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:898141b7-d51a-7bd4-7040-cb41f88c2df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_add {x y : A} (hx : IsIntegral R x) (hy : IsIntegral R y) :
    IsIntegral R (x + y) :=
  (algebraMap R A).is_integral_add hx hy
#align is_integral_add isIntegral_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29df876472ed81a1a197bc618f845bfeffda252c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
