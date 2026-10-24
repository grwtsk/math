# digest_not_injective_of_card_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:989d08fb-278a-0f3a-3eb5-23f16448fe52",
  "kind": "theorem",
  "lexical_name": "digest_not_injective_of_card_gt",
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
  "slug": "digest-not-injective-of-card-gt--8c6b5c0cdf559ef4f0d104a4",
  "source": {
    "blob": "3cacbeaa4e51076752ccf09343537249a1c4c8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c6b5c0cdf559ef4f0d104a4b7641a3f49b302c3b103c73451bdda1f703c96ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:989d08fb-278a-0f3a-3eb5-23f16448fe52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digest_not_injective_of_card_gt
    {Snapshot : Type u}
    {r : Nat}
    [Fintype Snapshot]
    (digest : Snapshot → BinMat 1 r)
    (hcard : 2 ^ r < Fintype.card Snapshot) :
    ¬ Function.Injective digest := by
  intro hinjective
  have hle : Fintype.card Snapshot ≤ Fintype.card (BinMat 1 r) :=
    Fintype.card_le_of_injective digest hinjective
  rw [BinMat.Quantizer.card_binMat] at hle
  have hle' : Fintype.card Snapshot ≤ 2 ^ r := by
    simpa using hle
  exact Nat.not_le_of_lt hcard hle'

/-- Cardinal compression yields two distinct snapshots with the same digest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Commitment/Variant5ca7bdb9a6d03830e26b8c0fab4c932675b3a12df5187b5b6f33ddf1facbf6fb.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cacbeaa4e51076752ccf09343537249a1c4c8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
