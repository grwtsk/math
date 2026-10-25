# go_denote_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecab2295-ab62-25e3-d2e4-4405666f91e5",
  "kind": "theorem",
  "lexical_name": "go_denote_eq",
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
  "slug": "go-denote-eq--960052336ecd2530691dfdfd",
  "source": {
    "blob": "6fbeb81365db5432ef2211f8b39ecdf46614acee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variant21a5c3034861d428fc1a38510a130a5e701fb9c8ae8eb29a52959970a2acda2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:960052336ecd2530691dfdfd9fb180838d9a73a9ccd894a9f1010cdf4d7270da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variant21a5c3034861d428fc1a38510a130a5e701fb9c8ae8eb29a52959970a2acda2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecab2295-ab62-25e3-d2e4-4405666f91e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_denote_eq (aig : AIG α) (w : Nat) (input : AIG.RefVec aig w) (newWidth curr : Nat)
    (hcurr : curr ≤ newWidth) (s : AIG.RefVec aig curr) (assign : α → Bool) :
    ∀ (idx : Nat) (hidx1 : idx < newWidth),
        curr ≤ idx
          →
        ⟦
          (go aig w input newWidth curr hcurr s).aig,
          (go aig w input newWidth curr hcurr s).vec.get idx hidx1,
          assign
        ⟧
          =
        if hidx : idx < w then
           ⟦aig, input.get idx hidx, assign⟧
        else
           false
    := by
  intro idx hidx1 hidx2
  generalize hgo : go aig w input newWidth curr hcurr s = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      split at hgo
      next hsplit =>
        rw [heq] at hsplit
        simp only [hsplit, ↓reduceDIte]
        rw [← hgo]
        rw [go_get]; case hidx => omega
        rw [AIG.RefVec.get_push_ref_eq']
        · rw [go_denote_mem_prefix]
          · simp [heq]
          · simp [Ref.hgate]
        · omega
      next hsplit =>
        rw [heq] at hsplit
        simp only [hsplit, ↓reduceDIte]
        rw [← hgo]
        rw [go_get]; case hidx => omega
        rw [AIG.RefVec.get_push_ref_eq']
        · rw [go_denote_mem_prefix]
          · simp only [Ref.cast_eq]
            rw [denote_mkConstCached]
          · simp [Ref.hgate]
        · omega
    | inr =>
      split at hgo
      · rw [← hgo]
        rw [go_denote_eq]
        omega
      · rw [← hgo]
        rw [go_denote_eq]
        omega
  · omega
termination_by newWidth - curr

end blastZeroExtend

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variant21a5c3034861d428fc1a38510a130a5e701fb9c8ae8eb29a52959970a2acda2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZeroExtend/Variant21a5c3034861d428fc1a38510a130a5e701fb9c8ae8eb29a52959970a2acda2f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fbeb81365db5432ef2211f8b39ecdf46614acee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
