# native_series_second_derivative_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0536ba0f-2200-3ab0-ba32-1fa028ed3b91",
  "kind": "theorem",
  "lexical_name": "native_series_second_derivative_two",
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
  "slug": "native-series-second-derivative-two--ad45108a699135b6c25f7725",
  "source": {
    "blob": "ba82f358274e014742bc78ca337b98643d6ab842",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad45108a699135b6c25f7725a6ab5a343c967a9377d7d5b7381f36b170521de2",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0536ba0f-2200-3ab0-ba32-1fa028ed3b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_series_second_derivative_two :
    iteratedDeriv 2 (LSeries (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 =
      (dirichletMoment 2 : ℂ) := by
  have hab : LSeries.abscissaOfAbsConv (fun n : ℕ ↦ (vonMangoldt n : ℂ)) <
      (2 : ℂ).re := lt_of_le_of_lt mangoldt_abscissa_le_one
    (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  rw [LSeries_iteratedDeriv 2 hab, log_moment_series_eq]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceNativeDirichletMoments/Variante6f2f10d830ebda893e69df86fd60b390b10932b952efe461f63abff44272f2c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba82f358274e014742bc78ca337b98643d6ab842` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
