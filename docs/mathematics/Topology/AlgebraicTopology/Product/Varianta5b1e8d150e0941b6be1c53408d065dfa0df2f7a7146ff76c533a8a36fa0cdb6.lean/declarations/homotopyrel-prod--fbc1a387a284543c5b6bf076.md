# HomotopyRel.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473c914f5728da794439714425c52403145ad749243153f67de97876145f2458",
  "kind": "def",
  "lexical_name": "HomotopyRel.prod",
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
  "slug": "homotopyrel-prod--fbc1a387a284543c5b6bf076",
  "source": {
    "blob": "84af846cc544dc83fa8e42eaf9ea379f2378a713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 90,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbc1a387a284543c5b6bf0764d4c4fa47622a7693b9279571e4806dbd6f0debc",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473c914f5728da794439714425c52403145ad749243153f67de97876145f2458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HomotopyRel.prod (F : HomotopyRel f₀ f₁ S) (G : HomotopyRel g₀ g₁ S) :
    HomotopyRel (prodMk f₀ g₀) (prodMk f₁ g₁) S where
  toHomotopy := Homotopy.prod F.toHomotopy G.toHomotopy
  prop' t x hx := Prod.ext (F.prop' t x hx) (G.prop' t x hx)

end Prod

end ContinuousMap

namespace Path.Homotopic

attribute [local instance] Path.Homotopic.setoid

local infixl:70 " ⬝ " => Quotient.comp

section Pi

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)] {as bs cs : ∀ i, X i}

/-- The product of a family of path homotopies. This is just a specialization of `HomotopyRel`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Varianta5b1e8d150e0941b6be1c53408d065dfa0df2f7a7146ff76c533a8a36fa0cdb6.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84af846cc544dc83fa8e42eaf9ea379f2378a713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
