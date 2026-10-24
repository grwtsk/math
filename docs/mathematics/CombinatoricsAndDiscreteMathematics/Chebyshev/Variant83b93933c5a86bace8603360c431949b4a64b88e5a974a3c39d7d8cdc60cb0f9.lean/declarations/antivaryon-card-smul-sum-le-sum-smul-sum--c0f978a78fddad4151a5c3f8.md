# AntivaryOn.card_smul_sum_le_sum_smul_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a505600f-f6b4-77fe-0dcd-caa5e92cb1c4",
  "kind": "theorem",
  "lexical_name": "AntivaryOn.card_smul_sum_le_sum_smul_sum",
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
  "slug": "antivaryon-card-smul-sum-le-sum-smul-sum--c0f978a78fddad4151a5c3f8",
  "source": {
    "blob": "2249ff1dd5074f750395340eef02d3804af87b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0f978a78fddad4151a5c3f8d0f3bcd3d53e9a21d290aaa737662b56f6eed9f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a505600f-f6b4-77fe-0dcd-caa5e92cb1c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntivaryOn.card_smul_sum_le_sum_smul_sum (hfg : AntivaryOn f g s) :
    #s • ∑ i ∈ s, f i • g i ≤ (∑ i ∈ s, f i) • ∑ i ∈ s, g i :=
  hfg.dual_right.sum_smul_sum_le_card_smul_sum

variable [Fintype ι]

/-- **Chebyshev's Sum Inequality**: When `f` and `g` monovary together (e.g. they are both
monotone/antitone), the scalar product of their sum is less than the size of the set times their
scalar product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2249ff1dd5074f750395340eef02d3804af87b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
