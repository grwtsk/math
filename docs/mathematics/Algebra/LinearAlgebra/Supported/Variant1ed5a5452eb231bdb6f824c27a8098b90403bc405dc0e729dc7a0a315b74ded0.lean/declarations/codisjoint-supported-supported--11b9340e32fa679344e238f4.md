# codisjoint_supported_supported

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ea63858f8c97a1316b409a93cde40d5b9da8959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:316a00e3-7fa0-95a1-6831-f080cc1efa44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea6c6f9d-9b41-aaaa-c5c6-d524b4b91121",
  "kind": "lemma",
  "lexical_name": "codisjoint_supported_supported",
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
  "slug": "codisjoint-supported-supported--11b9340e32fa679344e238f4",
  "source": {
    "blob": "0ea63858f8c97a1316b409a93cde40d5b9da8959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 179,
    "path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b9340e32fa679344e238f4412ff2d927614812cc057d6a8f11374e914a6272",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea6c6f9d-9b41-aaaa-c5c6-d524b4b91121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma codisjoint_supported_supported {s t : Set α} (h : Codisjoint s t) :
    Codisjoint (supported M R s) (supported M R t) := by
  rw [codisjoint_iff, eq_top_iff, ← supported_union,
    show s ∪ t = .univ from codisjoint_iff.mp h, supported_univ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Supported/Variant1ed5a5452eb231bdb6f824c27a8098b90403bc405dc0e729dc7a0a315b74ded0.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ea63858f8c97a1316b409a93cde40d5b9da8959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
