# mutuallySingular_compProd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2de093fc-b3b5-dde8-b1f9-51e00f3e3a00",
  "kind": "lemma",
  "lexical_name": "mutuallySingular_compProd_iff",
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
  "slug": "mutuallysingular-compprod-iff--8d64ad24aa0302d1d27119a3",
  "source": {
    "blob": "cb1a1ffc261f11f7013db59c5350c25427671bba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 359,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d64ad24aa0302d1d27119a33ab89665e0a4702897fa436310381cda367d1193",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2de093fc-b3b5-dde8-b1f9-51e00f3e3a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mutuallySingular_compProd_iff [SigmaFinite μ] [SigmaFinite ν] :
    μ ⊗ₘ κ ⟂ₘ ν ⊗ₘ η ↔ ∀ ξ, SFinite ξ → ξ ≪ μ → ξ ≪ ν → ξ ⊗ₘ κ ⟂ₘ ξ ⊗ₘ η := by
  conv_lhs => rw [μ.haveLebesgueDecomposition_add ν]
  rw [compProd_add_left, MutuallySingular.add_left_iff]
  simp only [(mutuallySingular_singularPart μ ν).compProd_of_left κ η, true_and]
  rw [(withDensity_absolutelyContinuous ν (μ.rnDeriv ν)).mutuallySingular_compProd_iff]
  refine ⟨fun h ξ hξ hξμ hξν ↦ ?_, fun h ↦ ?_⟩
  · exact h.mono_ac ((hξμ.withDensity_rnDeriv hξν).compProd_left _)
      ((hξμ.withDensity_rnDeriv hξν).compProd_left _)
  · refine h _ ?_ ?_ ?_
    · infer_instance
    · exact absolutelyContinuous_of_le (withDensity_rnDeriv_le _ _)
    · exact withDensity_absolutelyContinuous ν (μ.rnDeriv ν)

end MutuallySingular

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1a1ffc261f11f7013db59c5350c25427671bba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
