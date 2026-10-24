# FiniteInteractionComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21c5856789b9362eb2c4068d65f7c39b778ad50b6c3256ea6866bf4361ae1f58",
  "kind": "structure",
  "lexical_name": "FiniteInteractionComplex",
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
  "slug": "finiteinteractioncomplex--2ee5cb51fc9a58b272e67843",
  "source": {
    "blob": "355dd49b1de73b7376da0b0f0f66c1ab64545892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ee5cb51fc9a58b272e67843a9dd16091bd5822faaba74dffb2c1b29293cf552",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21c5856789b9362eb2c4068d65f7c39b778ad50b6c3256ea6866bf4361ae1f58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteInteractionComplex (N : ℕ) where
  activeAtoms : Finset (PacketAtom N)
  edgeWeight : PacketAtom N → PacketAtom N → ℝ
  edgeWeight_nonneg : ∀ left right, 0 ≤ edgeWeight left right
  edgeWeight_symm : ∀ left right, edgeWeight left right = edgeWeight right left
  edgeWeight_self : ∀ atom, edgeWeight atom atom = 0
  interactionThreshold : ℝ
  interactionThreshold_pos : 0 < interactionThreshold
  /-- Angular separation scale fixed with the coefficient-blind geometry,
  before any transverse alternative is selected. -/
  angularScale : ℝ
  angularScale_pos : 0 < angularScale
  angularScale_eq_scaffold : angularScale = vaughanTubeThickness N

/-- Thresholded interaction relation of the finite complex. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355dd49b1de73b7376da0b0f0f66c1ab64545892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
