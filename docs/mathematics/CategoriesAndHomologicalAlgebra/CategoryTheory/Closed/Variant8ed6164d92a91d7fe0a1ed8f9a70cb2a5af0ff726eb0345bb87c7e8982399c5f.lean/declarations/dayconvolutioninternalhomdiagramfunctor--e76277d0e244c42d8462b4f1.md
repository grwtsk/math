# dayConvolutionInternalHomDiagramFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2156be55ba8bc6b50a9e20693da0650c3f859760e4bae7faa8cc600185fd94e1",
  "kind": "def",
  "lexical_name": "dayConvolutionInternalHomDiagramFunctor",
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
  "slug": "dayconvolutioninternalhomdiagramfunctor--e76277d0e244c42d8462b4f1",
  "source": {
    "blob": "e53d5f616b9fea9b05cd15695d5346cdf3e4d928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e76277d0e244c42d8462b4f1187b1b89f5f8e1b69ec78b09fa8304ca135414ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2156be55ba8bc6b50a9e20693da0650c3f859760e4bae7faa8cc600185fd94e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dayConvolutionInternalHomDiagramFunctor (F : C ⥤ V) :
    (C ⥤ V) ⥤ C ⥤ Cᵒᵖ ⥤ C ⥤ V where
  obj G :=
    { obj c := Functor.whiskeringLeft₂ _ |>.obj F.op |>.obj
        (tensorRight c ⋙ G) |>.obj MonoidalClosed.internalHom
      map {c c'} f := Functor.whiskeringLeft₂ _ |>.obj F.op |>.map
        (Functor.whiskerRight (curriedTensor C |>.flip.map f) G) |>.app
          MonoidalClosed.internalHom }
  map {G G'} η :=
    { app c := Functor.whiskeringLeft₂ _ |>.obj F.op |>.map
        (Functor.whiskerLeft _ η) |>.app MonoidalClosed.internalHom
      naturality {c c'} f := by
        ext j k
        dsimp
        simpa [-NatTrans.naturality] using!
          congr_arg (ihom <| F.obj <| unop j).map (η.naturality <| k ◁ f) }

/-- `DayConvolutionInternalHom F G H` asserts that `H` is the value at `G` of
an internal hom functor of `F` for the Day convolution monoidal structure.
This is phrased as the data of a limit `CategoryTheory.Wedge`
(i.e an end) on `internalHomDiagramFunctor F|>.obj G|>.obj c` and
`c`, with tip `(H.obj G).obj c` and a compatibility condition asserting that
the functoriality of `H` identifies to the functoriality of ends. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Closed/Variant8ed6164d92a91d7fe0a1ed8f9a70cb2a5af0ff726eb0345bb87c7e8982399c5f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e53d5f616b9fea9b05cd15695d5346cdf3e4d928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
