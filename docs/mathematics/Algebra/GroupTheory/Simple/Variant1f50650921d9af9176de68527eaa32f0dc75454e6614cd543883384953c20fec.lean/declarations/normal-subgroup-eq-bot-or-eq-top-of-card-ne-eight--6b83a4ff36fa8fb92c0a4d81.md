# normal_subgroup_eq_bot_or_eq_top_of_card_ne_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da97e1c5-9c3d-5915-5f5b-d85810c7d18d",
  "kind": "theorem",
  "lexical_name": "normal_subgroup_eq_bot_or_eq_top_of_card_ne_eight",
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
  "slug": "normal-subgroup-eq-bot-or-eq-top-of-card-ne-eight--6b83a4ff36fa8fb92c0a4d81",
  "source": {
    "blob": "e9c4cc16fc533d74fd6d9ce34d436f1d1024412e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 187,
    "path": "GRWTSK/Algebra/GroupTheory/Simple/Variant1f50650921d9af9176de68527eaa32f0dc75454e6614cd543883384953c20fec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b83a4ff36fa8fb92c0a4d81ca57caea3080e3b83454e116bce65f12e74df496",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Simple/Variant1f50650921d9af9176de68527eaa32f0dc75454e6614cd543883384953c20fec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da97e1c5-9c3d-5915-5f5b-d85810c7d18d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_subgroup_eq_bot_or_eq_top_of_card_ne_eight
    (hα : 5 ≤ Nat.card α) (hα' : Nat.card α ≠ 8)
    {N : Subgroup (alternatingGroup α)} [N.Normal] :
    N = ⊥ ∨ N = ⊤ := by
  rw [or_iff_not_imp_left, ← ne_eq, ← Subgroup.nontrivial_iff_ne_bot]
  intro hN
  have : IsPreprimitive (alternatingGroup α) (Set.powersetCard α 4) := by
    apply Set.powersetCard.isPreprimitive_alternatingGroup (by norm_num) <;> grind
  rw [eq_top_iff, ← commutator_alternatingGroup_eq_top hα]
  apply (iwasawaStructure_four hα).commutator_le
  exact fixedPoints_ne_univ_of_faithfulSMul (by norm_num) (by grind)

/- If `α` has at least 5 elements,
then the only nontrivial normal subgroup of `alternatingGroup α`
is `⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Simple/Variant1f50650921d9af9176de68527eaa32f0dc75454e6614cd543883384953c20fec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Simple/Variant1f50650921d9af9176de68527eaa32f0dc75454e6614cd543883384953c20fec.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c4cc16fc533d74fd6d9ce34d436f1d1024412e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
