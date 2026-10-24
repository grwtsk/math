# inseparable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05931622-5f3a-dd88-bf0a-c3fb02de93b9",
  "kind": "theorem",
  "lexical_name": "inseparable_iff",
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
  "slug": "inseparable-iff--5bee5c9c3c44769c8535ccc0",
  "source": {
    "blob": "6d82b893419269f80478c8a70e46cecb48ca8b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bee5c9c3c44769c8535ccc08edd6665727a5629cd1d08273a308bef1a49d30a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05931622-5f3a-dd88-bf0a-c3fb02de93b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inseparable_iff : Inseparable x y ↔ edist x y = 0 := by
  simp [inseparable_iff_mem_closure, mem_closure_iff, edist_comm, forall_lt_iff_le']

alias ⟨_root_.Inseparable.edist_eq_zero, _⟩ := EMetric.inseparable_iff

-- see Note [nolint_ge]
/-- In a pseudoemetric space, Cauchy sequences are characterized by the fact that, eventually,
the pseudoedistance between its elements is arbitrarily small -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d82b893419269f80478c8a70e46cecb48ca8b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
