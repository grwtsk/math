# cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8058ef4-6e86-332e-458d-de420eab57a8",
  "kind": "theorem",
  "lexical_name": "cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff",
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
  "slug": "cylinder-longestprefix-eq-of-longestprefix-lt-firstdiff--3bd5eca59833cd209be2da0d",
  "source": {
    "blob": "ec4e50ee38c606a26670c8224108b37944880ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 577,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bd5eca59833cd209be2da0d42a36a68de9da3dbbbe3cdceaeee840df6ad9531",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8058ef4-6e86-332e-458d-de420eab57a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff {x y : ∀ n, E n}
    {s : Set (∀ n, E n)} (hs : IsClosed s) (hne : s.Nonempty)
    (H : longestPrefix x s < firstDiff x y) (xs : x ∉ s) (ys : y ∉ s) :
    cylinder x (longestPrefix x s) = cylinder y (longestPrefix y s) := by
  have l_eq : longestPrefix y s = longestPrefix x s := by
    rcases lt_trichotomy (longestPrefix y s) (longestPrefix x s) with (L | L | L)
    · have Ax : (s ∩ cylinder x (longestPrefix x s)).Nonempty :=
        inter_cylinder_longestPrefix_nonempty hs hne x
      have Z := disjoint_cylinder_of_longestPrefix_lt hs ys L
      rw [firstDiff_comm] at H
      rw [cylinder_eq_cylinder_of_le_firstDiff _ _ H.le] at Z
      exact (Ax.not_disjoint Z).elim
    · exact L
    · have Ay : (s ∩ cylinder y (longestPrefix y s)).Nonempty :=
        inter_cylinder_longestPrefix_nonempty hs hne y
      have A'y : (s ∩ cylinder y (longestPrefix x s).succ).Nonempty :=
        Ay.mono (inter_subset_inter_right s (cylinder_anti _ L))
      have Z := disjoint_cylinder_of_longestPrefix_lt hs xs (Nat.lt_succ_self _)
      rw [cylinder_eq_cylinder_of_le_firstDiff _ _ H] at Z
      exact (A'y.not_disjoint Z).elim
  rw [l_eq, ← mem_cylinder_iff_eq]
  exact cylinder_anti y H.le (mem_cylinder_firstDiff x y)
#align pi_nat.cylinder_longest_prefix_eq_of_longest_prefix_lt_first_diff PiNat.cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff

/-- Given a closed nonempty subset `s` of `Π (n : ℕ), E n`, there exists a Lipschitz retraction
onto this set, i.e., a Lipschitz map with range equal to `s`, equal to the identity on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec4e50ee38c606a26670c8224108b37944880ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
