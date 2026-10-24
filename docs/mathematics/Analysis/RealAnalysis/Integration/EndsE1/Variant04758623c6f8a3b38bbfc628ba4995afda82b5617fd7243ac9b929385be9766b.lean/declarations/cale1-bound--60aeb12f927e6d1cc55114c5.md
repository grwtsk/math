# calE1_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42d08f61-7745-1da2-84d0-d4420640a6b9",
  "kind": "theorem",
  "lexical_name": "calE1_bound",
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
  "slug": "cale1-bound--60aeb12f927e6d1cc55114c5",
  "source": {
    "blob": "06e0481ca042ab1ec77c43cd04ae59deb1c863bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 896,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60aeb12f927e6d1cc55114c52def5a55d1402aa4af7bd3c5b69b2b2d497a62f3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42d08f61-7745-1da2-84d0-d4420640a6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem calE1_bound :
    ∃ C T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (B : ℝ) (ν : ℝ → ℝ), p.lam = lam → T₀ ≤ p.T →
      LocalHypsCoreW cϱ p F → p.L ≤ 2 * p.l → Continuous ν → NuBound p B ν →
      |calE1 p F ν| ≤ C * (p.L ^ 3 * B ^ 2 * p.l) := by
  obtain ⟨C, T₀, h⟩ := calE1_maj_bound cϱ lam
  refine ⟨C, max T₀ 1, fun p F B ν hplam hT hF hL2l hνc hν => ?_⟩
  have hT0 : T₀ ≤ p.T := (le_max_left _ _).trans hT
  have hTpos : 0 < p.T := by linarith [(le_max_right T₀ 1).trans hT]
  exact (abs_calE1_le_maj hνc hF hTpos).trans (h p F B ν hplam hT0 hF hL2l hνc hν)

end BoundsCor

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variant04758623c6f8a3b38bbfc628ba4995afda82b5617fd7243ac9b929385be9766b.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06e0481ca042ab1ec77c43cd04ae59deb1c863bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
