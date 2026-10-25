# uniform_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b577c87-e656-157e-6d87-8b3da9fe36be",
  "kind": "theorem",
  "lexical_name": "uniform_subst",
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
  "slug": "uniform-subst--8ef8b6ae16b6ec9668cd6b68",
  "source": {
    "blob": "bf3b987541ba266df9ef6b259f9b72b03cd16180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 808,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ef8b6ae16b6ec9668cd6b68116ebd7005142a3a588755cd1a9964429db7190e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b577c87-e656-157e-6d87-8b3da9fe36be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_subst (Q : Expr S) (σ : Nat → Expr S) :
    (R.uniform Q).subst σ = (R.subst σ).uniform (Q.subst (Expr.liftSub (Expr.liftSub σ))) := by
  simp only [uniform,Expr.subst,domain,PositiveDataWrapper.apply_subst,wrappedBuild_subst,
    PositiveDataWrapper.project_subst,subst_rename,rename_subst,PositiveDataWrapper.subst_rename,
    Expr.liftSub]
  simp only [subst,PositiveDataWrapper.rename_subst]
  rfl
end ProbeCode
namespace RelationalCode
variable (R : RelationalCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3b987541ba266df9ef6b259f9b72b03cd16180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
