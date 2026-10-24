# toInt?_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74238a14-9470-1777-6c5b-50dbfdbe6fe5",
  "kind": "theorem",
  "lexical_name": "toInt?_eq_some_iff",
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
  "slug": "toint-eq-some-iff--e1b29c0282908d74d23432ec",
  "source": {
    "blob": "0cff66090cce4a1ea057e08ff7e0d29c09138b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1b29c0282908d74d23432ecc2d7b3459bd16fcd154f8980cd3f9e691623f8d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74238a14-9470-1777-6c5b-50dbfdbe6fe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem toInt?_eq_some_iff {s : String.Slice} {a : Int} :
    s.toInt? = some a ↔ (∃ b, s.toNat? = some b ∧ a = (b : Int)) ∨ ∃ t, s.copy = "-" ++ t ∧ ∃ b, t.toNat? = some b ∧ a = -(b : Int) := by
  rw [toInt?]
  match h : s.dropPrefix? '-' with
  | some rest =>
    have heq := eq_append_of_dropPrefix?_char_eq_some h
    suffices s.toNat? = none by
      simp only [Option.map_eq_some_iff, this, reduceCtorEq, false_and, exists_const, heq,
        ↓Char.isValue, String.reduceSingleton, append_right_inj, exists_eq_left', toNat?_copy,
        false_or]
      cases rest.toNat? <;> simp [Int.negOfNat_eq, eq_comm]
    exact toNat?_eq_none (by simp [← Bool.not_eq_true, isNat_iff, heq])
  | none =>
    simp only [↓Char.isValue, dropPrefix?_eq_none_iff, startsWith_char_eq_false_iff_forall_append,
      String.reduceSingleton, ne_eq] at h
    simp only [Option.map_eq_some_iff, Int.ofNat_eq_natCast, eq_comm (a := a), iff_self_or,
      forall_exists_index, and_imp]
    exact fun t ht => (h _ ht).elim

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToInt/Variante30caff41768cb535754b1d33842b9fff3eaea84ad0086142e7ccb25c67bd984.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cff66090cce4a1ea057e08ff7e0d29c09138b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
