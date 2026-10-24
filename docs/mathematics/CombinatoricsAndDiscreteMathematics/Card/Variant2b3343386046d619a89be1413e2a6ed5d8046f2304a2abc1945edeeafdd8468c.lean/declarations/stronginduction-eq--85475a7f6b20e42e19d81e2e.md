# strongInduction_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 641,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5b4afa0-723f-a11e-2d08-b17d0241cf23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6abcbf8b-4c65-91fb-da18-222083deb403",
  "kind": "theorem",
  "lexical_name": "strongInduction_eq",
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
  "slug": "stronginduction-eq--85475a7f6b20e42e19d81e2e",
  "source": {
    "blob": "569c6f8297515ce337ad9ae4c9ebb94bd2554386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 641,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85475a7f6b20e42e19d81e2ec7605cac3dcbb5537b830edf4cf4a8806ca06009",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6abcbf8b-4c65-91fb-da18-222083deb403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strongInduction_eq {p : Finset α → Sort*} (H : ∀ s, (∀ (t) (_ : t ⊂ s), p t) → p s)
    (s : Finset α) : strongInduction H s = H s fun t _ => strongInduction H t := by
  rw [strongInduction]
#align finset.strong_induction_eq Finset.strongInduction_eq

/-- Analogue of `strongInduction` with order of arguments swapped. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant2b3343386046d619a89be1413e2a6ed5d8046f2304a2abc1945edeeafdd8468c.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569c6f8297515ce337ad9ae4c9ebb94bd2554386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
