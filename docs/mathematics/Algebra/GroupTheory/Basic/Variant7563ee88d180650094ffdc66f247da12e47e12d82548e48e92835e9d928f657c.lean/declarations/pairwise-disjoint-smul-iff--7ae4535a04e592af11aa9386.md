# pairwise_disjoint_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52e861bb-b4d6-2ae7-b7aa-20dc8ab8d6f7",
  "kind": "lemma",
  "lexical_name": "pairwise_disjoint_smul_iff",
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
  "slug": "pairwise-disjoint-smul-iff--7ae4535a04e592af11aa9386",
  "source": {
    "blob": "d5357f877f67f85bc815733cefd7a4551524f285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 325,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ae4535a04e592af11aa938680b5b6aa1f066bf6495ecc7da49b2884483f05af",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e861bb-b4d6-2ae7-b7aa-20dc8ab8d6f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma pairwise_disjoint_smul_iff :
    Pairwise (Disjoint on fun a : α ↦ a • s) ↔ ∀ a : α, (a • s ∩ s).Nonempty → a = 1 := by
  simp_rw [Pairwise, disjoint_smul_set_right, ← mul_smul,
    ← not_imp_not (b := _ ≠ _), not_ne_iff, not_disjoint_iff_nonempty_inter]
  exact ⟨fun h a ↦ by simpa using @h a 1,
    fun h i j ne ↦ by simpa [inv_mul_eq_one, eq_comm] using h _ ne⟩

/-- Any intersection of translates of two sets `s` and `t` can be covered by a single translate of
`(s⁻¹ * s) ∩ (t⁻¹ * t)`.

This is useful to show that the intersection of approximate subgroups is an approximate subgroup. -/
@[to_additive
/-- Any intersection of translates of two sets `s` and `t` can be covered by a single translate of
`(-s + s) ∩ (-t + t)`.

This is useful to show that the intersection of approximate subgroups is an approximate subgroup.
-/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5357f877f67f85bc815733cefd7a4551524f285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
