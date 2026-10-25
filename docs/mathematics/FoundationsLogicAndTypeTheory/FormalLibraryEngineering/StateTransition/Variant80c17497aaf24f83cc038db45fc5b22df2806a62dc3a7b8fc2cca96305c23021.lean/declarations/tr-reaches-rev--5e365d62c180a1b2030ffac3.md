# tr_reaches_rev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeb9b80d-746b-dbd8-9a3e-e34955566a62",
  "kind": "theorem",
  "lexical_name": "tr_reaches_rev",
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
  "slug": "tr-reaches-rev--5e365d62c180a1b2030ffac3",
  "source": {
    "blob": "bdec1b827e32b23b3973527c3038855fcb07c371",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e365d62c180a1b2030ffac3f927e0eaf3a1a9cd0aee320fdb131c63a4693b24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb9b80d-746b-dbd8-9a3e-e34955566a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_reaches_rev {σ₁ σ₂ f₁ f₂} {tr : σ₁ → σ₂ → Prop} (H : Respects f₁ f₂ tr) {a₁ a₂}
    (aa : tr a₁ a₂) {b₂} (ab : Reaches f₂ a₂ b₂) :
    ∃ c₁ c₂, Reaches f₂ b₂ c₂ ∧ tr c₁ c₂ ∧ Reaches f₁ a₁ c₁ := by
  induction ab with
  | refl => exact ⟨_, _, ReflTransGen.refl, aa, ReflTransGen.refl⟩
  | tail _ cd IH =>
    rcases IH with ⟨e₁, e₂, ce, ee, ae⟩
    rcases ReflTransGen.cases_head ce with (rfl | ⟨d', cd', de⟩)
    · have := H ee
      revert this
      rcases eg : f₁ e₁ with - | g₁ <;> simp only [and_imp, exists_imp]
      · intro c0
        cases cd.symm.trans c0
      · intro g₂ gg cg
        rcases TransGen.head'_iff.1 cg with ⟨d', cd', dg⟩
        cases Option.mem_unique cd cd'
        exact ⟨_, _, dg, gg, ae.tail eg⟩
    · cases Option.mem_unique cd cd'
      exact ⟨_, _, de, ee, ae⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdec1b827e32b23b3973527c3038855fcb07c371` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
