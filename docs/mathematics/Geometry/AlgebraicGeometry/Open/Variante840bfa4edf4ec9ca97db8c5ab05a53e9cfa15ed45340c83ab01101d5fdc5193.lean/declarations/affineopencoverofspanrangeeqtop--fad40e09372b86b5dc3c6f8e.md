# affineOpenCoverOfSpanRangeEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8e309d0200d99409e3861db520dacccf224997a0fb68e0a353e538a8b3c8bd5",
  "kind": "def",
  "lexical_name": "affineOpenCoverOfSpanRangeEqTop",
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
  "slug": "affineopencoverofspanrangeeqtop--fad40e09372b86b5dc3c6f8e",
  "source": {
    "blob": "cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 192,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fad40e09372b86b5dc3c6f8e0c8be553171adad54e0f532374df3a6d42419e12",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8e309d0200d99409e3861db520dacccf224997a0fb68e0a353e538a8b3c8bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affineOpenCoverOfSpanRangeEqTop {R : CommRingCat} {ι : Type*} (s : ι → R)
    (hs : Ideal.span (Set.range s) = ⊤) : (Spec R).AffineOpenCover where
  J := ι
  obj i := .of (Localization.Away (s i))
  map i := Spec.map (CommRingCat.ofHom (algebraMap R (Localization.Away (s i))))
  f x := by
    have : ∃ i, s i ∉ x.asIdeal := by
      by_contra! h; apply x.2.ne_top; rwa [← top_le_iff, ← hs, Ideal.span_le, Set.range_subset_iff]
    exact this.choose
  covers x := by
    generalize_proofs H
    let i := H.choose
    have := PrimeSpectrum.localization_away_comap_range (Localization.Away (s i)) (s i)
    exact (eq_iff_iff.mp congr(x ∈ $this)).mpr H.choose_spec

/-- Given any open cover `𝓤`, this is an affine open cover which refines it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
