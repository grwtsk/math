# actualResidual_retained_pointwise_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15ec7384-a598-1202-4abb-98cef1544d39",
  "kind": "theorem",
  "lexical_name": "actualResidual_retained_pointwise_comparison",
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
  "slug": "actualresidual-retained-pointwise-comparison--17e619e76805d77fd3884d58",
  "source": {
    "blob": "8d6a19587519e8e9e4058b10d24c51e8154663f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variantfc940d99402d84beb888a20b5994c06c74c6681d0643a6517cf5c2f3b9b8c236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17e619e76805d77fd3884d5885baeeda991e57766691bcf7477a80aac2aaedef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variantfc940d99402d84beb888a20b5994c06c74c6681d0643a6517cf5c2f3b9b8c236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15ec7384-a598-1202-4abb-98cef1544d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_retained_pointwise_comparison :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 91 ≤ A →
      mertensResidual A ≤ actualCriticalRetainedRemainder A + 3 + C_F +
        actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  exact actualResidual_le_retained_and_boundaries hA (hF A (by linarith))

end
end FormalResearch.RiemannHypothesis.RootActualCriticalWorkComparison
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variantfc940d99402d84beb888a20b5994c06c74c6681d0643a6517cf5c2f3b9b8c236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalWorkComparison/Variantfc940d99402d84beb888a20b5994c06c74c6681d0643a6517cf5c2f3b9b8c236.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6a19587519e8e9e4058b10d24c51e8154663f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
