# prefix_take_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:827e3412-8bd8-a984-0afa-4aed3a956899",
  "kind": "theorem",
  "lexical_name": "prefix_take_le_iff",
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
  "slug": "prefix-take-le-iff--ac4fdd8647dff59e2cceb672",
  "source": {
    "blob": "12143e27334cd4a830fa22f4e8cabba5276fcec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac4fdd8647dff59e2cceb67244df870cc8a89fa2895fc5e363a9ac901cd3df78",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:827e3412-8bd8-a984-0afa-4aed3a956899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem prefix_take_le_iff {xs : List α} (hm : i < xs.length) :
    xs.take i <+: xs.take j ↔ i ≤ j := by
  simp only [prefix_iff_eq_take, length_take]
  induction i generalizing xs j with
  | zero => simp [Nat.min_eq_left, Nat.zero_le, take]
  | succ i IH =>
    cases xs with
    | nil => simp_all
    | cons x xs =>
      cases j with
      | zero =>
        simp
      | succ j =>
        simp only [length_cons, Nat.add_lt_add_iff_right] at hm
        simp [← @IH j xs hm, Nat.min_eq_left, Nat.le_of_lt hm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variantb8f05719321e9b5ceb3d765a4c5bfee75632a6ed96264fdd6697f95cadda2587.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12143e27334cd4a830fa22f4e8cabba5276fcec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
