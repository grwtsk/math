# TopologicalSpace.PositiveCompacts.piIcc01

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ecad01a0f77d665e41474ee85f8008f975d07078fbb01d0b72db6b0ba891f51",
  "kind": "def",
  "lexical_name": "TopologicalSpace.PositiveCompacts.piIcc01",
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
  "slug": "topologicalspace-positivecompacts-piicc01--a19bc08a348baf0a50369582",
  "source": {
    "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a19bc08a348baf0a50369582ab0586ab615295d0a58d84c0c3c28da9959a813b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ecad01a0f77d665e41474ee85f8008f975d07078fbb01d0b72db6b0ba891f51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TopologicalSpace.PositiveCompacts.piIcc01 (ι : Type*) [Fintype ι] :
    PositiveCompacts (ι → ℝ) where
  carrier := pi univ fun _ => Icc 0 1
  isCompact' := isCompact_univ_pi fun _ => isCompact_Icc
  interior_nonempty' := by
    simp only [interior_pi_set, Set.toFinite, interior_Icc, univ_pi_nonempty_iff, nonempty_Ioo,
      imp_true_iff, zero_lt_one]
#align topological_space.positive_compacts.pi_Icc01 TopologicalSpace.PositiveCompacts.piIcc01

/-- The parallelepiped formed from the standard basis for `ι → ℝ` is `[0,1]^ι` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df05ce0845ed32a0bb7ac052cf509c7af6e46f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
