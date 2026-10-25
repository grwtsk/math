# analytic_owns_le_holds_by_categorical_logic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e3dcb09-37fc-2f88-43f7-ce186b32c434",
  "kind": "theorem",
  "lexical_name": "analytic_owns_le_holds_by_categorical_logic",
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
  "slug": "analytic-owns-le-holds-by-categorical-logic--b96d5903b2668e8dfdae353d",
  "source": {
    "blob": "b7d1ff9112a45bac9c29ba6006595552412e3ef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variant33463a59c0d8fc660eff3a8e00b9cb93130b058103831605d25035b8f38f544a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b96d5903b2668e8dfdae353de41f2e8ad5cab04368a9561e8490e91b2d6003e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variant33463a59c0d8fc660eff3a8e00b9cb93130b058103831605d25035b8f38f544a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e3dcb09-37fc-2f88-43f7-ce186b32c434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analytic_owns_le_holds_by_categorical_logic :
    Nonempty
      (Authority.BoundaryCalculus.CategoricalLogic.SubobjectLE
        (Authority.BoundaryCalculus.CategoricalLogic.predicateSubobject
          (Authority.BoundaryCalculus.DTT.OwnsPred analyticDTT))
        (Authority.BoundaryCalculus.CategoricalLogic.predicateSubobject
          (Authority.BoundaryCalculus.DTT.HoldsPred analyticDTT))) :=
  Authority.BoundaryCalculus.DTT.owns_le_holds_by_categorical_logic analyticDTT

/-! ## Zeta zero-location adapter example -/

/-- Analytic context attached to a supplied zeta zero-location authority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variant33463a59c0d8fc660eff3a8e00b9cb93130b058103831605d25035b8f38f544a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variant33463a59c0d8fc660eff3a8e00b9cb93130b058103831605d25035b8f38f544a.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d1ff9112a45bac9c29ba6006595552412e3ef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
