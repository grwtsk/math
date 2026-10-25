# tr_eval'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bf22a50-1c1f-8377-29b1-adf2eaba9157",
  "kind": "theorem",
  "lexical_name": "tr_eval'",
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
  "slug": "tr-eval--d210ae1e2d1289e94a0cb08d",
  "source": {
    "blob": "bdec1b827e32b23b3973527c3038855fcb07c371",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d210ae1e2d1289e94a0cb08db9d66d7b85498a70af63098364021cad981053c5",
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

Occurrence: `result:6bf22a50-1c1f-8377-29b1-adf2eaba9157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_eval' {σ₁ σ₂} (f₁ : σ₁ → Option σ₁) (f₂ : σ₂ → Option σ₂) (tr : σ₁ → σ₂)
    (H : Respects f₁ f₂ fun a b ↦ tr a = b) (a₁) : eval f₂ (tr a₁) = tr <$> eval f₁ a₁ :=
  Part.ext fun b₂ ↦
    ⟨fun h ↦
      let ⟨b₁, bb, hb⟩ := tr_eval_rev H rfl h
      (Part.mem_map_iff _).2 ⟨b₁, hb, bb⟩,
      fun h ↦ by
      rcases (Part.mem_map_iff _).1 h with ⟨b₁, ab, bb⟩
      rcases tr_eval H rfl ab with ⟨_, rfl, h⟩
      rwa [bb] at h⟩

section EvalsTo

/-- A "proof" of the fact that `f` eventually reaches `b` when repeatedly evaluated on `a`,
remembering the number of steps it takes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StateTransition/Variant80c17497aaf24f83cc038db45fc5b22df2806a62dc3a7b8fc2cca96305c23021.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdec1b827e32b23b3973527c3038855fcb07c371` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
