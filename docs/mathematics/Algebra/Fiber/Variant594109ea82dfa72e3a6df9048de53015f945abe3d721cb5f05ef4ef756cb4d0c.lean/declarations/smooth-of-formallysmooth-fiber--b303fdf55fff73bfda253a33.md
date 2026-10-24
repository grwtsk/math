# Smooth.of_formallySmooth_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20e2ab90-07f3-6cc1-ea9b-3746e1949eda",
  "kind": "lemma",
  "lexical_name": "Smooth.of_formallySmooth_fiber",
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
  "slug": "smooth-of-formallysmooth-fiber--b303fdf55fff73bfda253a33",
  "source": {
    "blob": "2edecb8883baa04db330c02ec22027111bbeb65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 246,
    "path": "GRWTSK/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b303fdf55fff73bfda253a33322a71e5800e7faab9b64df0fa8f2e608f71fe63",
  "verification": {
    "reference": "docs/verification/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20e2ab90-07f3-6cc1-ea9b-3746e1949eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Smooth.of_formallySmooth_fiber [Algebra.FinitePresentation R S]
    (H : ∀ (I : Ideal R) [I.IsPrime], FormallySmooth I.ResidueField (I.Fiber S)) :
    Algebra.Smooth R S := by
  refine ⟨smoothLocus_eq_univ_iff.mp (Set.eq_univ_iff_forall.mpr fun q ↦ ?_), ‹_›⟩
  exact .of_formallySmooth_fiber (q.asIdeal.under R) _

attribute [local instance] FormallyEtale.of_formallyUnramified_of_field in
@[stacks 08WD "(3) => (1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2edecb8883baa04db330c02ec22027111bbeb65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
