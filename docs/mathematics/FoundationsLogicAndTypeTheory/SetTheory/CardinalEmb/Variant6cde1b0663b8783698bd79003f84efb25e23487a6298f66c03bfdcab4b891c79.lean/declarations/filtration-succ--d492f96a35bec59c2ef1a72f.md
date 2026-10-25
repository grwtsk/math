# filtration_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0056e332-4626-e932-3054-c90c188a633c",
  "kind": "theorem",
  "lexical_name": "filtration_succ",
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
  "slug": "filtration-succ--d492f96a35bec59c2ef1a72f",
  "source": {
    "blob": "1dbab19a9316004f4441c12387bca76f7ae0de9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d492f96a35bec59c2ef1a72f25ee3eb48dac51ca1e8ea251db15b6fc53bd0761",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0056e332-4626-e932-3054-c90c188a633c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filtration_succ (i : ι) : E⟮<i⁺⟯ = E⟮<i⟯⟮b (φ i)⟯.restrictScalars F := by
  rw [Iio_succ, ← Iio_insert, image_insert_eq, ← union_singleton, adjoin_adjoin_left]; rfl

local notation "X" i => Field.Emb (E⟮<i⟯) <| E⟮<i⟯⟮b (φ i)⟯

/-- Each embedding of `E⟮<i⟯` into `Ē` extend to `#(X i)` embeddings of `E⟮<i⁺⟯`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant6cde1b0663b8783698bd79003f84efb25e23487a6298f66c03bfdcab4b891c79.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbab19a9316004f4441c12387bca76f7ae0de9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
