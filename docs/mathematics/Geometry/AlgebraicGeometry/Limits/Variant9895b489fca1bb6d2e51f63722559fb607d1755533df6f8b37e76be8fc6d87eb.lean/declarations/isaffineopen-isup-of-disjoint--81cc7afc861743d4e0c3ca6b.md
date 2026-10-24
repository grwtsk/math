# IsAffineOpen.iSup_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bb3f4d2-aba8-01c8-1428-bf064631aafb",
  "kind": "lemma",
  "lexical_name": "IsAffineOpen.iSup_of_disjoint",
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
  "slug": "isaffineopen-isup-of-disjoint--81cc7afc861743d4e0c3ca6b",
  "source": {
    "blob": "b005adb113bc71f9946915f4ae7137fe6dff3b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 669,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cc7afc861743d4e0c3ca6b2a25c0dd527b2921c9dd778fc8bf97c66a507703",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bb3f4d2-aba8-01c8-1428-bf064631aafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsAffineOpen.iSup_of_disjoint [Finite σ] {U : σ → X.Opens}
    (hU : ∀ i, IsAffineOpen (U i)) (hU' : Pairwise (Disjoint on U)) :
    IsAffineOpen (iSup U) := by
  obtain ⟨ι, ⟨e⟩⟩ := Small.equiv_small.{u} (α := σ)
  have : Finite ι := e.finite_iff.mp ‹_›
  rw [← e.symm.iSup_congr fun _ ↦ rfl]
  exact .iSup_of_disjoint_aux (by simp [*]) fun i j h ↦ hU' (e.symm.injective.ne h)

open scoped Function in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Limits/Variant9895b489fca1bb6d2e51f63722559fb607d1755533df6f8b37e76be8fc6d87eb.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b005adb113bc71f9946915f4ae7137fe6dff3b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
