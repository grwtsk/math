# frame_target_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b60d933-3d10-3d2f-28a4-e7c6f6150072",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:847e5acd-dc12-04be-cf6e-84d7378bb177",
  "kind": "theorem",
  "lexical_name": "frame_target_drop",
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
  "slug": "frame-target-drop--2c5bddd9cbfd2613dfc0228c",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4181,
    "line": 4153,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c5bddd9cbfd2613dfc0228cd309aaea1c458dc06ab7b30a90c9a2f493418c74",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:847e5acd-dc12-04be-cf6e-84d7378bb177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4153–4181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_target_drop {C D : Set (Set S)}
    (hno : ¬ ForbiddenConfiguration P C)
    (hD : IsComponent (SecondaryEdge P C) D) (hplain : ∀ I ∈ D, PlainLayer P C I)
    (hneg : ∃ I ∈ D, ∃ K ∈ D, SecondaryEdge P C I K true)
    {A B q : Expr S} {s : S} (hT : Ω.HasType (.pi A B) (.sort s))
    (hN : Normal (.pi A B)) (hq : Ω.HasType q A)
    (hK : Ω.profile (.pi A B) ∈ D) (hL : Ω.profile (B.instantiate q) ∈ D) :
    Ω.potential C D (B.instantiate q).normalForm < Ω.potential C D (.pi A B) := by
  obtain ⟨n, hT, hq⟩ := hT.common hq
  change PureTypeSystem.HasType P (Ω.context n)
    (.pi (A.rename (Expr.reverseIndex n)) (B.rename (Expr.liftRen (Expr.reverseIndex n)))) (.sort s) at hT
  obtain ⟨a, b, c, hA, hB, _, _⟩ := hT.generation_pi
  have hQ := hB.instantiate hq
  rw [Expr.instantiate_rename] at hQ
  have wQ : WeaklyNormalizing (B.instantiate q) :=
    (show Ω.HasType (B.instantiate q) (.sort b) from ⟨n, hQ⟩).weaklyNormalizing hw
  have hQN := hQ.normalForm hw
  rw [Expr.normalForm_rename wQ] at hQN
  rw [Ω.potential_at hw C D hQN, Ω.potential_at hw C D (T := .pi A B) hT,
    ← Expr.normalForm_rename wQ, ← Expr.instantiate_rename]
  rw [Ω.profile_at hw (T := .pi A B) hT] at hK
  rw [Ω.profile_at hw hQ, ← Expr.instantiate_rename] at hL
  have hh := PlainObservations.frame_potential_drop hw hno hD hplain hneg hT
    (hN.rename _) hq hK hL
  exact lt_of_le_of_lt hh.1 hh.2

/-- Every active same-component domain is counted, even when a frame exits
its component. This is why the potential's guard is activity, not membership
of the open codomain in the component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L4153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
