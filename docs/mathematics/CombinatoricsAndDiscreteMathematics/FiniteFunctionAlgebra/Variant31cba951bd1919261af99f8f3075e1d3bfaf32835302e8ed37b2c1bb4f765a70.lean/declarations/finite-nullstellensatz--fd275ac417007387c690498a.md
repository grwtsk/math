# finite_nullstellensatz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b346342-0a49-b8e8-0eff-cab7689e7769",
  "kind": "theorem",
  "lexical_name": "finite_nullstellensatz",
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
  "slug": "finite-nullstellensatz--fd275ac417007387c690498a",
  "source": {
    "blob": "72755102c4e199d9358434e72efe00aa48266273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd275ac417007387c690498af667ea27a3acc5300698333bee60bab320e8f4a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b346342-0a49-b8e8-0eff-cab7689e7769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_nullstellensatz (J : FunctionIdeal X k) :
    vanishingIdeal (zeroLocus J) = J := by
  ext f
  constructor
  · intro hf
    have hPoint : ∀ x, pointMass x (f x) ∈ J := by
      intro x
      by_cases hfx : f x = 0
      · have hZero : pointMass x (f x) = (0 : X → k) := by
          funext y
          simp [pointMass, hfx]
        rw [hZero]
        exact J.zero_mem
      · have hxNot : x ∉ zeroLocus J := by
          intro hx
          exact hfx (hf x hx)
        have hwitness : ∃ g, g ∈ J ∧ g x ≠ 0 := by
          by_contra hnone
          have hxZero : x ∈ zeroLocus J := by
            intro g hg
            by_contra hgx
            exact hnone ⟨g, hg, hgx⟩
          exact hxNot hxZero
        rcases hwitness with ⟨g, hg, hgx⟩
        exact J.pointMass_mem_of_witness f g x hg hgx
    have hsum : (∑ x, pointMass x (f x)) ∈ J := J.sum_univ_mem _ hPoint
    rw [sum_pointMass] at hsum
    exact hsum
  · intro hf
    exact J.le_vanishing_zeroLocus hf

/-- An ideal is top when every coordinate function belongs to it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72755102c4e199d9358434e72efe00aa48266273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
