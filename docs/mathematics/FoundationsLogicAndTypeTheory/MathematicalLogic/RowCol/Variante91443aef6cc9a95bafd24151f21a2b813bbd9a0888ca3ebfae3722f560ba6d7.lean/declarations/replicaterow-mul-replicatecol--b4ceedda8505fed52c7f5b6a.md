# replicateRow_mul_replicateCol

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e86ddb1-6234-64c3-0d63-628adad5f184",
  "kind": "theorem",
  "lexical_name": "replicateRow_mul_replicateCol",
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
  "slug": "replicaterow-mul-replicatecol--b4ceedda8505fed52c7f5b6a",
  "source": {
    "blob": "09a8f85f8f04592bbae9dfe9dc64635acdcb53d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4ceedda8505fed52c7f5b6a3f48f501d815ae5f3f6c44e02801b8aa2712c895",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e86ddb1-6234-64c3-0d63-628adad5f184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replicateRow_mul_replicateCol [Fintype m] [Mul α] [AddCommMonoid α] (v w : m → α) :
    replicateRow ι v * replicateCol ι w = of fun _ _ => v ⬝ᵥ w :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a8f85f8f04592bbae9dfe9dc64635acdcb53d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
