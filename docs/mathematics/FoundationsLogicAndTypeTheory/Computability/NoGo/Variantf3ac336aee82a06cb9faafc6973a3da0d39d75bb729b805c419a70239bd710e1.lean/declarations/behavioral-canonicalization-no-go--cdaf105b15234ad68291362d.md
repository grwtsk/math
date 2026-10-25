# behavioral_canonicalization_no_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "834f4aaa9b4afb610a236245918c3fdb87fe7082",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea0c1509-c9dd-17b9-f169-6196e720d17d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f5f360c-ba53-16cc-edb9-be6d2f008f47",
  "kind": "theorem",
  "lexical_name": "behavioral_canonicalization_no_go",
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
  "slug": "behavioral-canonicalization-no-go--cdaf105b15234ad68291362d",
  "source": {
    "blob": "834f4aaa9b4afb610a236245918c3fdb87fe7082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdaf105b15234ad68291362d01f2d7f3bd38dc964e7996ef26c48108a2677e7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f5f360c-ba53-16cc-edb9-be6d2f008f47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem behavioral_canonicalization_no_go (canonical : Nat.Partrec.Code → ℕ)
    (canonicalComputable : Computable canonical) :
    ¬(∀ first second, canonical first = canonical second ↔ SameProgramBehavior first second) := by
  intro correct
  let behaviorClass : Set Nat.Partrec.Code :=
    {program | canonical program = canonical .zero}
  have effective : ComputablePred (fun program => program ∈ behaviorClass) := by
    apply ComputablePred.computable_iff.mpr
    refine ⟨fun program => canonical program == canonical .zero,
      Primrec.beq.to_comp.comp canonicalComputable (Computable.const _), ?_⟩
    funext program
    simp [behaviorClass]
  have extensional : ∀ first second, SameProgramBehavior first second →
      (first ∈ behaviorClass ↔ second ∈ behaviorClass) := by
    intro first second same
    change canonical first = canonical .zero ↔ canonical second = canonical .zero
    rw [(correct first second).mpr same]
  rcases computable_behavior_class_trivial behaviorClass extensional effective with empty | full
  · have member : Nat.Partrec.Code.zero ∈ behaviorClass := rfl
    rw [empty] at member
    exact member
  · have member : Nat.Partrec.Code.succ ∈ behaviorClass := by rw [full]; trivial
    have same := (correct .succ .zero).mp member
    have atZero := congrFun same 0
    change (Part.some 1 : Part ℕ) = Part.some 0 at atZero
    have impossible : (1 : ℕ) = 0 := Part.some_injective atZero
    omega

/-- Four squares plus one is strictly positive at every integral input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834f4aaa9b4afb610a236245918c3fdb87fe7082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
