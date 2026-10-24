# no_pure_dirichlet_expansion_of_nonunit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a02ad0d-b8a7-a88a-b654-36dc9e1d1edf",
  "kind": "theorem",
  "lexical_name": "no_pure_dirichlet_expansion_of_nonunit",
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
  "slug": "no-pure-dirichlet-expansion-of-nonunit--5f9bc178b58534f224bd6c76",
  "source": {
    "blob": "f4df2cbea5643fb95614ac2ed9b19ed9daaac428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 222,
    "path": "GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f9bc178b58534f224bd6c76cff15e481b4a2b0bba509d9c5df42d01681f8664",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a02ad0d-b8a7-a88a-b654-36dc9e1d1edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_pure_dirichlet_expansion_of_nonunit (q : ℕ) [NeZero q]
    (b : ZMod q) (hb : ¬ IsUnit b) :
    ¬ ∃ coefficient : DirichletCharacter ℂ q → ℂ,
      ∀ a : ZMod q,
        additiveResidueSelector q a b =
          ∑ χ : DirichletCharacter ℂ q, coefficient χ * χ a := by
  rintro ⟨coefficient, hrepresentation⟩
  have h := hrepresentation b
  rw [additiveResidueSelector_eq_indicator, if_pos rfl,
      dirichlet_sum_zero_of_nonunit q b hb coefficient] at h
  exact one_ne_zero h

/-- Every Farey right numerator admits the exact unit/nonunit split,
without presuming invertibility of that coordinate modulo q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/FareyResidueChannelDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4df2cbea5643fb95614ac2ed9b19ed9daaac428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
