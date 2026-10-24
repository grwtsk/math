# LinearOrderedCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83a11e52-0020-6999-5ae7-cd48c7771408",
  "kind": "lemma",
  "lexical_name": "LinearOrderedCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete",
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
  "slug": "linearorderedcommgroup-wellfoundedon-setof-le-lt-iff-nonempty-discrete--27a964ca30d154fa4f0dc0f4",
  "source": {
    "blob": "c8d89e44d4a0088e14edd4367f66a87ba4413f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 378,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a964ca30d154fa4f0dc0f4d3ef5a4238a33ebd67fb4ea8018f0ff061b8b18e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83a11e52-0020-6999-5ae7-cd48c7771408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete
    {G : Type*} [CommGroup G] [LinearOrder G] [IsOrderedMonoid G] [Nontrivial G] {g : G} :
    Set.WellFoundedOn {x : G | g ≤ x} (· < ·) ↔ Nonempty (G ≃*o Multiplicative ℤ) := by
  let e : G ≃o Additive G := OrderIso.refl G
  suffices Set.WellFoundedOn {x : G | g ≤ x} (· < ·) ↔ Set.WellFoundedOn {x | e g ≤ x} (· < ·) by
    rw [this, LinearOrderedAddCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete]
    refine Nonempty.congr (fun f ↦ ?_) (fun f ↦ ?_)
    · exact ⟨AddEquiv.toMultiplicative' f, by simp⟩
    · exact ⟨MulEquiv.toAdditive' f, by simp⟩
  refine ⟨fun h ↦ (h.mapsTo e.symm fun _ ↦ e.le_symm_apply.mpr).mono' ?_,
    fun h ↦ (h.mapsTo e fun _ ↦ ?_).mono' ?_⟩ <;>
  simp [Function.onFun]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d89e44d4a0088e14edd4367f66a87ba4413f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
