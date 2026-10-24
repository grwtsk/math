# lipschitzOnWith_iff_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:020824a4-b9c7-174a-b3cb-76fee13d8b39",
  "kind": "theorem",
  "lexical_name": "lipschitzOnWith_iff_restrict",
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
  "slug": "lipschitzonwith-iff-restrict--092001b88c52785c63dd74ee",
  "source": {
    "blob": "c3711dc8d9916e14eae7b57aad47b6ec9b6f7b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:092001b88c52785c63dd74eed04f571f4cd455b0383d8f0ad1fd90a0cb6f8801",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020824a4-b9c7-174a-b3cb-76fee13d8b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lipschitzOnWith_iff_restrict [PseudoEMetricSpace α] [PseudoEMetricSpace β] {K : ℝ≥0}
    {f : α → β} {s : Set α} : LipschitzOnWith K f s ↔ LipschitzWith K (s.restrict f) := by
  simp only [LipschitzOnWith, LipschitzWith, SetCoe.forall', restrict, Subtype.edist_eq]
#align lipschitz_on_with_iff_restrict lipschitzOnWith_iff_restrict

alias ⟨LipschitzOnWith.to_restrict, _⟩ := lipschitzOnWith_iff_restrict
#align lipschitz_on_with.to_restrict LipschitzOnWith.to_restrict

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3711dc8d9916e14eae7b57aad47b6ec9b6f7b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
