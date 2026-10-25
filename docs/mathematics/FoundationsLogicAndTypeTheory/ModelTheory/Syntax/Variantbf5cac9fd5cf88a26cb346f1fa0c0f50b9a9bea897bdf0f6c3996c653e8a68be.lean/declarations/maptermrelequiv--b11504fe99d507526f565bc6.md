# mapTermRelEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c765a29968f1ebb6505b623c54d3043477256091a21ea5c15d0a07bc3d351c50",
  "kind": "def",
  "lexical_name": "mapTermRelEquiv",
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
  "slug": "maptermrelequiv--b11504fe99d507526f565bc6",
  "source": {
    "blob": "e13feba647d50c91a020dc959db8fa64179f8324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 559,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b11504fe99d507526f565bc6b0d34f19a0978afa7f0470d110a01b6f0437b9c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c765a29968f1ebb6505b623c54d3043477256091a21ea5c15d0a07bc3d351c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapTermRelEquiv (ft : ∀ n, L.Term (Sum α (Fin n)) ≃ L'.Term (Sum β (Fin n)))
    (fr : ∀ n, L.Relations n ≃ L'.Relations n) {n} : L.BoundedFormula α n ≃ L'.BoundedFormula β n :=
  ⟨mapTermRel (fun n => ft n) (fun n => fr n) fun _ => id,
    mapTermRel (fun n => (ft n).symm) (fun n => (fr n).symm) fun _ => id, fun φ => by simp, fun φ =>
    by simp⟩
#align first_order.language.bounded_formula.map_term_rel_equiv FirstOrder.Language.BoundedFormula.mapTermRelEquiv

/-- A function to help relabel the variables in bounded formulas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e13feba647d50c91a020dc959db8fa64179f8324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
