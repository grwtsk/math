# finsetCongr_toEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f8756e4-2cbd-21da-23bb-198c5ff58177",
  "kind": "theorem",
  "lexical_name": "finsetCongr_toEmbedding",
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
  "slug": "finsetcongr-toembedding--7afb91907770897f7d96d783",
  "source": {
    "blob": "37a0a6b6ddf1fd932d27fc5956d90d0d33d84572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 709,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7afb91907770897f7d96d783cae8c58a364e5a54bc99f7d8d629b0a644e8818b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f8756e4-2cbd-21da-23bb-198c5ff58177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsetCongr_toEmbedding (e : α ≃ β) :
    e.finsetCongr.toEmbedding = (Finset.mapEmbedding e.toEmbedding).toEmbedding :=
  rfl

/-- Given a predicate `p : α → Prop`, produces an equivalence between
  `Finset {a : α // p a}` and `{s : Finset α // ∀ a ∈ s, p a}`. -/

@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variantb06eb6cbcf5927d76113232a3268f1b605798cb5a21508daf511cec324ac6432.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37a0a6b6ddf1fd932d27fc5956d90d0d33d84572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
