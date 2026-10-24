# complexWeight_completely_multiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4324237a-7cf0-9dad-9686-436cecd93960",
  "kind": "theorem",
  "lexical_name": "complexWeight_completely_multiplicative",
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
  "slug": "complexweight-completely-multiplicative--41864528557d17f695a8947a",
  "source": {
    "blob": "4209829870befe3f863256bb57f97c686a696e8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 91,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41864528557d17f695a8947ad1d37ec3a5097806bbdcef7d65e3077f7d3c0de0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4324237a-7cf0-9dad-9686-436cecd93960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexWeight_completely_multiplicative
    (s : Complex) :
    Folder.Rebuild.NumberTheory.IsCompletelyMultiplicative
      (fun n : Nat => complexWeight s n) := by
  constructor
  · exact complexWeight_one s
  · intro a b
    by_cases ha : a = 0
    · subst a
      simp [complexWeight]
    · by_cases hb : b = 0
      · subst b
        simp [complexWeight]
      · exact complexWeight_mul s (Nat.pos_of_ne_zero ha) (Nat.pos_of_ne_zero hb)

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4209829870befe3f863256bb57f97c686a696e8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
