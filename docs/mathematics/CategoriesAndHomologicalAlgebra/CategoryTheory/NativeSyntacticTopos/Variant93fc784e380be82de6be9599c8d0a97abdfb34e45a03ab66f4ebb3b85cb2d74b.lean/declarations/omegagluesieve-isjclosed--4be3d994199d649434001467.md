# omegaGlueSieve_isJClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:326ca004-3c8d-b276-848a-b7f36c4230e1",
  "kind": "theorem",
  "lexical_name": "omegaGlueSieve_isJClosed",
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
  "slug": "omegagluesieve-isjclosed--4be3d994199d649434001467",
  "source": {
    "blob": "423dbf547c1240656d1117f5eb6f10595e8d6748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2077,
    "line": 1997,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be3d994199d6494340014674b96a4b06f8ae8c93246b9a44143c5709d6dbb3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:326ca004-3c8d-b276-848a-b7f36c4230e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1997–2077.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omegaGlueSieve_isJClosed
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (_hR : J.covers X R)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R) :
    IsJClosed J (omegaGlueSieve J R m) := by
  intro Y f hcover
  intro Z g hRgf
  let Sgf : JClosedSieve J Z :=
    m.sectionAt (C.comp g f) hRgf
  have hcover_g :
      J.covers Z
        (Sieve.pullback
          (Sieve.pullback (omegaGlueSieve J R m) f)
          g) :=
    J.pullbackMem
      (Sieve.pullback (omegaGlueSieve J R m) f)
      hcover
      g
  have hcover_g' :
      J.covers Z
        (Sieve.pullback
          (omegaGlueSieve J R m)
          (C.comp g f)) := by
    rw [← NativeSyntacticTopos.Sieve.pullback_pullback
      (omegaGlueSieve J R m) f g]
    exact hcover_g
  have localCover :
      ∀ (W : C.Obj)
        (h : C.Hom W Z),
        (Sieve.pullback
          (omegaGlueSieve J R m)
          (C.comp g f)).arrows W h →
          J.covers W
            (Sieve.pullback Sgf.sieve h) := by
    intro W h hh
    have heq :
        Sieve.pullback
          (omegaGlueSieve J R m)
          (C.comp g f) =
          Sgf.sieve :=
      omegaGlue_restrict_eq
        (J := J)
        R
        m
        (C.comp g f)
        hRgf
    have hSgf :
        Sgf.sieve.arrows W h := by
      have hh' :
          (Sieve.pullback
            (omegaGlueSieve J R m)
            (C.comp g f)).arrows W h := hh
      rw [heq] at hh'
      exact hh'
    have htop :
        Sieve.pullback Sgf.sieve h =
          Sieve.top C W :=
      Sieve.pullback_top_of_mem
        (C := C)
        Sgf.sieve
        h
        hSgf
    rw [htop]
    exact J.topMem W
  have hcoverSgf :
      J.covers Z Sgf.sieve :=
    J.transitive
      (Sieve.pullback
        (omegaGlueSieve J R m)
        (C.comp g f))
      Sgf.sieve
      hcover_g'
      localCover
  have hcoverSgf_id :
      J.covers Z
        (Sieve.pullback Sgf.sieve (C.id Z)) := by
    simpa [NativeSyntacticTopos.Sieve.pullback_id] using hcoverSgf
  exact Sgf.isClosed (C.id Z) hcoverSgf_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean#L1997).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `423dbf547c1240656d1117f5eb6f10595e8d6748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
