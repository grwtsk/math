# isOpenMap_of_generalizingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd49b11a74329a99910e113f7bf4980a90b84b77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:719f32cb-f461-2841-692b-9dbae2c9bbfc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3980b6fd-c5b5-0390-d7e1-d5c1b285667d",
  "kind": "lemma",
  "lexical_name": "isOpenMap_of_generalizingMap",
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
  "slug": "isopenmap-of-generalizingmap--6a0e27f3463f8b870aeb3af3",
  "source": {
    "blob": "dd49b11a74329a99910e113f7bf4980a90b84b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 107,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0e27f3463f8b870aeb3af3370a223e3e384a2758547350e9314b236ce0800d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3980b6fd-c5b5-0390-d7e1-d5c1b285667d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpenMap_of_generalizingMap [LocallyOfFinitePresentation f]
    (hf : GeneralizingMap f) : IsOpenMap f := by
  change topologically IsOpenMap f
  wlog hY : ∃ R, Y = Spec R
  · rw [IsZariskiLocalAtTarget.iff_of_openCover (P := topologically IsOpenMap) Y.affineCover]
    intro i
    dsimp only [Scheme.Cover.pullbackHom]
    refine this _ ?_ ⟨_, rfl⟩
    exact IsZariskiLocalAtTarget.of_isPullback (P := topologically GeneralizingMap)
      (iY := Y.affineCover.f i) (IsPullback.of_hasPullback ..) hf
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · rw [IsZariskiLocalAtSource.iff_of_openCover (P := topologically IsOpenMap) X.affineCover]
    intro i
    refine this f _ _ ?_ ⟨_, rfl⟩
    exact IsZariskiLocalAtSource.comp (P := topologically GeneralizingMap) hf _
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  algebraize [φ.hom]
  convert! PrimeSpectrum.isOpenMap_comap_of_hasGoingDown_of_finitePresentation
  · rwa [Algebra.HasGoingDown.iff_generalizingMap_primeSpectrumComap]
  · apply (HasRingHomProperty.Spec_iff (P := @LocallyOfFinitePresentation)).mp inferInstance

/-- Any flat morphism is generalizing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyOpen/Variant2aa27325a23d8368eb708cfa2b2fc1c244fcf783506116787ab289c16d287f77.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd49b11a74329a99910e113f7bf4980a90b84b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
