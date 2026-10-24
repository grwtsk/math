# ofUnitHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fd6969aa1e4507360e9b8d85a5fff294d3309ebfc9134c69f232f94f17228bd",
  "kind": "def",
  "lexical_name": "ofUnitHom",
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
  "slug": "ofunithom--b122227f77f97e119e4ec6e8",
  "source": {
    "blob": "b1946164d82bcbd41f15e053d24ac92b20fa6411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 154,
    "path": "GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b122227f77f97e119e4ec6e867224c1b4f873ab20f8020e34fad318df60a58c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fd6969aa1e4507360e9b8d85a5fff294d3309ebfc9134c69f232f94f17228bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofUnitHom (f : Rˣ →* R'ˣ) : MulChar R R' where
  toFun := by classical exact fun x => if hx : IsUnit x then f hx.unit else 0
  map_one' := by
    have h1 : (isUnit_one.unit : Rˣ) = 1 := Units.eq_iff.mp rfl
    simp only [h1, dif_pos, Units.val_eq_one, map_one, isUnit_one]
  map_mul' := by
    classical
      intro x y
      by_cases hx : IsUnit x
      · simp only [hx, IsUnit.mul_iff, true_and, dif_pos]
        by_cases hy : IsUnit y
        · simp only [hy, dif_pos]
          have hm : (IsUnit.mul_iff.mpr ⟨hx, hy⟩).unit = hx.unit * hy.unit := Units.eq_iff.mp rfl
          rw [hm, map_mul]
          norm_cast
        · simp only [hy, not_false_iff, dif_neg, mul_zero]
      · simp only [hx, IsUnit.mul_iff, false_and, not_false_iff, dif_neg, zero_mul]
  map_nonunit' := by
    intro a ha
    simp only [ha, not_false_iff, dif_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1946164d82bcbd41f15e053d24ac92b20fa6411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
