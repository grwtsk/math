# jclosed_sieve_separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dd6e101-92bf-0205-eb55-83d6f2198809",
  "kind": "theorem",
  "lexical_name": "jclosed_sieve_separation",
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
  "slug": "jclosed-sieve-separation--519589f22c44442724edf400",
  "source": {
    "blob": "423dbf547c1240656d1117f5eb6f10595e8d6748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1868,
    "line": 1758,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:519589f22c44442724edf4002511e925a6026eec7e79e29c30978338a2a9f3ad",
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

Occurrence: `result:8dd6e101-92bf-0205-eb55-83d6f2198809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1758–1868.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jclosed_sieve_separation
    (J : GrothendieckTopology C)
    {X : C.Obj}
    (R : Sieve C X)
    (hR : J.covers X R)
    (S T : JClosedSieve J X)
    (hlocal : LocallyEqualOnCover J R S T) :
    S = T := by
  apply JClosedSieve.ext
  apply NativeSyntacticTopos.Sieve.ext
  intro Y f
  constructor
  · intro hfS
    have hcoverR :
        J.covers Y (Sieve.pullback R f) :=
      J.pullbackMem R hR f
    have hlocalCover :
        ∀ (Z : C.Obj)
          (g : C.Hom Z Y),
          (Sieve.pullback R f).arrows Z g →
            J.covers Z
              (Sieve.pullback (Sieve.pullback T.sieve f) g) := by
      intro Z g hg
      have hRf :
          R.arrows Z (C.comp g f) := hg
      have hSf :
          S.sieve.arrows Z (C.comp g f) :=
        S.sieve.downwardClosed f g hfS
      have heq :
          Sieve.pullback S.sieve (C.comp g f) =
            Sieve.pullback T.sieve (C.comp g f) :=
        hlocal (C.comp g f) hRf
      have hTf :
          T.sieve.arrows Z (C.comp g f) :=
        Sieve.mem_of_pullback_eq_and_mem
          (C := C)
          (f := C.comp g f)
          heq
          hSf
      have htop :
          Sieve.pullback T.sieve (C.comp g f) =
            Sieve.top C Z :=
        Sieve.pullback_top_of_mem
          (C := C)
          T.sieve
          (C.comp g f)
          hTf
      have hpull :
          Sieve.pullback (Sieve.pullback T.sieve f) g =
            Sieve.pullback T.sieve (C.comp g f) :=
        NativeSyntacticTopos.Sieve.pullback_pullback T.sieve f g
      rw [hpull, htop]
      exact J.topMem Z
    have hcoverT :
        J.covers Y (Sieve.pullback T.sieve f) :=
      J.transitive
        (Sieve.pullback R f)
        (Sieve.pullback T.sieve f)
        hcoverR
        hlocalCover
    exact T.isClosed f hcoverT
  · intro hfT
    have hcoverR :
        J.covers Y (Sieve.pullback R f) :=
      J.pullbackMem R hR f
    have hlocalCover :
        ∀ (Z : C.Obj)
          (g : C.Hom Z Y),
          (Sieve.pullback R f).arrows Z g →
            J.covers Z
              (Sieve.pullback (Sieve.pullback S.sieve f) g) := by
      intro Z g hg
      have hRf :
          R.arrows Z (C.comp g f) := hg
      have hTf :
          T.sieve.arrows Z (C.comp g f) :=
        T.sieve.downwardClosed f g hfT
      have heq :
          Sieve.pullback T.sieve (C.comp g f) =
            Sieve.pullback S.sieve (C.comp g f) :=
        (hlocal (C.comp g f) hRf).symm
      have hSf :
          S.sieve.arrows Z (C.comp g f) :=
        Sieve.mem_of_pullback_eq_and_mem
          (C := C)
          (f := C.comp g f)
          heq
          hTf
      have htop :
          Sieve.pullback S.sieve (C.comp g f) =
            Sieve.top C Z :=
        Sieve.pullback_top_of_mem
          (C := C)
          S.sieve
          (C.comp g f)
          hSf
      have hpull :
          Sieve.pullback (Sieve.pullback S.sieve f) g =
            Sieve.pullback S.sieve (C.comp g f) :=
        NativeSyntacticTopos.Sieve.pullback_pullback S.sieve f g
      rw [hpull, htop]
      exact J.topMem Z
    have hcoverS :
        J.covers Y (Sieve.pullback S.sieve f) :=
      J.transitive
        (Sieve.pullback R f)
        (Sieve.pullback S.sieve f)
        hcoverR
        hlocalCover
    exact S.isClosed f hcoverS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variant93fc784e380be82de6be9599c8d0a97abdfb34e45a03ab66f4ebb3b85cb2d74b.lean#L1758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `423dbf547c1240656d1117f5eb6f10595e8d6748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
