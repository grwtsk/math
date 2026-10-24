# Submodule.eq_top_of_localization₀_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6eb0ea86ea7d41fc5e53b4f6efbdee946c1e80fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/fffca8e37a89ce8b8e93debdc3f31b359f20eac992c7b275ed471fde50dcea37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81be28d4-f8a1-569a-99d0-323e18b6fb08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bb7de6f-8762-9a04-e3f8-bbfb7416c233",
  "kind": "theorem",
  "lexical_name": "Submodule.eq_top_of_localization₀_maximal",
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
  "slug": "submodule-eq-top-of-localization-maximal--69bf1f83933e9111cdd2cfa9",
  "source": {
    "blob": "6eb0ea86ea7d41fc5e53b4f6efbdee946c1e80fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantfffca8e37a89ce8b8e93debdc3f31b359f20eac992c7b275ed471fde50dcea37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69bf1f83933e9111cdd2cfa9b2b815d5dbee8d0ff72d4f09d11b1ce84063ed05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantfffca8e37a89ce8b8e93debdc3f31b359f20eac992c7b275ed471fde50dcea37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb7de6f-8762-9a04-e3f8-bbfb7416c233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.eq_top_of_localization₀_maximal (N : Submodule R M)
    (h : ∀ (P : Ideal R) [P.IsMaximal], N.localized₀ P.primeCompl (f P) = ⊤) :
    N = ⊤ :=
  Submodule.eq_of_localization₀_maximal Mₚ f fun P hP ↦ by simpa using h P

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantfffca8e37a89ce8b8e93debdc3f31b359f20eac992c7b275ed471fde50dcea37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantfffca8e37a89ce8b8e93debdc3f31b359f20eac992c7b275ed471fde50dcea37.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb0ea86ea7d41fc5e53b4f6efbdee946c1e80fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
