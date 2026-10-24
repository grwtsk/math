# top_lie_le_iff_le_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8683dd65dbb0a42eef9a1b8d0e2745e54ce9cae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6408fd3c-9933-2c3d-a167-f001d2257666",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27914fd4-28ab-ff26-8012-718629285b54",
  "kind": "theorem",
  "lexical_name": "top_lie_le_iff_le_normalizer",
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
  "slug": "top-lie-le-iff-le-normalizer--5678f10ad45bee7b716efbd8",
  "source": {
    "blob": "f8683dd65dbb0a42eef9a1b8d0e2745e54ce9cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 86,
    "path": "GRWTSK/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5678f10ad45bee7b716efbd80da9b958ffbdb2f3f25b9df8fcbf109b820947b0",
  "verification": {
    "reference": "docs/verification/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27914fd4-28ab-ff26-8012-718629285b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem top_lie_le_iff_le_normalizer (N' : LieSubmodule R L M) :
    ⁅(⊤ : LieIdeal R L), N⁆ ≤ N' ↔ N ≤ N'.normalizer := by rw [lie_le_iff]; tauto
#align lie_submodule.top_lie_le_iff_le_normalizer LieSubmodule.top_lie_le_iff_le_normalizer

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Normalizer/Variant140fe7f38ea06b66d71ea2305416f9530c92337abebe0759064e0f3864fa3ae2.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8683dd65dbb0a42eef9a1b8d0e2745e54ce9cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
