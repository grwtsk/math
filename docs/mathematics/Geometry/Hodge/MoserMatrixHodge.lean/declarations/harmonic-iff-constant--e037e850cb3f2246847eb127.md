# harmonic_iff_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96509bd5e64bee2716186bac9f51dbf9ae9d4c3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/Geometry/Hodge/MoserMatrixHodge.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90768882-fa74-d5dd-dcd0-ba4345d0c6c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a07c422f-e143-80e9-6779-3064456e5e26",
  "kind": "theorem",
  "lexical_name": "harmonic_iff_constant",
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
  "slug": "harmonic-iff-constant--e037e850cb3f2246847eb127",
  "source": {
    "blob": "96509bd5e64bee2716186bac9f51dbf9ae9d4c3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 21,
    "path": "GRWTSK/Geometry/Hodge/MoserMatrixHodge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e037e850cb3f2246847eb127fb97d64ab6562a76d6638d5c6b74102aae2c170b",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/MoserMatrixHodge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a07c422f-e143-80e9-6779-3064456e5e26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonic_iff_constant (x : Fin 7 → ℝ) :
    hodgeData.IsHarmonic0 x ↔ ∃ c : ℝ, x = fun _ => c := by
  change
    FiniteMatrixHodge.laplacian FiniteGraphCellular.Moser.incidence x = 0 ↔
      ∃ c : ℝ, x = fun _ => c
  rw [FiniteMatrixHodge.laplacian_eq_zero_iff_delta_eq_zero,
    FiniteMatrixHodge.delta_eq_coboundary]
  constructor
  · intro hx
    apply (FiniteGraphCellular.Moser.energy_eq_zero_iff_constant x).mp
    apply (FiniteGraphCellular.Moser.incidence.energy_eq_zero_iff_coboundary_eq_zero x).2
    exact hx
  · intro hx
    apply (FiniteGraphCellular.Moser.incidence.energy_eq_zero_iff_coboundary_eq_zero x).1
    exact (FiniteGraphCellular.Moser.energy_eq_zero_iff_constant x).2 hx

/-- Every constant Moser cochain is fixed by the harmonic projection condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/MoserMatrixHodge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/MoserMatrixHodge.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96509bd5e64bee2716186bac9f51dbf9ae9d4c3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
