# Ordered.ins

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:627cb244-f8e8-f269-579e-b10e736f0c65",
  "kind": "theorem",
  "lexical_name": "Ordered.ins",
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
  "slug": "ordered-ins--c2721fd92265be9d94f0d59d",
  "source": {
    "blob": "29d21194930e69cf52f5b0da3817339a11f23816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2721fd92265be9d94f0d59d702fea772caddf103be8f6e1e5f52ef526b584f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627cb244-f8e8-f269-579e-b10e736f0c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Ordered.ins : ∀ {t : RBNode α}, t.Ordered cmp → (ins cmp x t).Ordered cmp
  | nil, _ => ⟨⟨⟩, ⟨⟩, ⟨⟩, ⟨⟩⟩
  | node red a y b, ⟨ay, yb, ha, hb⟩ => by
    unfold ins; split
    · next h => exact ⟨ay.ins ⟨h⟩, yb, ha.ins, hb⟩
    · next h => exact ⟨ay, yb.ins ⟨OrientedCmp.cmp_eq_gt.1 h⟩, ha, hb.ins⟩
    · next h => exact (⟨
        ay.imp fun ⟨h'⟩ => ⟨(TransCmp.cmp_congr_right h).trans h'⟩,
        yb.imp fun ⟨h'⟩ => ⟨(TransCmp.cmp_congr_left h).trans h'⟩, ha, hb⟩)
  | node black a y b, ⟨ay, yb, ha, hb⟩ => by
    unfold ins; split
    · next h => exact ha.ins.balance1 (ay.ins ⟨h⟩) yb hb
    · next h => exact ha.balance2 ay (yb.ins ⟨OrientedCmp.cmp_eq_gt.1 h⟩) hb.ins
    · next h => exact (⟨
        ay.imp fun ⟨h'⟩ => ⟨(TransCmp.cmp_congr_right h).trans h'⟩,
        yb.imp fun ⟨h'⟩ => ⟨(TransCmp.cmp_congr_left h).trans h'⟩, ha, hb⟩)

/-- The `insert` function preserves the ordering invariants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WF/Variant9e2dd025672defaf92f38d3165ce372267ae6e37e4c96d8c433e648abd4e0dc7.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d21194930e69cf52f5b0da3817339a11f23816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
