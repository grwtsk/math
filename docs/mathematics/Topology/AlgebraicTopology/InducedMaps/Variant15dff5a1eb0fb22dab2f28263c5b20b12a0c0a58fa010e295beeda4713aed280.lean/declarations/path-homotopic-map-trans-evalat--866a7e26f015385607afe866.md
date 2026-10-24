# Path.Homotopic.map_trans_evalAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c61ad96e-c4b1-698f-318c-4199c918399f",
  "kind": "theorem",
  "lexical_name": "Path.Homotopic.map_trans_evalAt",
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
  "slug": "path-homotopic-map-trans-evalat--866a7e26f015385607afe866",
  "source": {
    "blob": "f8f221fb4dc2dba0001fd7b22fce06af72d14316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 48,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:866a7e26f015385607afe8668100d6ee410b365e1595636a47b755ee52ef845c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c61ad96e-c4b1-698f-318c-4199c918399f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Path.Homotopic.map_trans_evalAt {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    {f g : C(X, Y)} (F : f.Homotopy g) {x₁ x₂ : X} (p : Path x₁ x₂) :
    ((p.map (map_continuous f)).trans (F.evalAt x₂)).Homotopic
      ((F.evalAt x₁).trans (p.map (map_continuous g))) := by
  /- Let `G` be the continuous map on the unit square sending `(t, s)` to `F(t, p(s))`.
  Then our homotopy is the image under `G` of a homotopy
  between the two paths from `(0, 0)` to `(1, 1)` along the sides of the square. -/
  set G : C(I × I, Y) := F.toContinuousMap.comp (.prodMap (.id _) p)
  set p₁ : Path ((0, 0) : I × I) (1, 1) := .prod (.trans (.refl _) .id) (.trans .id (.refl _))
  set p₂ : Path ((0, 0) : I × I) (1, 1) := .prod (.trans .id (.refl _)) (.trans (.refl _) .id)
  set Fsq : p₁.Homotopy p₂ :=
    Path.Homotopic.prodHomotopy (.trans (.reflTrans _) (.symm <| .transRefl _))
      (.trans (.transRefl _) (.symm <| .reflTrans _))
  refine ⟨((Fsq.map G).pathCast ?H0 ?H1).cast ?hp ?hq⟩
  all_goals aesop (add simp Path.trans_apply)

namespace FundamentalGroupoidFunctor

open CategoryTheory
open scoped FundamentalGroupoid ContinuousMap

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f g : C(X, Y)}

set_option backward.isDefEq.respectTransparency false in
set_option pp.proofs.withType true in
/-- Given a homotopy H : f ∼ g, we have an associated natural isomorphism between the induced
functors `map f` and `map g` on fundamental groupoids. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f221fb4dc2dba0001fd7b22fce06af72d14316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
