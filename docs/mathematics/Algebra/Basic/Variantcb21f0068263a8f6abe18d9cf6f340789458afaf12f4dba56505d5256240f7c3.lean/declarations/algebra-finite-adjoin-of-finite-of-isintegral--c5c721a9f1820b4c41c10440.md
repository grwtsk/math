# Algebra.finite_adjoin_of_finite_of_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daac16ef2af8ebf62f9d8711c93743c2f72b89db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6f4dc71-3741-7c03-26d0-8fb8b6626c26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3faded28-1bd3-0720-7a1d-df9e0d0b24a9",
  "kind": "theorem",
  "lexical_name": "Algebra.finite_adjoin_of_finite_of_isIntegral",
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
  "slug": "algebra-finite-adjoin-of-finite-of-isintegral--c5c721a9f1820b4c41c10440",
  "source": {
    "blob": "daac16ef2af8ebf62f9d8711c93743c2f72b89db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 202,
    "path": "GRWTSK/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c721a9f1820b4c41c10440cfb415baa67beb3553c1a01369633a2bbe5f1b61",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3faded28-1bd3-0720-7a1d-df9e0d0b24a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.finite_adjoin_of_finite_of_isIntegral {s : Set A} (hf : s.Finite)
    (hi : ∀ x ∈ s, IsIntegral R x) : Module.Finite R (adjoin R s) :=
  Module.Finite.iff_fg.mpr <| fg_adjoin_of_finite hf hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daac16ef2af8ebf62f9d8711c93743c2f72b89db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
