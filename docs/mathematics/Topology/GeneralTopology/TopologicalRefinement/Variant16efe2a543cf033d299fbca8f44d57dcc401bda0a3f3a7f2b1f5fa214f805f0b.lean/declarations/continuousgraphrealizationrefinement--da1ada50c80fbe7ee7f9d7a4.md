# ContinuousGraphRealizationRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad7b417ce88819902924c2d8d6e4623518a995bedb9444ebcf7fc70bb9d6085b",
  "kind": "structure",
  "lexical_name": "ContinuousGraphRealizationRefinement",
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
  "slug": "continuousgraphrealizationrefinement--da1ada50c80fbe7ee7f9d7a4",
  "source": {
    "blob": "078381dae255ddfeac58e5df88f6224fff89ad1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da1ada50c80fbe7ee7f9d7a4ee779bec42e76d4636c306328e49f2972372e368",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad7b417ce88819902924c2d8d6e4623518a995bedb9444ebcf7fc70bb9d6085b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousGraphRealizationRefinement
    (Stage : Type uStage) (I : ClosedInterval.{uInterval}) where
  VertexAt : Stage → Type uPoint
  EdgeAt : Stage → Type uPoint
  graphAt : ∀ s, DirectedGraph (VertexAt s) (EdgeAt s)
  refines : Stage → Stage → Prop
  restrict :
    ∀ next prev,
      GraphPoint (graphAt next) I → GraphPoint (graphAt prev) I
  refines_refl : ∀ s, refines s s
  refines_trans :
    ∀ {later middle earlier},
      refines later middle → refines middle earlier →
        refines later earlier
  restrictContinuous :
    ∀ {next prev}, refines next prev →
      Continuous
        (graphRealizationTopology (graphAt next) I)
        (graphRealizationTopology (graphAt prev) I)
        (restrict next prev)
  restrict_identity : ∀ s x, restrict s s x = x
  restrict_composition :
    ∀ {later middle earlier}
      (_hlm : refines later middle)
      (_hme : refines middle earlier)
      (x : GraphPoint (graphAt later) I),
      restrict middle earlier (restrict later middle x) =
        restrict later earlier x

/--
A refinement system whose stage graph is constructed, at every stage, from
that stage's factoring sieve and occurrence relation.  Thus the displayed
restriction maps have the literal types
`|AdmittedGraph G_next sieve_next occurs_next| →
 |AdmittedGraph G_prev sieve_prev occurs_prev|`.

The maps and their laws remain supplied research data; this structure does
not manufacture them from a graph map or from sieve transport.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `078381dae255ddfeac58e5df88f6224fff89ad1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
