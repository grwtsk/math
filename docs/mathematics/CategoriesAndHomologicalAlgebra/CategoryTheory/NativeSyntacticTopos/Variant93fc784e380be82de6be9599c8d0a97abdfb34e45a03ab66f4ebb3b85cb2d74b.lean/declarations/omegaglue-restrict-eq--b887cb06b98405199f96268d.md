# omegaGlue_restrict_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01cff794-154a-6d2b-7046-8516a8460db9",
  "kind": "theorem",
  "lexical_name": "omegaGlue_restrict_eq",
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
  "slug": "omegaglue-restrict-eq--b887cb06b98405199f96268d",
  "source": {
    "blob": "423dbf547c1240656d1117f5eb6f10595e8d6748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1996,
    "line": 1944,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b887cb06b98405199f96268d61a78dba4247629809b11d1bfa8552c308fea370",
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

Occurrence: `result:01cff794-154a-6d2b-7046-8516a8460db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1944–1996.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omegaGlue_restrict_eq
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (m : MatchingFamily (OmegaPredicatePresheaf J) R)
    {Y : C.Obj}
    (f : C.Hom Y X)
    (hf : R.arrows Y f) :
    Sieve.pullback (omegaGlueSieve J R m) f =
      (m.sectionAt f hf).sieve := by
  apply NativeSyntacticTopos.Sieve.ext
  intro Z g
  constructor
  · intro hg
    have hgf :
        R.arrows Z (C.comp g f) :=
      R.downwardClosed f g hf
    have hgf' :
        R.arrows Z (C.comp (C.id Z) (C.comp g f)) := by
      simpa [C.id_comp (C.comp g f)] using hgf
    have hid :
        (m.sectionAt
          (C.comp (C.id Z) (C.comp g f))
          hgf').sieve.arrows Z (C.id Z) :=
      hg (C.id Z) hgf'
    have hid' :
        (m.sectionAt (C.comp g f) hgf).sieve.arrows Z (C.id Z) := by
      simpa [C.id_comp (C.comp g f)] using hid
    exact
      (matching_id_mem_iff
        (J := J)
        m
        f
        hf
        g).1 hid'
  · intro hg
    intro W h hh
    have hmem :
        (m.sectionAt f hf).sieve.arrows W (C.comp h g) :=
      (m.sectionAt f hf).sieve.downwardClosed g h hg
    have hid :
        (m.sectionAt
          (C.comp (C.comp h g) f)
          (R.downwardClosed f (C.comp h g) hf)).sieve.arrows
            W (C.id W) :=
      (matching_id_mem_iff
        (J := J)
        m
        f
        hf
        (C.comp h g)).2 hmem
    simpa [C.assoc h g f] using hid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean#L1944).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `423dbf547c1240656d1117f5eb6f10595e8d6748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
