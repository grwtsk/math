# nodup_iff_getElem?_ne_getElem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "147ed8a497c50fa83015d166c92b94f8557240ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:228bbbf2-0ace-5748-6c5b-89ca98eb4267",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ac7c418-7d9b-a343-3152-e018e88cd4f6",
  "kind": "theorem",
  "lexical_name": "nodup_iff_getElem?_ne_getElem?",
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
  "slug": "nodup-iff-getelem-ne-getelem--2d226ef7dbde17f7b184fbf0",
  "source": {
    "blob": "147ed8a497c50fa83015d166c92b94f8557240ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d226ef7dbde17f7b184fbf0e3463449fc13a765aecdcd0932b76aaeb327e335",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ac7c418-7d9b-a343-3152-e018e88cd4f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_iff_getElem?_ne_getElem? {l : List α} :
    l.Nodup ↔ ∀ i j : ℕ, i < j → j < l.length → l[i]? ≠ l[j]? := by
  rw [Nodup, pairwise_iff_getElem]
  constructor
  · intro h i j hij hj
    rw [getElem?_eq_getElem (lt_trans hij hj), getElem?_eq_getElem hj, Ne, Option.some_inj]
    exact h _ _ (by omega) hj hij
  · intro h i j hi hj hij
    rw [Ne, ← Option.some_inj, ← getElem?_eq_getElem, ← getElem?_eq_getElem]
    exact h i j hij hj

set_option linter.deprecated false in
@[deprecated nodup_iff_getElem?_ne_getElem? (since := "2025-02-17")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147ed8a497c50fa83015d166c92b94f8557240ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
