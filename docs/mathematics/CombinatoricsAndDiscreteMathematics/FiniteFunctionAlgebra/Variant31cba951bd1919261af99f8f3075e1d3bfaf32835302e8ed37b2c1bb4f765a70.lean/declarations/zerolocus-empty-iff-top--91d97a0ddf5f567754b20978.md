# zeroLocus_empty_iff_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ada20e20-3cfb-b972-5058-2e33c2e3dff8",
  "kind": "theorem",
  "lexical_name": "zeroLocus_empty_iff_top",
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
  "slug": "zerolocus-empty-iff-top--91d97a0ddf5f567754b20978",
  "source": {
    "blob": "72755102c4e199d9358434e72efe00aa48266273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 178,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91d97a0ddf5f567754b20978afa0a72dee66841af076b910f7b5c30ec617df7f",
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

Occurrence: `result:ada20e20-3cfb-b972-5058-2e33c2e3dff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroLocus_empty_iff_top (J : FunctionIdeal X k) :
    zeroLocus J = ∅ ↔ J.IsTop := by
  constructor
  · intro hEmpty f
    have hf : f ∈ vanishingIdeal (zeroLocus J) := by
      intro x hx
      have : x ∈ (∅ : Set X) := by
        simpa only [hEmpty] using hx
      exact this.elim
    rw [J.finite_nullstellensatz] at hf
    exact hf
  · intro hTop
    apply Set.not_nonempty_iff_eq_empty.mp
    rintro ⟨x, hx⟩
    have hOne : (1 : X → k) ∈ J := hTop 1
    have : (1 : k) = 0 := hx 1 hOne
    exact one_ne_zero this

/-- Satisfiability is nonemptiness of the represented model locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFunctionAlgebra/Variant31cba951bd1919261af99f8f3075e1d3bfaf32835302e8ed37b2c1bb4f765a70.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72755102c4e199d9358434e72efe00aa48266273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
