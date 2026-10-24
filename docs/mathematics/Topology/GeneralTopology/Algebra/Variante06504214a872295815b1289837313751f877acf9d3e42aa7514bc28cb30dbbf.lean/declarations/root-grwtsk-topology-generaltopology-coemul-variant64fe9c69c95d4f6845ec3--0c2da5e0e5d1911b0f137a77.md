# _root_.GRWTSK.Topology.GeneralTopology.CoeMul.Variant64fe9c69c95d4f6845ec32d3b127d74df6a6aa9042aa5701c0096e71d0e1d253.RingHom.compLeftContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f35db608090161bf263441144eda32cea5807aa2af8eddda387b23116fb95a36",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.CoeMul.Variant64fe9c69c95d4f6845ec32d3b127d74df6a6aa9042aa5701c0096e71d0e1d253.RingHom.compLeftContinuous",
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
  "slug": "root-grwtsk-topology-generaltopology-coemul-variant64fe9c69c95d4f6845ec3--0c2da5e0e5d1911b0f137a77",
  "source": {
    "blob": "d852f56e3ee12712c013b64ea9b20a838433f011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 484,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c2da5e0e5d1911b0f137a7772c8868172309c8493ba21be15f8a6b5754bb0a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f35db608090161bf263441144eda32cea5807aa2af8eddda387b23116fb95a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def _root_.GRWTSK.Topology.GeneralTopology.CoeMul.Variant64fe9c69c95d4f6845ec32d3b127d74df6a6aa9042aa5701c0096e71d0e1d253.RingHom.compLeftContinuous (α : Type*) {β : Type*} {γ : Type*}
    [TopologicalSpace α]
    [TopologicalSpace β] [Semiring β] [IsTopologicalSemiring β] [TopologicalSpace γ] [Semiring γ]
    [IsTopologicalSemiring γ] (g : β →+* γ) (hg : Continuous g) : C(α, β) →+* C(α, γ) :=
  { g.toMonoidHom.compLeftContinuous α hg, g.toAddMonoidHom.compLeftContinuous α hg with }

/-- Coercion to a function as a `RingHom`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d852f56e3ee12712c013b64ea9b20a838433f011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
