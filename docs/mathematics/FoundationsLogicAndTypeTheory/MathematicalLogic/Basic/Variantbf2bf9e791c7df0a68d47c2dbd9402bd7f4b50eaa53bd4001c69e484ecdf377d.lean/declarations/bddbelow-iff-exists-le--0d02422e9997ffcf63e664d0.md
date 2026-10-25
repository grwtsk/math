# bddBelow_iff_exists_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c24f3bff73e4acdba8edbe356cd509bed4c03ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5912005d-f313-1bad-a537-4189a7d33ff5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75e9b821-458d-db35-5cda-b5952c28f43e",
  "kind": "theorem",
  "lexical_name": "bddBelow_iff_exists_le",
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
  "slug": "bddbelow-iff-exists-le--0d02422e9997ffcf63e664d0",
  "source": {
    "blob": "c24f3bff73e4acdba8edbe356cd509bed4c03ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d02422e9997ffcf63e664d0e61bf6d73f2e8c1efb80e48fa5ed8acae05b4ed4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75e9b821-458d-db35-5cda-b5952c28f43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bddBelow_iff_exists_le [SemilatticeInf γ] {s : Set γ} (x₀ : γ) :
    BddBelow s ↔ ∃ x, x ≤ x₀ ∧ ∀ y ∈ s, x ≤ y :=
  bddAbove_iff_exists_ge (toDual x₀)
#align bdd_below_iff_exists_le bddBelow_iff_exists_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbf2bf9e791c7df0a68d47c2dbd9402bd7f4b50eaa53bd4001c69e484ecdf377d.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24f3bff73e4acdba8edbe356cd509bed4c03ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
