# Scheme.Hom.quasiFiniteAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:401b17af-1090-9a70-52dc-dabd055ec169",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.quasiFiniteAt",
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
  "slug": "scheme-hom-quasifiniteat--bcc775f785ab4a582ba87c09",
  "source": {
    "blob": "47be796e20c03ee563fa601d2a4a87163338f74c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 366,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcc775f785ab4a582ba87c0952abd5f5c1d895f3b46dd9cb83790aabcb7bc2c1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:401b17af-1090-9a70-52dc-dabd055ec169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.quasiFiniteAt [LocallyQuasiFinite f] (x : X) :
    f.QuasiFiniteAt x := by
  refine HasRingHomProperty.stalkMap ?_ ‹_› x
  introv hf
  algebraize [f]
  refine .of_comp (g := algebraMap R _) ?_
  convert!
    RingHom.quasiFinite_algebraMap.mpr
      (inferInstance : Algebra.QuasiFinite R (Localization.AtPrime J))
  ext; simp; rfl

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47be796e20c03ee563fa601d2a4a87163338f74c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
