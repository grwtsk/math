# alternatingGroup_le_of_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:287f444f-4329-6b92-fcd6-99eaafd7d75e",
  "kind": "theorem",
  "lexical_name": "alternatingGroup_le_of_normal",
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
  "slug": "alternatinggroup-le-of-normal--f24cb797b012c7e630c20630",
  "source": {
    "blob": "e9c4cc16fc533d74fd6d9ce34d436f1d1024412e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/Algebra/GroupTheory/Simple/Variant1f50650921d9af9176de68527eaa32f0dc75454e6614cd543883384953c20fec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f24cb797b012c7e630c20630ee96729de815dbd29c65c3b1a5f6e831d537ec6b",
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

Occurrence: `result:287f444f-4329-6b92-fcd6-99eaafd7d75e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alternatingGroup_le_of_normal
    {α : Type*} [DecidableEq α] [Fintype α] (hα : 5 ≤ Nat.card α)
    {N : Subgroup (Perm α)} [N.Normal] (ntN : Nontrivial N) :
    alternatingGroup α ≤ N := by
  rw [← alternatingGroup.commutator_perm_eq hα]
  have : IsPreprimitive (Perm α) (Set.powersetCard α 2) := by
    apply Set.powersetCard.isPreprimitive_perm <;> grind
  classical
  apply iwasawaStructure_two.commutator_le
  exact fixedPoints_ne_univ_of_faithfulSMul (by norm_num) (by grind)

end Equiv.Perm

namespace alternatingGroup

variable {α : Type*} [DecidableEq α] [Fintype α]

/-- The Iwasawa structure of `alternatingGroup α` acting on `Set.powersetCard α 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Simple/Variant1f50650921d9af9176de68527eaa32f0dc75454e6614cd543883384953c20fec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Simple/Variant1f50650921d9af9176de68527eaa32f0dc75454e6614cd543883384953c20fec.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c4cc16fc533d74fd6d9ce34d436f1d1024412e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
