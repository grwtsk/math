# LeftExtension.IsAbsKan.hasAbsLeftKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55308b04fc6dbd79e9440db5b51372f0d055a206",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:643fc21c-a943-08b3-5e43-ee900a62b879",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8989b61-b50d-faac-111f-b30290501aec",
  "kind": "theorem",
  "lexical_name": "LeftExtension.IsAbsKan.hasAbsLeftKanExtension",
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
  "slug": "leftextension-isabskan-hasabsleftkanextension--aadab2e7d1ce2050c299a62a",
  "source": {
    "blob": "55308b04fc6dbd79e9440db5b51372f0d055a206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aadab2e7d1ce2050c299a62a92e3b6f749f11aee60e03efee70a772b667944b1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8989b61-b50d-faac-111f-b30290501aec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LeftExtension.IsAbsKan.hasAbsLeftKanExtension {t : LeftExtension f g} (H : IsAbsKan t) :
    HasAbsLeftKanExtension f g :=
  have : HasLeftKanExtension f g := H.isKan.hasLeftKanExtension
  ⟨fun h ↦ ⟨⟨H.ofIsoAbsKan (IsKan.uniqueUpToIso H.isKan (lanIsKan f g)) h⟩⟩⟩

end LeftKan

section LeftLift

open LeftLift

variable {f : b ⟶ a} {g : c ⟶ a}

/-- The existence of a left kan lift of `g` along `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55308b04fc6dbd79e9440db5b51372f0d055a206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
