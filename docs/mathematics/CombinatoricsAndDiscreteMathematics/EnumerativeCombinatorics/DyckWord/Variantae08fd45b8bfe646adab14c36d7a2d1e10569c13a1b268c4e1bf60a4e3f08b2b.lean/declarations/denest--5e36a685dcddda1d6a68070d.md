# denest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:970cb423e84e1e73364314b8d73c2a4efa7d41b24b20b169249327331ec97a27",
  "kind": "def",
  "lexical_name": "denest",
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
  "slug": "denest--5e36a685dcddda1d6a68070d",
  "source": {
    "blob": "ab1681b522b333865243d333276793972141df09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e36a685dcddda1d6a68070d05fe65b6fa4aed526b89599adaeab666d2fb8ef1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:970cb423e84e1e73364314b8d73c2a4efa7d41b24b20b169249327331ec97a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def denest (hn : p.IsNested) : DyckWord where
  toList := p.toList.dropLast.tail
  count_U_eq_count_D := by
    have := p.count_U_eq_count_D
    rw [← cons_tail_dropLast_concat hn.1, count_append, count_cons] at this
    simpa using this
  count_D_le_count_U i := by
    replace h := toList_ne_nil.mpr hn.1
    have l1 : p.toList.take 1 = [p.toList.head h] := by rcases p with - | - <;> tauto
    have l3 : p.toList.length - 1 = p.toList.length - 1 - 1 + 1 := by
      rcases p with - | ⟨s, ⟨- | ⟨t, r⟩⟩⟩
      · tauto
      · rename_i bal _
        cases s <;> simp at bal
      · tauto
    rw [← drop_one, take_drop, dropLast_eq_take, take_take]
    have ub : min (1 + i) (p.toList.length - 1) < p.toList.length :=
      (min_le_right _ p.toList.length.pred).trans_lt (Nat.pred_lt ((length_pos_iff.mpr h).ne'))
    have lb : 0 < min (1 + i) (p.toList.length - 1) := by omega
    have eq := hn.2 lb ub
    set j := min (1 + i) (p.toList.length - 1)
    rw [← (p.toList.take j).take_append_drop 1, count_append, count_append, take_take,
      min_eq_left (by omega), l1, head_eq_U] at eq
    simp only [count_singleton', ite_true, ite_false] at eq
    omega

variable (p) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab1681b522b333865243d333276793972141df09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
