# schnirelmannDensity_le_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f8d5575-421a-1888-a344-1d09183da844",
  "kind": "lemma",
  "lexical_name": "schnirelmannDensity_le_of_notMem",
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
  "slug": "schnirelmanndensity-le-of-notmem--9b16e0f37180c19a1cad66bc",
  "source": {
    "blob": "037089457948f261c4f0ae7cfe22381ab1a971d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b16e0f37180c19a1cad66bcb410b0f16787737c079374c661b7e75885fd483d",
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

Occurrence: `result:2f8d5575-421a-1888-a344-1d09183da844`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schnirelmannDensity_le_of_notMem {k : ℕ} (hk : k ∉ A) :
    schnirelmannDensity A ≤ 1 - (k⁻¹ : ℝ) := by
  rcases k.eq_zero_or_pos with rfl | hk'
  · simpa using schnirelmannDensity_le_one
  apply schnirelmannDensity_le_of_le k hk'.ne'
  rw [← one_div, one_sub_div (Nat.cast_pos.2 hk').ne']
  gcongr
  rw [← Nat.cast_pred hk', Nat.cast_le]
  suffices {a ∈ Ioc 0 k | a ∈ A} ⊆ Ioo 0 k from (card_le_card this).trans_eq (by simp)
  rw [← Ioo_insert_right hk', filter_insert, ite_eq_right hk]
  exact filter_subset _ _

/-- The Schnirelmann density of a set not containing `1` is `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Schnirelmann/Variantb934bff4954d8965afd763e60534efc8bda6b2523dc8fa4b54e727c7b3269128.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `037089457948f261c4f0ae7cfe22381ab1a971d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
