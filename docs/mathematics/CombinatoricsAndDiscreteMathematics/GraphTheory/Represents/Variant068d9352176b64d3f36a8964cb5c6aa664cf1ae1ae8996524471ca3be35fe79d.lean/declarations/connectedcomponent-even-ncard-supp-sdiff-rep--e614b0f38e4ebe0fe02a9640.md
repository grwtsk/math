# ConnectedComponent.even_ncard_supp_sdiff_rep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6fb6421-687e-3068-6f45-02e1c0f38f15",
  "kind": "lemma",
  "lexical_name": "ConnectedComponent.even_ncard_supp_sdiff_rep",
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
  "slug": "connectedcomponent-even-ncard-supp-sdiff-rep--e614b0f38e4ebe0fe02a9640",
  "source": {
    "blob": "b1b051d48f9158e858b95e3727be85b31b23c3c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e614b0f38e4ebe0fe02a9640702aae879aaaa43e59bc00df015e0646fdd2d24c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6fb6421-687e-3068-6f45-02e1c0f38f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConnectedComponent.even_ncard_supp_sdiff_rep {s : Set V} (K : G.ConnectedComponent)
    (hrep : ConnectedComponent.Represents s G.oddComponents) :
    Even (K.supp \ s).ncard := by
  by_cases h : Even K.supp.ncard
  · simpa [hrep.ncard_sdiff_of_notMem
      (by simpa [Set.ncard_image_of_injective, ← Nat.not_odd_iff_even] using h)] using h
  · have : K.supp.ncard ≠ 0 := Nat.ne_of_odd_add (Nat.not_even_iff_odd.mp h)
    rw [hrep.ncard_sdiff_of_mem (Nat.not_even_iff_odd.mp h), Nat.even_sub (by omega)]
    simpa [Nat.even_sub] using Nat.not_even_iff_odd.mp h

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant068d9352176b64d3f36a8964cb5c6aa664cf1ae1ae8996524471ca3be35fe79d.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1b051d48f9158e858b95e3727be85b31b23c3c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
