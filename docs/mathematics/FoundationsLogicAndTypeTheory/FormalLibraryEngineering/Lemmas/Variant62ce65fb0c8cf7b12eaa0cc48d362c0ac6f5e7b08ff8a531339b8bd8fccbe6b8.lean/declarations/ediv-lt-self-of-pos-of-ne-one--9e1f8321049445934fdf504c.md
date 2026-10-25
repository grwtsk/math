# ediv_lt_self_of_pos_of_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50abaab6-1d64-9d3f-9e44-21b4e02ded31",
  "kind": "theorem",
  "lexical_name": "ediv_lt_self_of_pos_of_ne_one",
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
  "slug": "ediv-lt-self-of-pos-of-ne-one--9e1f8321049445934fdf504c",
  "source": {
    "blob": "5bb2d722bba2a1af48bae7b7869bafe4599eeb43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2939,
    "line": 2929,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e1f8321049445934fdf504c7ceb60a25258f53252975ce74390eb60ff9ed7e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50abaab6-1d64-9d3f-9e44-21b4e02ded31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2929–2939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediv_lt_self_of_pos_of_ne_one {x y : Int} (hx : 0 < x) (hy : y ≠ 1) :
    x / y < x := by
  by_cases hy' : 1 < y
  · obtain ⟨xn, rfl⟩ := Int.eq_ofNat_of_zero_le (a := x) (by omega)
    obtain ⟨yn, rfl⟩ := Int.eq_ofNat_of_zero_le (a := y) (by omega)
    rw [← Int.natCast_ediv]
    norm_cast
    apply Nat.div_lt_self (by omega) (by omega)
  · have := @Int.ediv_nonpos_of_nonneg_of_nonpos x y (by omega) (by omega)
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean#L2929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2d722bba2a1af48bae7b7869bafe4599eeb43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
