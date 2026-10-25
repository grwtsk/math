# tr_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:793c1a72-37b0-af20-87f5-af40becc6d30",
  "kind": "theorem",
  "lexical_name": "tr_respects",
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
  "slug": "tr-respects--4e1a767f849d69b0b5aa0f2a",
  "source": {
    "blob": "c14e91790357aeb78628835fe8af4a3d1cad9f8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 683,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e1a767f849d69b0b5aa0f2ae053a97ff10f4ceac726d3211cc5468f81b3c2e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:793c1a72-37b0-af20-87f5-af40becc6d30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_respects : Respects (TM2.step M) (TM1.step (tr M)) TrCfg := by
  -- Porting note (https://github.com/leanprover-community/mathlib4/issues/12129): additional beta reduction needed
  intro c₁ c₂ h
  obtain @⟨- | l, v, S, L, hT⟩ := h; · constructor
  rsuffices ⟨b, c, r⟩ : ∃ b, _ ∧ Reaches (TM1.step (tr M)) _ _
  · exact ⟨b, c, TransGen.head' rfl r⟩
  simp only [tr]
  generalize M l = N
  induction N using stmtStRec generalizing v S L hT with
  | run k s q IH => exact tr_respects_aux M hT s @IH
  | load a _ IH => exact IH _ hT
  | branch p q₁ q₂ IH₁ IH₂ =>
    unfold TM2.stepAux trNormal TM1.stepAux
    beta_reduce
    cases p v <;> [exact IH₂ _ hT; exact IH₁ _ hT]
  | goto => exact ⟨_, ⟨_, hT⟩, ReflTransGen.refl⟩
  | halt => exact ⟨_, ⟨_, hT⟩, ReflTransGen.refl⟩

section
variable [Inhabited Λ] [Inhabited σ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c14e91790357aeb78628835fe8af4a3d1cad9f8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
