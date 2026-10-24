# harmonicShortMobiusSum_eq_mertensIncrement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e4a3967-e3de-b9bd-9b48-933a6c48164c",
  "kind": "theorem",
  "lexical_name": "harmonicShortMobiusSum_eq_mertensIncrement",
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
  "slug": "harmonicshortmobiussum-eq-mertensincrement--684356f7cac26eb08d7d26b7",
  "source": {
    "blob": "7f98a495095c2f601f2986fd610b45d3f024bcfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:684356f7cac26eb08d7d26b788766b07680d4ff16296b680fbeac26da744b467",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e4a3967-e3de-b9bd-9b48-933a6c48164c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicShortMobiusSum_eq_mertensIncrement
    (j t n a : ℕ) :
    harmonicShortMobiusSum j t n a =
      coreNonboundaryMertensIncrement j t n a := by
  have hprefix :=
    mertensPrefixReal_add_interval
      (a + harmonicShiftLower j t) n
  have hsum :
      (∑ k ∈ Finset.range n,
        moebiusReal
          ((a + harmonicShiftLower j t) + k + 1)) =
        harmonicShortMobiusSum j t n a := by
    unfold harmonicShortMobiusSum
    apply Finset.sum_congr rfl
    intro k _hk
    congr 2 <;> omega
  rw [hsum] at hprefix
  unfold coreNonboundaryMertensIncrement
  linarith

/-- One exact signed arithmetic cell.  No absolute value is introduced: the
Möbius base sign, Mertens increment, and Abel selector remain multiplied before
any summation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundarySignedMertensCells.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f98a495095c2f601f2986fd610b45d3f024bcfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
