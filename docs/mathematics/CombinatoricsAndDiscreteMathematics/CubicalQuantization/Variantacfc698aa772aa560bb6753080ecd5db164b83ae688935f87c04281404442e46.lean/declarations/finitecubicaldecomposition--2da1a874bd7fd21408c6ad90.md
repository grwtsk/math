# FiniteCubicalDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d328c34ec0edbae08146f23049e744cfd45d4e15fbae2d96687376e2c16eeb7f",
  "kind": "structure",
  "lexical_name": "FiniteCubicalDecomposition",
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
  "slug": "finitecubicaldecomposition--2da1a874bd7fd21408c6ad90",
  "source": {
    "blob": "db742b6c8a559c6be677decabda66708087ab293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2da1a874bd7fd21408c6ad90a400ee0d4d01997c2d707ec77e64dbd1c70aabf6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d328c34ec0edbae08146f23049e744cfd45d4e15fbae2d96687376e2c16eeb7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteCubicalDecomposition where
  maxDimension : Nat
  Cell : Nat → Type u
  cellFintype : ∀ k, Fintype (Cell k)
  cellDecidableEq : ∀ k, DecidableEq (Cell k)
  noCellAboveMaximum :
    ∀ {k}, maxDimension < k → IsEmpty (Cell k)
  face :
    ∀ {k},
      Fin (k + 1) →
      CubicalFaceOrientation →
      Cell (k + 1) →
      Cell k
  face_commutes :
    ∀ {k}
      (i j : Fin (k + 2))
      (hij : i.val < j.val)
      (epsilon delta : CubicalFaceOrientation)
      (cell : Cell (k + 2)),
      face (cubicalLowerIndex i j hij) epsilon
          (face j delta cell) =
        face (cubicalShiftedIndex i j hij) delta
          (face i epsilon cell)
  cellIdentity : ∀ {k}, Cell k → ArtifactIdentity
  cellIdentity_injective :
    ∀ {k}, Function.Injective (@cellIdentity k)
  cellIdentity_globally_injective :
    Function.Injective
      (fun cell : Sigma Cell => cellIdentity cell.2)
  subjectIdentity : ∀ {k}, Cell k → ArtifactIdentity
  cellEvidence : ∀ {k}, Cell k → ProgressiveEvidence

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db742b6c8a559c6be677decabda66708087ab293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
