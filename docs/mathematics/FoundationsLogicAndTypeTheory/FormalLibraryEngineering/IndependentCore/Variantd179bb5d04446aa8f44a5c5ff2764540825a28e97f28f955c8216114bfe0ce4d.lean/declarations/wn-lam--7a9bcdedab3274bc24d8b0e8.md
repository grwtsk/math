# wn_lam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ce9868f-dc34-5c34-1ac1-512da076ef3a",
  "kind": "theorem",
  "lexical_name": "wn_lam",
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
  "slug": "wn-lam--7a9bcdedab3274bc24d8b0e8",
  "source": {
    "blob": "ba85b83b99a40044ee429d8a1455adf5d6827d60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2213,
    "line": 2207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a9bcdedab3274bc24d8b0e81008ace7d97179146566c2e5b4f93ef6925cf873",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ce9868f-dc34-5c34-1ac1-512da076ef3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2207–2213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem wn_lam {annotation body : Expr Bool}
    (normalizingAnnotation : WeaklyNormalizing annotation)
    (normalizingBody : WeaklyNormalizing body) : WeaklyNormalizing (.lam annotation body) := by
  obtain ⟨annotation', annotationPath, annotationNormal⟩ := normalizingAnnotation
  obtain ⟨body', bodyPath, bodyNormal⟩ := normalizingBody
  exact ⟨.lam annotation' body', Reduces.lam annotationPath bodyPath, annotationNormal.lam bodyNormal⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean#L2207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba85b83b99a40044ee429d8a1455adf5d6827d60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
