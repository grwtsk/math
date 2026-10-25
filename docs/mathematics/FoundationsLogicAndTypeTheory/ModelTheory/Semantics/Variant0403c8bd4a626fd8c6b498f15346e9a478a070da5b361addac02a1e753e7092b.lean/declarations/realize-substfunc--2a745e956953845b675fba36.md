# realize_substFunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9e104f25f606f41e2c4a95b197e00353cb2c297",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d488a895-1d86-c3ff-c30b-551aeb834086",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f8f1734-4410-6cc9-3b92-480fa139996e",
  "kind": "theorem",
  "lexical_name": "realize_substFunc",
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
  "slug": "realize-substfunc--2a745e956953845b675fba36",
  "source": {
    "blob": "a9e104f25f606f41e2c4a95b197e00353cb2c297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a745e956953845b675fba3620c99d5d2bda81f3e2a3b82d5fb673cc491c3e75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f8f1734-4410-6cc9-3b92-480fa139996e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_substFunc [L'.Structure M] {c : {n : ℕ} → L.Functions n → L'.Term (Fin n)}
    (hc : ∀ {n : ℕ} (g) (y : Fin n → M), g.term.realize y = (c g).realize y)
    (v : β → M) (x : L.Term β) :
    (x.substFunc c).realize v = x.realize v := by
  induction x with
  | var => simp
  | func f ts ih => simp [← ih, ← hc]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant0403c8bd4a626fd8c6b498f15346e9a478a070da5b361addac02a1e753e7092b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e104f25f606f41e2c4a95b197e00353cb2c297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
