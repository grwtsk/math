# evaln_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cec29637-75d1-92c1-a6f2-3ed0b9229212",
  "kind": "theorem",
  "lexical_name": "evaln_sound",
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
  "slug": "evaln-sound--43e91edf5d5acd8a6851b03b",
  "source": {
    "blob": "bdc1d168e35228d2f5e4abdc6ace1f06abe839b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 661,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e91edf5d5acd8a6851b03b4e2efcae8eb3b1dc4457ede06d1c8b9a3475b460",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cec29637-75d1-92c1-a6f2-3ed0b9229212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaln_sound : ∀ {k c n x}, x ∈ evaln k c n → x ∈ eval c n
  | 0, _, n, x, h => by simp [evaln] at h
  | k + 1, c, n, x, h => by
    induction c generalizing x n <;>
    simp only [eval, evaln, Option.bind_eq_bind, Option.mem_def, Option.bind_eq_some_iff,
      Option.guard_eq_some', exists_const] at h ⊢
    case zero => simpa [pure, PFun.pure] using h.2.symm
    case succ => simpa using h.2.symm
    case left => simpa using h.2.symm
    case right => simpa using h.2.symm
    case pair cf cg hf hg =>
      simp_rw [Seq.seq, Option.bind_eq_some_iff, Option.map_eq_map, Option.map_eq_some_iff,
        exists_exists_and_eq_and] at h
      simp_rw [Seq.seq, Part.map_eq_map, Part.bind_map, Part.mem_bind_iff, Part.mem_map_iff]
      obtain ⟨_, ⟨y, ef, z, eg, rfl⟩⟩ := h
      exact ⟨_, hf _ _ ef, _, hg _ _ eg, rfl⟩
    case comp cf cg hf hg =>
      simp only [Part.bind_eq_bind, Part.mem_bind_iff]
      obtain ⟨_, ⟨y, eg, ef⟩⟩ := h
      exact ⟨_, hg _ _ eg, hf _ _ ef⟩
    case prec cf cg hf hg =>
      simp only [unpaired, Part.bind_eq_bind] at h ⊢
      obtain ⟨_, h⟩ := h
      revert h
      induction n.unpair.2 generalizing x with
      | zero =>
        simp only [rec_zero]
        apply hf
      | succ m IH =>
        simp only [Option.bind_eq_some_iff, Part.mem_bind_iff, forall_exists_index, and_imp]
        refine fun y h₁ h₂ ↦ ⟨y, IH _ ?_, hg _ _ h₂⟩
        have := evaln_mono k.le_succ h₁
        simp only [evaln, unpaired, unpair_pair, Option.bind_eq_bind, Option.mem_def,
          Option.bind_eq_some_iff, Option.guard_eq_some', exists_const] at this
        exact this.2
    case rfind' cf hf =>
      simp only [Part.map_eq_map, Part.mem_map_iff, mem_rfind]
      obtain ⟨_, ⟨m, h₁, h₂⟩⟩ := h
      split_ifs at h₂ with m0
      · exact ⟨0, ⟨by simpa [m0] using hf _ _ h₁, fun {m} ↦ (Nat.not_lt_zero _).elim⟩,
          by simpa using h₂⟩
      · have := evaln_sound h₂
        simp only [eval, Part.map_eq_map, Part.mem_map_iff, mem_rfind] at this
        rcases this with ⟨y, ⟨hy₁, hy₂⟩, rfl⟩
        refine
          ⟨y + 1, ⟨by simpa [add_comm, add_left_comm] using hy₁, fun {i} im => ?_⟩, by
            simp [add_comm, add_left_comm]⟩
        rcases i with - | i
        · exact ⟨m, by simpa using hf _ _ h₁, by simp [m0]⟩
        · rcases hy₂ (Nat.lt_of_succ_lt_succ im) with ⟨z, hz, z0⟩
          exact ⟨z, by simpa [add_comm, add_left_comm] using hz, by simp [z0]⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdc1d168e35228d2f5e4abdc6ace1f06abe839b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
