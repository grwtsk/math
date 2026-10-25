# behavioral_canonicalization_no_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:453cdaeb-e0fc-243e-1ae1-ba037101dbcf",
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
  "slug": "behavioral-canonicalization-no-go--f56a6d20beb915a5a5d79acb",
  "source": {
    "blob": "02f57db9e30061902c51cd9a73168d2cd755052f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f56a6d20beb915a5a5d79acb140aa07c624bfc4a5ee7ec25b638aec4f2fe72a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:453cdaeb-e0fc-243e-1ae1-ba037101dbcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–190.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variant29f7cef4ce26010327e01cbf92b85d4592f9b4ac4961a8bbb67111fb26dfed13.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f57db9e30061902c51cd9a73168d2cd755052f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
