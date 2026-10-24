# multiplicative_of_residue_invariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce33e756-3493-17df-612c-54f685c49325",
  "kind": "theorem",
  "lexical_name": "multiplicative_of_residue_invariants",
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
  "slug": "multiplicative-of-residue-invariants--5e89d2ca59a4cf4fedd14ee1",
  "source": {
    "blob": "7817aa4f3c54605b05e5da40d67daa3cc71c8129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e89d2ca59a4cf4fedd14ee12782ad6e9b0c8d007fd2d0d161c65001fb05615d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce33e756-3493-17df-612c-54f685c49325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicative_of_residue_invariants (W : WeierstrassCurve R)
    (hΔ : IsLocalRing.residue R W.Δ = 0)
    (hc4 : IsLocalRing.residue R W.c₄ ≠ 0) :
    WeierstrassCurve.HasMultiplicativeReduction R (W.baseChange K) := by
  letI : WeierstrassCurve.IsIntegral R (W.baseChange K) := ⟨⟨W, rfl⟩⟩
  have hv4 : ν (W.baseChange K).c₄ = 1 := by
    simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_c₄] using
      valuation_eq_one_of_residue_ne_zero R (K := K) W.c₄ hc4
  have hvΔ : ν (W.baseChange K).Δ < 1 := by
    simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using
      valuation_lt_one_of_residue_zero R (K := K) W.Δ hΔ
  exact { toIsMinimal := minimal_of_c4_unit R _ hv4,
    badReduction := hvΔ, multiplicativeReduction := hv4 }

end FreyDVR

/-- The displayed integral tuple transported along Z → R, not a newly chosen
minimal model or an abstract isomorphic curve. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyDVRReduction.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7817aa4f3c54605b05e5da40d67daa3cc71c8129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
