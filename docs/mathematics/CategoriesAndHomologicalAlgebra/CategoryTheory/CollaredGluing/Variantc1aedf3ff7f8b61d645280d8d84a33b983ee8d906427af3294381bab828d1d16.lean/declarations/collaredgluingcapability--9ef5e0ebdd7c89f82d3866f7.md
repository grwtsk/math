# CollaredGluingCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23653ff209dce0166280b74f131b5397f7c8b3c116c38d9166796e38e0830825",
  "kind": "structure",
  "lexical_name": "CollaredGluingCapability",
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
  "slug": "collaredgluingcapability--9ef5e0ebdd7c89f82d3866f7",
  "source": {
    "blob": "d4a75eacee9cdb7f88e8c066c1e13864d1203bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ef5e0ebdd7c89f82d3866f754c099543f3fe47455f2c0461e67d25778cf26cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23653ff209dce0166280b74f131b5397f7c8b3c116c38d9166796e38e0830825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CollaredGluingCapability
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T) where
  lawStrictness : GluingLawStrictness
  lawStrictness_eq : lawStrictness = .propositional
  Exterior : Type uS
  Piece : Type uS
  Seam : Type uS
  Collar : Type uS
  exteriorSeam : Exterior → Seam
  pieceSeam : Piece → Seam
  collarSeam : Collar → Seam
  Compatible : Exterior → Piece → Prop
  collarData : ∀ {exterior piece}, Compatible exterior piece → Collar
  compatible_seam : ∀ {exterior piece}
      (_h : Compatible exterior piece),
    exteriorSeam exterior = pieceSeam piece
  collarData_seam : ∀ {exterior piece}
      (h : Compatible exterior piece),
    collarSeam (collarData h) = exteriorSeam exterior
  glued : Exterior → Piece → T.Manifold
  /-- Point-level inclusion data make the two-piece cover and its overlap explicit. -/
  GluedPoint : T.Manifold → Type uS
  ExteriorPoint : Exterior → Type uS
  PiecePoint : Piece → Type uS
  SeamPoint : Type uS
  includeExterior : ∀ (exterior piece),
    ExteriorPoint exterior → GluedPoint (glued exterior piece)
  includePiece : ∀ (exterior piece),
    PiecePoint piece → GluedPoint (glued exterior piece)
  seamIntoExterior : ∀ exterior, SeamPoint → ExteriorPoint exterior
  seamIntoPiece : ∀ piece, SeamPoint → PiecePoint piece
  overlap_restriction : ∀ {exterior piece}
      (h : Compatible exterior piece) (x : SeamPoint),
    includeExterior exterior piece (seamIntoExterior exterior x) =
      includePiece exterior piece (seamIntoPiece piece x)
  /-- Coverage predicates make the exterior/piece/seam cover part of the model. -/
  ExteriorCoveredBy : Exterior → T.Manifold → Prop
  PieceCoveredBy : Piece → T.Manifold → Prop
  SeamCoveredBy : Seam → T.Manifold → Prop
  PieceHom : Piece → Piece → Type uD
  pieceRefl : (piece : Piece) → PieceHom piece piece
  pieceSymm : ∀ {P Q}, PieceHom P Q → PieceHom Q P
  pieceTrans : ∀ {P Q R}, PieceHom P Q → PieceHom Q R → PieceHom P R
  pieceRefl_trans : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans (pieceRefl P) f = f
  pieceTrans_refl : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans f (pieceRefl Q) = f
  pieceTrans_assoc : ∀ {P Q R S}
      (f : PieceHom P Q) (g : PieceHom Q R) (h : PieceHom R S),
    pieceTrans (pieceTrans f g) h = pieceTrans f (pieceTrans g h)
  pieceSymm_trans : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans (pieceSymm f) f = pieceRefl Q
  pieceTrans_symm : ∀ {P Q} (f : PieceHom P Q),
    pieceTrans f (pieceSymm f) = pieceRefl P
  pieceSymm_refl : ∀ P, pieceSymm (pieceRefl P) = pieceRefl P
  pieceSymm_symm : ∀ {P Q} (f : PieceHom P Q), pieceSymm (pieceSymm f) = f
  /-- Collar comparisons are coherent data, not just equality of seam labels. -/
  CollarHom : Collar → Collar → Type uD
  collarRefl : (collar : Collar) → CollarHom collar collar
  collarSymm : ∀ {A B}, CollarHom A B → CollarHom B A
  collarTrans : ∀ {A B D}, CollarHom A B → CollarHom B D → CollarHom A D
  collarRefl_trans : ∀ {A B} (f : CollarHom A B),
    collarTrans (collarRefl A) f = f
  collarTrans_refl : ∀ {A B} (f : CollarHom A B),
    collarTrans f (collarRefl B) = f
  collarTrans_assoc : ∀ {A B D E}
      (f : CollarHom A B) (g : CollarHom B D) (h : CollarHom D E),
    collarTrans (collarTrans f g) h = collarTrans f (collarTrans g h)
  collarSymm_trans : ∀ {A B} (f : CollarHom A B),
    collarTrans (collarSymm f) f = collarRefl B
  collarTrans_symm : ∀ {A B} (f : CollarHom A B),
    collarTrans f (collarSymm f) = collarRefl A
  collarSymm_refl : ∀ A, collarSymm (collarRefl A) = collarRefl A
  collarSymm_symm : ∀ {A B} (f : CollarHom A B), collarSymm (collarSymm f) = f
  collarOfPieceHom : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q),
    PieceHom P Q → CollarHom (collarData hP) (collarData hQ)
  collarOfPieceRefl : ∀ {exterior P} (hP : Compatible exterior P),
    collarOfPieceHom hP hP (pieceRefl P) = collarRefl (collarData hP)
  collarOfPieceTrans : ∀ {exterior P Q R}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (hR : Compatible exterior R) (f : PieceHom P Q) (g : PieceHom Q R),
    collarOfPieceHom hP hR (pieceTrans f g) =
      collarTrans (collarOfPieceHom hP hQ f) (collarOfPieceHom hQ hR g)
  collarOfPieceSymm : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (f : PieceHom P Q),
    collarOfPieceHom hQ hP (pieceSymm f) =
      collarSymm (collarOfPieceHom hP hQ f)
  collarHom_preserves_seam : ∀ {A B}, CollarHom A B →
    collarSeam A = collarSeam B
  extend : ∀ {exterior P Q},
    Compatible exterior P → Compatible exterior Q →
      PieceHom P Q → G.Hom (glued exterior P) (glued exterior Q)
  commonExterior : ∀ (exterior P Q),
    G.CommonExterior (glued exterior P) (glued exterior Q)
  extend_selected_exterior : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (f : PieceHom P Q),
    G.selectedExterior (extend hP hQ f) = commonExterior exterior P Q
  extend_refl : ∀ {exterior P} (hP : Compatible exterior P),
    extend hP hP (pieceRefl P) = G.refl (glued exterior P)
  extend_trans : ∀ {exterior P Q R}
      (hP : Compatible exterior P)
      (hQ : Compatible exterior Q)
      (hR : Compatible exterior R)
      (f : PieceHom P Q)
      (g : PieceHom Q R),
    extend hP hR (pieceTrans f g) =
      G.trans (extend hP hQ f) (extend hQ hR g)
  extend_symm : ∀ {exterior P Q}
      (hP : Compatible exterior P) (hQ : Compatible exterior Q)
      (f : PieceHom P Q),
    extend hQ hP (pieceSymm f) = G.symm (extend hP hQ f)
  /-- A chart can be certified to respect the chosen collar, not only the seam. -/
  ChartRespectsCollar : ∀ {X exterior piece},
    G.Hom (glued exterior piece) X → Collar → Prop

namespace CollaredGluingCapability

variable {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}

/-- Gluing coherence in the abstract capability is explicitly propositional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4a75eacee9cdb7f88e8c066c1e13864d1203bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
