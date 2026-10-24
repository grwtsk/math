# tendsto_zetaPartialReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36f18e09-35c4-2015-f801-f029a81fad18",
  "kind": "theorem",
  "lexical_name": "tendsto_zetaPartialReal",
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
  "slug": "tendsto-zetapartialreal--940d5460399701bb2115b574",
  "source": {
    "blob": "454ea44940cbfcae482ece2bbea4c0eb0a1e771d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:940d5460399701bb2115b57491e615211510d070e4ee479ae32b5f2ac05e52f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f18e09-35c4-2015-f801-f029a81fad18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_zetaPartialReal
    {σ : Real}
    (hσ : 1 < σ) :
    Filter.Tendsto
      (fun N : Nat => zetaPartialReal σ N)
      Filter.atTop
      (nhds (zetaRealHalfPlane σ)) := by
  have hs : HasSum (fun n : Nat => posWeightReal σ n) (zetaRealHalfPlane σ) :=
    (summable_posWeightReal_of_one_lt hσ).hasSum
  have ht := hs.tendsto_sum_nat
  have heq :
      (fun N : Nat => zetaPartialReal σ N) =
        fun N : Nat => ∑ n ∈ Finset.range (N + 1), posWeightReal σ n := by
    funext N
    exact zetaPartialReal_eq_range_sum σ N
  rw [heq]
  exact ht.comp (Filter.tendsto_add_atTop_nat 1)

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaPartialSums/Variant4bff6a8fcfa9b6c0762a084161d5e2ce32680bf285100f79ae9a7a24317c598b.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454ea44940cbfcae482ece2bbea4c0eb0a1e771d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
