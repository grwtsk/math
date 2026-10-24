# Dense.exists_seq_strictAnti_tendsto_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a422d3bd-0775-592a-a9e2-81e9bdc61510",
  "kind": "theorem",
  "lexical_name": "Dense.exists_seq_strictAnti_tendsto_of_lt",
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
  "slug": "dense-exists-seq-strictanti-tendsto-of-lt--09dd9015a687e6feaf21ae42",
  "source": {
    "blob": "942b60699816bcfa05ef0bc486065ffb784bdefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 310,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09dd9015a687e6feaf21ae42d3f89e2ed5918722ad10805523ef0434c32df517",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a422d3bd-0775-592a-a9e2-81e9bdc61510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.exists_seq_strictAnti_tendsto_of_lt [DenselyOrdered α] [FirstCountableTopology α]
    {s : Set α} (hs : Dense s) {x y : α} (hy : x < y) :
    ∃ u : ℕ → α, StrictAnti u ∧ (∀ n, u n ∈ (Ioo x y ∩ s)) ∧ Tendsto u atTop (𝓝 x) := by
  simpa using hs.exists_seq_strictMono_tendsto_of_lt (α := αᵒᵈ) (OrderDual.toDual_lt_toDual.2 hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `942b60699816bcfa05ef0bc486065ffb784bdefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
