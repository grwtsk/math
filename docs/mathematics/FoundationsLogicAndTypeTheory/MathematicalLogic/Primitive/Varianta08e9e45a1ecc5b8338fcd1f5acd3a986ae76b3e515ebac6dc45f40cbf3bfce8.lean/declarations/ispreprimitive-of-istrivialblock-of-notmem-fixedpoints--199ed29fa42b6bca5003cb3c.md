# IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad3f8a09-778d-d621-d85b-7d9ffd69558d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09e2d23b-7870-2fcc-7093-97e648678d20",
  "kind": "theorem",
  "lexical_name": "IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints",
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
  "slug": "ispreprimitive-of-istrivialblock-of-notmem-fixedpoints--199ed29fa42b6bca5003cb3c",
  "source": {
    "blob": "f46eb6912bd9bb128c88d5d71b0e5779a9558a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:199ed29fa42b6bca5003cb3cd58215758de35718539bf05724901b2a3f6fc06e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e2d23b-7870-2fcc-7093-97e648678d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints {a : X} (ha : a ∉ fixedPoints G X)
    (H : ∀ ⦃B : Set X⦄, a ∈ B → IsBlock G B → IsTrivialBlock B) :
    IsPreprimitive G X :=
  have : IsPretransitive G X := by
    rw [isPretransitive_iff_base a]
    rcases H (mem_orbit_self a) (IsBlock.orbit a) with H | H
    · exfalso; apply ha
      rw [Set.subsingleton_iff_singleton (mem_orbit_self a)] at H
      simp only [mem_fixedPoints]
      intro g
      rw [← Set.mem_singleton_iff]; rw [← H]
      exact mem_orbit a g
    · intro x; rw [← MulAction.mem_orbit_iff, H]; exact Set.mem_univ x
  { isTrivialBlock_of_isBlock {B} hB := by
      obtain rfl | ⟨b, hb⟩ := B.eq_empty_or_nonempty
      · simp [IsTrivialBlock]
      · obtain ⟨g, hg⟩ := exists_smul_eq G b a
        rw [← IsTrivialBlock.smul_iff g]
        exact H ⟨b, hb, hg⟩ (hB.translate g) }

@[deprecated (since := "2025-05-23")]
alias _root_.AddAction.IsPreprimitive.of_isTrivialBlock_of_not_mem_fixedPoints :=
  AddAction.IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints

@[to_additive existing, deprecated (since := "2025-05-23")]
alias IsPreprimitive.of_isTrivialBlock_of_not_mem_fixedPoints :=
  IsPreprimitive.of_isTrivialBlock_of_notMem_fixedPoints

/-- If the action is not trivial, then the trivial blocks condition implies preprimitivity
(pretransitivity is automatic) -/
@[to_additive
  "If the action is not trivial, then the trivial blocks condition implies preprimitivity
(pretransitivity is automatic)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46eb6912bd9bb128c88d5d71b0e5779a9558a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
