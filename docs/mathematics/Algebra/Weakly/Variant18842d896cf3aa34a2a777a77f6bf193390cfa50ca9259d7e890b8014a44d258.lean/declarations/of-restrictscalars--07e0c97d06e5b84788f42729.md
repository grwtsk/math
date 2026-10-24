# of_restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdec5067-d695-06fa-58eb-c7c11433030c",
  "kind": "lemma",
  "lexical_name": "of_restrictScalars",
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
  "slug": "of-restrictscalars--07e0c97d06e5b84788f42729",
  "source": {
    "blob": "94f914666f91dcb8574ec13add3fd8b912babef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 219,
    "path": "GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07e0c97d06e5b84788f427296d5cb121351922746c7ce1f14d5ac46318353db8",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdec5067-d695-06fa-58eb-c7c11433030c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_restrictScalars [Algebra S T] [IsScalarTower R S T]
    (q : Ideal T) [q.IsPrime] [WeaklyQuasiFiniteAt R q] :
    WeaklyQuasiFiniteAt S q := by
  have : Algebra.QuasiFiniteAt S (q.map (Ideal.Quotient.mk ((q.under R).map (algebraMap R T)))) :=
    .of_restrictScalars R _ _
  have H : (q.under R).map (algebraMap R T) ≤ (q.under S).map (algebraMap S T) := by
    simpa [Ideal.under, IsScalarTower.algebraMap_eq R S T, ← Ideal.map_map,
      ← Ideal.comap_comap, -Ideal.under_under] using Ideal.map_mono Ideal.map_comap_le
  delta WeaklyQuasiFiniteAt
  refine .of_surjectiveOnStalks (q.map (Ideal.Quotient.mk ((q.under R).map (algebraMap R T))))
    (Ideal.quotientMapₐ _ (.id _ _) (by exact H)) (RingHom.surjectiveOnStalks_of_surjective
      (Ideal.quotientMap_surjective (H := by exact H) Function.surjective_id)) _ ?_
  apply Ideal.comap_injective_of_surjective _ Ideal.Quotient.mk_surjective
  rw [Ideal.comap_comap, Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective]
  refine .trans ?_ (Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective _).symm
  simp [← RingHom.ker_eq_comap_bot, Ideal.map_comap_le]

/-- Use `Algebra.QuasiFinite.of_quasiFiniteAt_residueField` instead
for `Algebra.QuasiFiniteAt R q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f914666f91dcb8574ec13add3fd8b912babef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
