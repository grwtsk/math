# succ_n_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b48d5da-f2fb-2122-3dbc-8c18b6cc370c",
  "kind": "theorem",
  "lexical_name": "succ_n_eq",
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
  "slug": "succ-n-eq--e0c3339b1c062f65a2bfc387",
  "source": {
    "blob": "21e1587b28267d52face7f025b7c3c6aaf89f6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c3339b1c062f65a2bfc3877934928757ba0674a22ce0b962edca088e42b2a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b48d5da-f2fb-2122-3dbc-8c18b6cc370c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_n_eq (p q : Q n.succ) : p = q ↔ p 0 = q 0 ∧ π p = π q := by
  constructor
  · rintro rfl; exact ⟨rfl, rfl⟩
  · rintro ⟨h₀, h⟩
    ext x
    by_cases hx : x = 0
    · rwa [hx]
    · rw [← Fin.succ_pred x hx]
      convert! congr_fun h (Fin.pred x hx)

/-- The adjacency relation defining the graph structure on `Q n`:
`p.adjacent q` if there is an edge from `p` to `q` in `Q n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variante4ef823d8b5e7688fcbb19e0624e5e35637f5a0d0f95a6e6aab13a60265788f8.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e1587b28267d52face7f025b7c3c6aaf89f6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
