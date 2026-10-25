# go_decl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d1bdf1b-1d52-8c97-2242-ab5a3b2c883f",
  "kind": "theorem",
  "lexical_name": "go_decl_eq",
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
  "slug": "go-decl-eq--add823ede42fedcf8a8a4bed",
  "source": {
    "blob": "1c984bf195e9edec3a88add2f6d31b78195ab314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:add823ede42fedcf8a8a4bed7ce51f4d44a2c7cc42bb4c50b8767c2f3acda0f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d1bdf1b-1d52-8c97-2242-ab5a3b2c883f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_decl_eq (aig : AIG α) (curr : Nat) (hcurr : curr ≤ w) (cin : AIG.Ref aig)
    (s : AIG.RefVec aig curr) (lhs rhs : AIG.RefVec aig w) :
    ∀ (idx : Nat) (h1) (h2),
        (go aig lhs rhs curr hcurr cin s).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig lhs rhs curr hcurr cin s = res
  unfold go at hgo
  dsimp only at hgo
  split at hgo
  next h =>
    rw [← hgo]
    intro idx h1 h2
    have h3 : idx < (mkFullAdderOut aig { lhs := lhs.get curr h, rhs := rhs.get curr h, cin := cin }).aig.decls.size := by
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size
      exact h1
    have h4 : idx < (mkFullAdder aig { lhs := lhs.get curr h, rhs := rhs.get curr h, cin := cin }).aig.decls.size := by
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size
      exact h3
    rw [go_decl_eq (w := w) (curr := curr + 1) (h1 := h4)]
    simp only [mkFullAdder]
    rw [AIG.LawfulOperator.decl_eq (f := mkFullAdderCarry) (h1 := h3)]
    rw [AIG.LawfulOperator.decl_eq (f := mkFullAdderOut)]
  · simp [← hgo]
termination_by w - curr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c984bf195e9edec3a88add2f6d31b78195ab314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
