# jclosed_sieve_separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1750,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5312d787-9bc0-6e80-036e-518fdd8c0db7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c13857c-cac5-ff9e-6361-20e06b1b877a",
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
  "slug": "jclosed-sieve-separation--4b8c7e0d5fda9143667b1f86",
  "source": {
    "blob": "3b1ba50ffb78e7492c58eec2fea7836045fb759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1860,
    "line": 1750,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8c7e0d5fda9143667b1f86eda7f1de2a92b6a07877cfc597c5a8c1dbfff04b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c13857c-cac5-ff9e-6361-20e06b1b877a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1750–1860.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean#L1750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b1ba50ffb78e7492c58eec2fea7836045fb759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
