# actualVaughanCenteredColumn_prefix_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44d21871-e6f1-63b1-4de4-5391749a8b35",
  "kind": "theorem",
  "lexical_name": "actualVaughanCenteredColumn_prefix_abs_le",
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
  "slug": "actualvaughancenteredcolumn-prefix-abs-le--8c42420d73333054e3395c9c",
  "source": {
    "blob": "9da132ac8616fa9a1d183545035c6b55ff3af119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant0f2be5371ba41ca73655149c02a36c5fc186f44e14550f996bcee308cfb5d79f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c42420d73333054e3395c9c640f328d85d17382bf6dd0851b4e57d6d32ceaa4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant0f2be5371ba41ca73655149c02a36c5fc186f44e14550f996bcee308cfb5d79f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d21871-e6f1-63b1-4de4-5391749a8b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualVaughanCenteredColumn_prefix_abs_le {A : ℝ} (hA : 1 ≤ A) (k : ℕ)
    (hk : vaughanCutoff A ≤ k) :
    |∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n| ≤
      (vaughanCutoff A : ℝ) - 1 :=
  actualCenteredBeta_interval_abs_le_cutoff_sub_one _ _ _
    (vaughanCutoff_pos A hA) le_rfl hk

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant0f2be5371ba41ca73655149c02a36c5fc186f44e14550f996bcee308cfb5d79f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualCenteredColumnUnitRefinementSourceNative01/Variant0f2be5371ba41ca73655149c02a36c5fc186f44e14550f996bcee308cfb5d79f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da132ac8616fa9a1d183545035c6b55ff3af119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
