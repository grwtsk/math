# iff_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b85886b995e0f15b698dce50e196d71f5d6d507",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47dce384-c503-62d6-aecc-be9b3f95aaec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a82fcdd-9e62-da98-030b-cb3ca0f4f795",
  "kind": "theorem",
  "lexical_name": "iff_of_equiv",
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
  "slug": "iff-of-equiv--cade7e2e2e1348927ccd350b",
  "source": {
    "blob": "1b85886b995e0f15b698dce50e196d71f5d6d507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cade7e2e2e1348927ccd350bcec9c7ed6457ad56ba9800f0c60c69f7a90e4ebc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a82fcdd-9e62-da98-030b-cb3ca0f4f795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_of_equiv (e : A ≃ₐ[R] B) : FormallyEtale R A ↔ FormallyEtale R B :=
  ⟨fun _ ↦ of_equiv e, fun _ ↦ of_equiv e.symm⟩

end OfEquiv

section Comp

variable (R : Type u) [CommRing R]
variable (A : Type u) [CommRing A] [Algebra R A]
variable (B : Type u) [CommRing B] [Algebra R B] [Algebra A B] [IsScalarTower R A B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbf2753419997895fee8423e6e1aa678c8bbe10c2c4ec108b3735dfd079c81e24.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b85886b995e0f15b698dce50e196d71f5d6d507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
