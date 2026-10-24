# schnirelmannDensity_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60de38ef-1ff7-d9c3-d2e7-b2c4aafefdda",
  "kind": "lemma",
  "lexical_name": "schnirelmannDensity_eq_one_iff",
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
  "slug": "schnirelmanndensity-eq-one-iff--97119b99a1fb5ad8336b63d7",
  "source": {
    "blob": "037089457948f261c4f0ae7cfe22381ab1a971d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97119b99a1fb5ad8336b63d7be72e08c3f8eb6895c151effb971bd282eb97e74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60de38ef-1ff7-d9c3-d2e7-b2c4aafefdda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schnirelmannDensity_eq_one_iff : schnirelmannDensity A = 1 ↔ {0}ᶜ ⊆ A := by
  rw [le_antisymm_iff, and_iff_right schnirelmannDensity_le_one]
  constructor
  · rw [← not_imp_not, not_le]
    simp only [Set.not_subset, forall_exists_index, and_imp]
    intro x hx hx'
    apply (schnirelmannDensity_le_of_notMem hx').trans_lt
    simpa only [one_div, sub_lt_self_iff, inv_pos, Nat.cast_pos, pos_iff_ne_zero] using! hx
  · intro h
    refine le_ciInf fun ⟨n, hn⟩ => ?_
    rw [one_le_div (Nat.cast_pos.2 hn), Nat.cast_le, filter_true_of_mem, Nat.card_Ioc, Nat.sub_zero]
    rintro x hx
    exact h (mem_Ioc.1 hx).1.ne'

/-- The Schnirelmann density of `A` containing `0` is `1` if and only if `A` is the naturals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `037089457948f261c4f0ae7cfe22381ab1a971d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
