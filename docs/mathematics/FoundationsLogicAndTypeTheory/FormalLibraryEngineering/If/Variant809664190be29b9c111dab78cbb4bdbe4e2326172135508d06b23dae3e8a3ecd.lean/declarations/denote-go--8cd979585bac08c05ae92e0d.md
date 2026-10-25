# denote_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b13e85-f4ba-f584-68ab-e052ce09ffcf",
  "kind": "theorem",
  "lexical_name": "denote_go",
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
  "slug": "denote-go--8cd979585bac08c05ae92e0d",
  "source": {
    "blob": "73b19ca5515e74f6089310ffcc6c06753c878c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cd979585bac08c05ae92e0d6e7dff4f5d00c1f4e666fc6c4e4ec32e6c537fc6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b13e85-f4ba-f584-68ab-e052ce09ffcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_go {w : Nat} (aig : AIG α) (curr : Nat) (hcurr : curr ≤ w) (discr : Ref aig)
    (lhs rhs : RefVec aig w) (s : RefVec aig curr) :
    ∀ (idx : Nat) (hidx1 : idx < w),
      curr ≤ idx
        →
      ⟦
        (go aig curr hcurr discr lhs rhs s).aig,
        (go aig curr hcurr discr lhs rhs s).vec.get idx hidx1,
        assign
      ⟧
        =
      if ⟦aig, discr, assign⟧ then
        ⟦aig, lhs.get idx hidx1, assign⟧
      else
        ⟦aig, rhs.get idx hidx1, assign⟧ := by
  intro idx hidx1 hidx2
  generalize hgo : go aig curr hcurr discr lhs rhs s = res
  unfold go at hgo
  simp only at hgo
  split at hgo
  · cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      subst heq
      rw [← hgo]
      rw [go_get]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_eq']
      · rw [go_denote_mem_prefix]
        · simp [Ref.cast]
        · simp [Ref.cast, Ref.hgate]
      · omega
    | inr heq =>
      rw [← hgo]
      rw [denote_go]
      · rw [LawfulOperator.denote_mem_prefix (f := mkIfCached)]
        rw [LawfulOperator.denote_mem_prefix (f := mkIfCached)]
        rw [LawfulOperator.denote_mem_prefix (f := mkIfCached)]
        · simp
        · simp [Ref.hgate]
        · simp [Ref.hgate]
        · simp [Ref.hgate]
      · omega
  · omega
termination_by w - curr

end ite

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b19ca5515e74f6089310ffcc6c06753c878c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
