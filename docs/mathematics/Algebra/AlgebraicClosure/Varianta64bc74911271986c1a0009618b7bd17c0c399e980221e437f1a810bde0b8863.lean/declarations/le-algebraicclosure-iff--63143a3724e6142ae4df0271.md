# le_algebraicClosure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0c4f8d4-656d-d064-8f43-33cc6d899dd1",
  "kind": "theorem",
  "lexical_name": "le_algebraicClosure_iff",
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
  "slug": "le-algebraicclosure-iff--63143a3724e6142ae4df0271",
  "source": {
    "blob": "794f32f75e23ef4526a2b5da7239e57a88283659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 142,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63143a3724e6142ae4df0271fa5e1f05536374b0dc2a121f969cf754d9d9f34a",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c4f8d4-656d-d064-8f43-33cc6d899dd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_algebraicClosure_iff (L : IntermediateField F E) :
    L ≤ algebraicClosure F E ↔ Algebra.IsAlgebraic F L :=
  ⟨fun h ↦ ⟨fun x ↦ by simpa only [IsAlgebraic, ne_eq, ← aeval_algebraMap_eq_zero_iff E,
    IntermediateField.algebraMap_apply,
    Algebra.id.map_eq_id, RingHomCompTriple.comp_apply, mem_algebraicClosure_iff] using h x.2⟩,
    fun _ ↦ le_algebraicClosure _ _ _⟩

namespace algebraicClosure

/-- The algebraic closure in `E` of the algebraic closure of `F` in `E` is equal to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Varianta64bc74911271986c1a0009618b7bd17c0c399e980221e437f1a810bde0b8863.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `794f32f75e23ef4526a2b5da7239e57a88283659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
