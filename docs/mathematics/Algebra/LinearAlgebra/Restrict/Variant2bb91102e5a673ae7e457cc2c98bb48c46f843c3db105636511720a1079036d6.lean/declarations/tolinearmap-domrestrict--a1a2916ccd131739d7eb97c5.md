# toLinearMap_domRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edb09e5d873e7b22c6d9c246af96bc032d1891ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:137b5abe-40e9-60fc-a682-5fffd4f3eea4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33d8d5fd-1d05-04dd-accf-784bc5632333",
  "kind": "theorem",
  "lexical_name": "toLinearMap_domRestrict",
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
  "slug": "tolinearmap-domrestrict--a1a2916ccd131739d7eb97c5",
  "source": {
    "blob": "edb09e5d873e7b22c6d9c246af96bc032d1891ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a2916ccd131739d7eb97c5c845103115ebc988af5d11ee0b975e8a0ece0f55",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33d8d5fd-1d05-04dd-accf-784bc5632333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLinearMap_domRestrict (f : M₁ →SL[σ₁₂] M₂) (p : Submodule R₁ M₁) :
    (f.domRestrict p).toLinearMap = f.toLinearMap.domRestrict p :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2bb91102e5a673ae7e457cc2c98bb48c46f843c3db105636511720a1079036d6.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edb09e5d873e7b22c6d9c246af96bc032d1891ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
