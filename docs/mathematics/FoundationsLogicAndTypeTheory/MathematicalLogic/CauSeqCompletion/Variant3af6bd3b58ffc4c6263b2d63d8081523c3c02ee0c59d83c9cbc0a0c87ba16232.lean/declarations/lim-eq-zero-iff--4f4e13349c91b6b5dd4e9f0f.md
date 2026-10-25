# lim_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71754f0c-f97e-2a62-fbfc-b3fb3f1b9dfd",
  "kind": "theorem",
  "lexical_name": "lim_eq_zero_iff",
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
  "slug": "lim-eq-zero-iff--4f4e13349c91b6b5dd4e9f0f",
  "source": {
    "blob": "ce4f03fcb51b1db8cbf63f2eae8a674b17f33bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f4e13349c91b6b5dd4e9f0f22771b9780125150e7f78a5b7a18849e80d28e55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71754f0c-f97e-2a62-fbfc-b3fb3f1b9dfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lim_eq_zero_iff (f : CauSeq β abv) : lim f = 0 ↔ LimZero f :=
  ⟨fun h => by
    have hf := equiv_lim f
    rw [h] at hf
    exact (limZero_congr hf).mpr (const_limZero.mpr rfl),
   fun h => by
    have h₁ : f = f - const abv 0 := ext fun n => by simp [sub_apply, const_apply]
    rw [h₁] at h
    exact lim_eq_of_equiv_const h⟩
#align cau_seq.lim_eq_zero_iff CauSeq.lim_eq_zero_iff

end

section

variable {β : Type*} [Field β] {abv : β → α} [IsAbsoluteValue abv] [IsComplete β abv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4f03fcb51b1db8cbf63f2eae8a674b17f33bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
