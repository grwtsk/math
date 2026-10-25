# rPredBody_instantiate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d97cad5-19f7-50f8-5689-64ab3826c857",
  "kind": "theorem",
  "lexical_name": "rPredBody_instantiate",
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
  "slug": "rpredbody-instantiate--5d71dc17761d7a212b446a69",
  "source": {
    "blob": "865305ad13773a1bfae279e1cdb9a1aa4fd17a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 870,
    "line": 866,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d71dc17761d7a212b446a6997184e6bd8bbded36a2fefd3d892ff1124b0374e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d97cad5-19f7-50f8-5689-64ab3826c857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 866–870.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rPredBody_instantiate (L : LogicCode S) (KY KP : QuantifierCode S) (v x : Expr S) :
    (B.rPredBody L KY KP v).instantiate x = B.rPredStep L KY KP v x := by
  simp only [rPredBody,Expr.instantiate,rPredStep_subst,instantiate_raise,
    LogicCode.instantiate_raise,QuantifierCode.instantiate_raise,Expr.subst_lift_single,
    Expr.subst,Expr.single]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean#L866).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865305ad13773a1bfae279e1cdb9a1aa4fd17a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
