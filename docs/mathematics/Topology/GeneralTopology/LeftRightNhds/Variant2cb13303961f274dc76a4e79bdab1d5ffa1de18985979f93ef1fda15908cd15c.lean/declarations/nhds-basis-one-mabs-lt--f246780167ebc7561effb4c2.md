# nhds_basis_one_mabs_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:753b9388-b470-ece3-d2d9-7bdae5a02b89",
  "kind": "theorem",
  "lexical_name": "nhds_basis_one_mabs_lt",
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
  "slug": "nhds-basis-one-mabs-lt--f246780167ebc7561effb4c2",
  "source": {
    "blob": "d7b16aa2e126a28d590b4725543080800f86dd9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 467,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f246780167ebc7561effb4c249d18866d5090b95b4c93d23a469c98ce0bdaac2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:753b9388-b470-ece3-d2d9-7bdae5a02b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_basis_one_mabs_lt [NoMaxOrder α] :
    (𝓝 (1 : α)).HasBasis (fun ε : α => (1 : α) < ε) fun ε => { b | |b|ₘ < ε } := by
  simpa using nhds_basis_mabs_div_lt (1 : α)

/-- If `a > 1`, then open intervals `(a / ε, aε)`, `1 < ε ≤ a`,
form a basis of neighborhoods of `a`.

This upper bound for `ε` guarantees that all elements of these intervals are greater than one. -/
@[to_additive /-- If `a` is positive, then the intervals `(a - ε, a + ε)`, `0 < ε ≤ a`,
form a basis of neighborhoods of `a`.

This upper bound for `ε` guarantees that all elements of these intervals are positive. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b16aa2e126a28d590b4725543080800f86dd9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
