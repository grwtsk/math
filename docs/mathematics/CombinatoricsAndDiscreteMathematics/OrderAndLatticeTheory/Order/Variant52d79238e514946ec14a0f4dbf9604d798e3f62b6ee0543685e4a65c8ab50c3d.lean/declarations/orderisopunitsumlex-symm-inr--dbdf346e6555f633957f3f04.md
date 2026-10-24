# orderIsoPUnitSumLex_symm_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b74d4da4dc41f40731572271632a8e05634174e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 762,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fab5b43c-bae7-6d54-63c0-78164492cc10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1df39ec5-8a84-3e5d-b31c-991dcbf759b7",
  "kind": "theorem",
  "lexical_name": "orderIsoPUnitSumLex_symm_inr",
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
  "slug": "orderisopunitsumlex-symm-inr--dbdf346e6555f633957f3f04",
  "source": {
    "blob": "7b74d4da4dc41f40731572271632a8e05634174e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 762,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbdf346e6555f633957f3f047b56afa79c51f8243a468e78c3023fe5e1e535fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df39ec5-8a84-3e5d-b31c-991dcbf759b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderIsoPUnitSumLex_symm_inr (a : α) : orderIsoPUnitSumLex.symm (toLex <| inr a) = a :=
  rfl
#align with_bot.order_iso_punit_sum_lex_symm_inr WithBot.orderIsoPUnitSumLex_symm_inr

end WithBot

namespace WithTop

/-- `WithTop α` is order-isomorphic to `α ⊕ₗ PUnit`, by sending `⊤` to `Unit` and `↑a` to
`a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant52d79238e514946ec14a0f4dbf9604d798e3f62b6ee0543685e4a65c8ab50c3d.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b74d4da4dc41f40731572271632a8e05634174e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
