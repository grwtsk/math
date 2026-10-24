# isIsotypic_iff_isFullyInvariant_imp_bot_or_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f676d8b9-4422-5bff-fae6-af1ede1c28cc",
  "kind": "theorem",
  "lexical_name": "isIsotypic_iff_isFullyInvariant_imp_bot_or_top",
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
  "slug": "isisotypic-iff-isfullyinvariant-imp-bot-or-top--fdee840bb528a446347cb7e4",
  "source": {
    "blob": "bf45c238ccf34c0da62f03063df50e25acf3a9a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 244,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdee840bb528a446347cb7e46d1c3ae59820e43856dca0e0e7a2506f7bc828bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f676d8b9-4422-5bff-fae6-af1ede1c28cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIsotypic_iff_isFullyInvariant_imp_bot_or_top [IsSemisimpleModule R M] :
    IsIsotypic R M ↔ ∀ N : Submodule R M, N.IsFullyInvariant → N = ⊥ ∨ N = ⊤ := by
  refine ⟨fun h N hN ↦ (eq_bot_or_exists_simple_le N).imp_right fun ⟨S, le, _⟩ ↦ top_unique <|
    sSup_simples_eq_top R M ▸ sSup_le fun S' (_ : IsSimpleModule R S') ↦ ?_, fun h ↦ ?_⟩
  · nontriviality M
    have ⟨S, _⟩ := exists_simple_submodule R M
    have eq := (h _ (isFullyInvariant_isotypicComponent R M S)).resolve_left
      (bot_lt_isotypicComponent R M S).ne'
    exact .of_injective (.isotypicComponent R M S) _
      ((LinearEquiv.ofEq _ _ eq).trans Submodule.topEquiv).symm.injective
  · have ⟨e⟩ := h S S'
    have ⟨p, eq⟩ := extension_property _ S.subtype_injective (S'.subtype ∘ₗ e.symm)
    refine (le_trans ?_ (Submodule.map_mono le)).trans (Submodule.map_le_iff_le_comap.mpr (hN p))
    rw [← S.range_subtype, ← LinearMap.range_comp, eq, e.symm.range_comp, S'.range_subtype]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variantc7af0ddbb31be6b2c6bcb52f4886a351b0c78f3b35b3eeaacc69ee2820b3d4dd.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf45c238ccf34c0da62f03063df50e25acf3a9a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
