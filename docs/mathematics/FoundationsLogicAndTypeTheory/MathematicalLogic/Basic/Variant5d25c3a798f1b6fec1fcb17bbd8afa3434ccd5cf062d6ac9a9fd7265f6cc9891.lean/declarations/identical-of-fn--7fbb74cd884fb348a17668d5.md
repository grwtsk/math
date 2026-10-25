# Identical.of_fn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c04ed6a28216678fba851ea8d5670840a4d6459e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 440,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a6a4475-b870-e449-ba53-337b97a6a3be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:256adc17-539b-4a42-07cf-23ad846e8b91",
  "kind": "lemma",
  "lexical_name": "Identical.of_fn",
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
  "slug": "identical-of-fn--7fbb74cd884fb348a17668d5",
  "source": {
    "blob": "c04ed6a28216678fba851ea8d5670840a4d6459e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fbb74cd884fb348a17668d5f438a92ab1d16d98f9839da19cbe6c8e637f950d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:256adc17-539b-4a42-07cf-23ad846e8b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Identical.of_fn {x y : PGame}
    (l : x.LeftMoves → y.LeftMoves) (il : y.LeftMoves → x.LeftMoves)
    (r : x.RightMoves → y.RightMoves) (ir : y.RightMoves → x.RightMoves)
    (hl : ∀ i, x.moveLeft i ≡ y.moveLeft (l i))
    (hil : ∀ i, x.moveLeft (il i) ≡ y.moveLeft i)
    (hr : ∀ i, x.moveRight i ≡ y.moveRight (r i))
    (hir : ∀ i, x.moveRight (ir i) ≡ y.moveRight i) : x ≡ y :=
  identical_iff.mpr
    ⟨⟨fun i ↦ ⟨l i, hl i⟩, fun i ↦ ⟨il i, hil i⟩⟩, ⟨fun i ↦ ⟨r i, hr i⟩, fun i ↦ ⟨ir i, hir i⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d25c3a798f1b6fec1fcb17bbd8afa3434ccd5cf062d6ac9a9fd7265f6cc9891.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04ed6a28216678fba851ea8d5670840a4d6459e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
