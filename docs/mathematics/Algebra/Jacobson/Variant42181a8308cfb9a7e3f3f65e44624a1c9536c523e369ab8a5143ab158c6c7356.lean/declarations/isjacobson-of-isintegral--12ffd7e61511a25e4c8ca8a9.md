# isJacobson_of_isIntegral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9efe5286cceb347fd2e22fdfdc22b70211a69a4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:627e5f29-9256-9c5c-618f-ae6f03741404",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07391088-9f18-04ec-247b-ad26fe31b3c1",
  "kind": "theorem",
  "lexical_name": "isJacobson_of_isIntegral'",
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
  "slug": "isjacobson-of-isintegral--12ffd7e61511a25e4c8ca8a9",
  "source": {
    "blob": "9efe5286cceb347fd2e22fdfdc22b70211a69a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 151,
    "path": "GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12ffd7e61511a25e4c8ca8a99abd710257aa74507b61a4c2d67ab03cbf2cb866",
  "verification": {
    "reference": "docs/verification/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07391088-9f18-04ec-247b-ad26fe31b3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isJacobson_of_isIntegral' (f : R →+* S) (hf : f.IsIntegral) (hR : IsJacobson R) :
    IsJacobson S := @isJacobson_of_isIntegral _ _ _ _ f.toAlgebra hf hR
#align ideal.is_jacobson_of_is_integral' Ideal.isJacobson_of_isIntegral'

end IsJacobson

section Localization

open IsLocalization Submonoid

variable {R S : Type*} [CommRing R] [CommRing S] {I : Ideal R}

variable (y : R) [Algebra R S] [IsLocalization.Away y S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Jacobson/Variant42181a8308cfb9a7e3f3f65e44624a1c9536c523e369ab8a5143ab158c6c7356.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9efe5286cceb347fd2e22fdfdc22b70211a69a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
