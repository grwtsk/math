# tr_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d1b62c0-cd9f-8174-eb1a-799fc76c9ca8",
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
  "slug": "tr-respects--6cbf94bb4e71ba396f3c5dcd",
  "source": {
    "blob": "8e5b31d39d6dea47790cb5fec7eafa75b7029607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2731,
    "line": 2710,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cbf94bb4e71ba396f3c5dcd96e2ef52efb3780778e65a3ebe457983600e6c31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d1b62c0-cd9f-8174-eb1a-799fc76c9ca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2710–2731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_respects : Respects (TM2.step M) (TM1.step (tr M)) TrCfg := by
  -- Porting note: `simp only`s are required for beta reductions.
  intro c₁ c₂ h
  cases' h with l v S L hT
  cases' l with l; · constructor
  simp only [TM2.step, Respects, Option.map_some']
  rsuffices ⟨b, c, r⟩ : ∃ b, _ ∧ Reaches (TM1.step (tr M)) _ _
  · exact ⟨b, c, TransGen.head' rfl r⟩
  simp only [tr]
  -- Porting note: `refine'` failed because of implicit lambda, so `induction` is used.
  generalize M l = N
  induction N using stmtStRec generalizing v S L hT with
  | H₁ k s q IH => exact tr_respects_aux M hT s @IH
  | H₂ a _ IH => exact IH _ hT
  | H₃ p q₁ q₂ IH₁ IH₂ =>
    unfold TM2.stepAux trNormal TM1.stepAux
    simp only []
    cases p v <;> [exact IH₂ _ hT; exact IH₁ _ hT]
  | H₄ => exact ⟨_, ⟨_, hT⟩, ReflTransGen.refl⟩
  | H₅ => exact ⟨_, ⟨_, hT⟩, ReflTransGen.refl⟩
#align turing.TM2to1.tr_respects Turing.TM2to1.tr_respects

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean#L2710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5b31d39d6dea47790cb5fec7eafa75b7029607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
