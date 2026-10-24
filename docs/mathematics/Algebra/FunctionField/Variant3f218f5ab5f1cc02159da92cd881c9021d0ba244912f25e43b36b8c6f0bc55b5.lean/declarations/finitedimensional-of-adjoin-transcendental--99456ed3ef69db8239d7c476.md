# finiteDimensional_of_adjoin_transcendental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cce3b93-6eac-17e9-d1f0-030b7b4cbe83",
  "kind": "lemma",
  "lexical_name": "finiteDimensional_of_adjoin_transcendental",
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
  "slug": "finitedimensional-of-adjoin-transcendental--99456ed3ef69db8239d7c476",
  "source": {
    "blob": "b9fac5fabef357ae41de8293703fed3ca2013414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 237,
    "path": "GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99456ed3ef69db8239d7c47663b67dedfcbf9fcc64d88f02bb04d346e5c9700c",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cce3b93-6eac-17e9-d1f0-030b7b4cbe83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finiteDimensional_of_adjoin_transcendental (hy : Transcendental F y) :
    FiniteDimensional F⟮y⟯ K :=
  -- Local definitions for convenience
  let x := algebraMap _ K (X : F⟮X⟯)
  let Fyx := restrictScalars F F⟮y⟯⟮x⟯
  let Fxy := restrictScalars F F⟮x⟯⟮y⟯
  -- Recalling instance to speed up search
  let : Algebra F⟮y⟯ Fyx := F⟮y⟯⟮x⟯.algebra
  let : Module F⟮y⟯ Fyx := Algebra.toModule
  let : SMul F⟮y⟯ Fyx := Algebra.toSMul
  let : Algebra F⟮x⟯ Fxy := F⟮x⟯⟮y⟯.algebra
  let : Module F⟮x⟯ Fxy := Algebra.toModule
  let : SMul F⟮x⟯ Fxy := Algebra.toSMul
  have : FiniteDimensional F⟮y⟯ Fyx :=
    adjoin.finiteDimensional
      (isAlgebraic_iff_isIntegral.mp (isAlgebraic_X_over_adjoin_transcendental hy))
  have : FiniteDimensional Fyx K := by
    have := FiniteDimensional.adjoin_algebraMap_X (F := F) (K := K)
    unfold Fyx
    rw [adjoin_simple_comm]
    have : IsScalarTower F⟮x⟯ Fxy K := isScalarTower_mid' F⟮x⟯⟮y⟯
    exact .right F⟮x⟯ Fxy K
  have : IsScalarTower F⟮y⟯ Fyx K := isScalarTower_mid' F⟮y⟯⟮x⟯
  .trans F⟮y⟯ Fyx K

end AdjoinTranscendental

section constantExtension

open RatFunc

variable {F}
variable [Algebra F[X] K] [FaithfulSMul F[X] K] [FunctionField F K]

attribute [local instance] Polynomial.algebra

section Unbundled

open Polynomial

variable {E : Type*} [Field E] [Algebra F E] [Algebra E[X] K] [FaithfulSMul E[X] K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Variant3f218f5ab5f1cc02159da92cd881c9021d0ba244912f25e43b36b8c6f0bc55b5.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9fac5fabef357ae41de8293703fed3ca2013414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
