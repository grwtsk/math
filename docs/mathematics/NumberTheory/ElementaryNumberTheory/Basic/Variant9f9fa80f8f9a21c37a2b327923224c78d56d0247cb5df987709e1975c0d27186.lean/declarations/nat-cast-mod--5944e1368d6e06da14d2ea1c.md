# nat_cast_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8439286e7193cad4ff3402dbea7cff2af16dda3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 662,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac08be23-0824-eec2-3af2-c82ec9e35872",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:032e3d71-d262-90a5-ab7e-60b0d31b796e",
  "kind": "theorem",
  "lexical_name": "nat_cast_mod",
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
  "slug": "nat-cast-mod--5944e1368d6e06da14d2ea1c",
  "source": {
    "blob": "e8439286e7193cad4ff3402dbea7cff2af16dda3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 662,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5944e1368d6e06da14d2ea1c1f40ce07e4e44d56b9aab76e80888739535d2c1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:032e3d71-d262-90a5-ab7e-60b0d31b796e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_cast_mod (a : ℕ) (n : ℕ) : ((a % n : ℕ) : ZMod n) = a := by
  conv =>
      rhs
      rw [← Nat.mod_add_div a n]
  simp
#align zmod.nat_cast_mod ZMod.nat_cast_mod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8439286e7193cad4ff3402dbea7cff2af16dda3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
