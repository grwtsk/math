# instIsIrreducible_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11cafc22-b851-6a93-1d51-97b5404603d6",
  "kind": "lemma",
  "lexical_name": "instIsIrreducible_aux₁",
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
  "slug": "instisirreducible-aux--24018e9ab8028e3ea4c6a5df",
  "source": {
    "blob": "c750192c7811a4fb2f6beb84906214afdb067372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 265,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24018e9ab8028e3ea4c6a5df213f35a0250b21e15fff2d012067fc58aa8b1100",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11cafc22-b851-6a93-1d51-97b5404603d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma instIsIrreducible_aux₁ (U : LieSubmodule K H (b.support ⊕ ι → K))
    (hU : ¬ U ≤ genWeightSpace (b.support ⊕ ι → K) 0) :
    ∃ i, v b i ∈ U := by
  suffices ∃ χ : H → K, χ ≠ 0 ∧ genWeightSpace U χ ≠ ⊥ by
    obtain ⟨χ, hχ₀, hχ⟩ := this
    obtain ⟨i, hi⟩ := instIsIrreducible_aux₀ χ hχ₀ hχ
    exact ⟨i, LieSubmodule.map_incl_le hi⟩
  contrapose! hU
  refine le_trans ?_ (map_genWeightSpace_le (f := U.incl))
  suffices genWeightSpace U (0 : H → K) = ⊤ by simp [this]
  have : ⨆ (χ : H → K), ⨆ (_ : χ ≠ 0), (⊥ : LieSubmodule K H U) = ⊥ := biSup_const ⟨1, one_ne_zero⟩
  rw [← iSup_genWeightSpace_eq_top K H U, iSup_split_single _ 0, biSup_congr hU, this, sup_bot_eq]

omit [P.IsRootSystem] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant39d5194f4e6b079f1d19dc347ddd661232aa09781f011fb6299cf10f64f11911.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c750192c7811a4fb2f6beb84906214afdb067372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
