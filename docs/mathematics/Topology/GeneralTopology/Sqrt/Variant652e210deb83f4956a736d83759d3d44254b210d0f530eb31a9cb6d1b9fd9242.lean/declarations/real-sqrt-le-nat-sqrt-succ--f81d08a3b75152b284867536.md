# real_sqrt_le_nat_sqrt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7cfad67-6771-cc3e-6b30-1629706ddbf6",
  "kind": "theorem",
  "lexical_name": "real_sqrt_le_nat_sqrt_succ",
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
  "slug": "real-sqrt-le-nat-sqrt-succ--f81d08a3b75152b284867536",
  "source": {
    "blob": "5b2f0b61610e600eb2809bf5b8b126374ed20be1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 468,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81d08a3b75152b284867536b092e16ce69622cdc7992c49d105aa77c3222f8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7cfad67-6771-cc3e-6b30-1629706ddbf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_sqrt_le_nat_sqrt_succ {a : ℕ} : Real.sqrt ↑a ≤ Nat.sqrt a + 1 := by
  rw [Real.sqrt_le_iff]
  constructor
  · norm_cast
    apply zero_le
  · norm_cast
    exact le_of_lt (Nat.lt_succ_sqrt' a)
#align real.real_sqrt_le_nat_sqrt_succ Real.real_sqrt_le_nat_sqrt_succ

/-- Although the instance `IsROrC.toStarOrderedRing` exists, it is locked behind the
`ComplexOrder` scope because currently the order on `ℂ` is not enabled globally. But we
want `StarOrderedRing ℝ` to be available globally, so we include this instance separately.
In addition, providing this instance here makes it available earlier in the import
hierarchy; otherwise in order to access it we would need to import `Data.IsROrC.Basic` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b2f0b61610e600eb2809bf5b8b126374ed20be1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
