# regionalCoverTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7d15956c99b41954fb3823bbb97b0148eee278795e65fd9beaff708504a83f8",
  "kind": "def",
  "lexical_name": "regionalCoverTail",
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
  "slug": "regionalcovertail--74cdbdee10ff0486c6ab387a",
  "source": {
    "blob": "debf76c5360c2809353ca6c72f03984e758ec04f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74cdbdee10ff0486c6ab387a0cfff2eb210c581ee3a068a657fa8cd7c8016609",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7d15956c99b41954fb3823bbb97b0148eee278795e65fd9beaff708504a83f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regionalCoverTail (source : Source) (H : X → Prop) (D tail : Set X)
    (f : Source → X → ℝ) {n : ℕ} (cells : Fin n → Set X) (constants : Fin n → ℝ)
    (tailConstant : ℝ) (coverage : ∀ x ∈ D, (∃ i, x ∈ cells i) ∨ x ∈ tail)
    (children : ∀ i, ScopedProof source H (cells i) (fun s x ↦ f s x ≤ constants i))
    (tailProof : ScopedProof source H tail (fun s x ↦ f s x ≤ tailConstant)) :
    ScopedProof source H D
      (fun s x ↦ f s x ≤ max (regionalMaximum (List.ofFn constants)) tailConstant) :=
  .coverTail cells tail coverage (fun i ↦ .implication (children i) (by
    intro x _ _ h
    exact h.trans ((le_regionalMaximum (List.mem_ofFn.mpr ⟨i, rfl⟩)).trans
      (le_max_left _ _))))
    (.implication tailProof (by intro x _ _ h; exact h.trans (le_max_right _ _)))

end FormalResearch.MathematicalTooling.Certificates
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `debf76c5360c2809353ca6c72f03984e758ec04f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
