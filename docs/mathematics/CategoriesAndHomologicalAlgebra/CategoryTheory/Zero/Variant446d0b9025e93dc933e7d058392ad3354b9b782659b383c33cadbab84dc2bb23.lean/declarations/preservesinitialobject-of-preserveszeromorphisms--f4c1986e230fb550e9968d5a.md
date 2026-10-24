# preservesInitialObject_of_preservesZeroMorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:451a395c-5cdf-d150-dbd3-ffe5884e08c9",
  "kind": "lemma",
  "lexical_name": "preservesInitialObject_of_preservesZeroMorphisms",
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
  "slug": "preservesinitialobject-of-preserveszeromorphisms--f4c1986e230fb550e9968d5a",
  "source": {
    "blob": "77100b2117541bc1970b1e048fd241dc03fc035f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant446d0b9025e93dc933e7d058392ad3354b9b782659b383c33cadbab84dc2bb23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4c1986e230fb550e9968d5a0e32addb32d461ad4abf526cd16b110d55631942",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant446d0b9025e93dc933e7d058392ad3354b9b782659b383c33cadbab84dc2bb23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:451a395c-5cdf-d150-dbd3-ffe5884e08c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesInitialObject_of_preservesZeroMorphisms [PreservesZeroMorphisms F] :
    PreservesColimit (Functor.empty.{0} C) F :=
  preservesInitial_of_iso F <|
    HasZeroObject.zeroIsoInitial.symm ≪≫
      (mapZeroObject F).symm ≪≫ (F.mapIso HasZeroObject.zeroIsoInitial.symm).symm

end ZeroObject

section

variable [HasZeroObject D] [HasZeroMorphisms D]
  (G : C ⥤ D) (hG : IsZero G) (J : Type*) [Category* J]

include hG

/-- A zero functor preserves limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant446d0b9025e93dc933e7d058392ad3354b9b782659b383c33cadbab84dc2bb23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant446d0b9025e93dc933e7d058392ad3354b9b782659b383c33cadbab84dc2bb23.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77100b2117541bc1970b1e048fd241dc03fc035f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
