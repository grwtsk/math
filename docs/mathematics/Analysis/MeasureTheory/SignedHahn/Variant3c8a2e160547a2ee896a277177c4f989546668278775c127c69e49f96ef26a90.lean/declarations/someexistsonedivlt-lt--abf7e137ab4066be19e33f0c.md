# someExistsOneDivLT_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47790cb7466877473b9571c4bea29bf472d8d10b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51435fee-a8a7-3d8d-ddb2-adc2f3839af5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdb7bb90-2a6a-c806-b578-7195edd55663",
  "kind": "theorem",
  "lexical_name": "someExistsOneDivLT_lt",
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
  "slug": "someexistsonedivlt-lt--abf7e137ab4066be19e33f0c",
  "source": {
    "blob": "47790cb7466877473b9571c4bea29bf472d8d10b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 152,
    "path": "GRWTSK/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abf7e137ab4066be19e33f0c1255c02c147ef3939a6d81d56f3e115eafd75298",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdb7bb90-2a6a-c806-b578-7195edd55663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem someExistsOneDivLT_lt (hi : ¬s ≤[i] 0) :
    (1 / (findExistsOneDivLT s i + 1) : ℝ) < s (someExistsOneDivLT s i) :=
  let ⟨_, _, h⟩ := someExistsOneDivLT_spec hi
  h

/-- Given the set `i`, `restrictNonposSeq s i` is the sequence of sets defined inductively where
`restrictNonposSeq s i 0 = someExistsOneDivLT s (i \ ∅)` and
`restrictNonposSeq s i (n + 1) = someExistsOneDivLT s (i \ ⋃ k ≤ n, restrictNonposSeq k)`.

For each `n : ℕ`,`s (restrictNonposSeq s i n)` is close to maximal among all subsets of
`i \ ⋃ k ≤ n, restrictNonposSeq s i k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47790cb7466877473b9571c4bea29bf472d8d10b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
