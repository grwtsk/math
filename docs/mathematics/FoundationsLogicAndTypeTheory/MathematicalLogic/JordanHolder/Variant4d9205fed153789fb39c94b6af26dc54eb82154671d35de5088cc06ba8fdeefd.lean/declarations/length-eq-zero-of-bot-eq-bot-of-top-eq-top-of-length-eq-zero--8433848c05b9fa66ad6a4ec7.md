# length_eq_zero_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b07d2fb6f5808aa838077f6dd4759536e1ac17f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 714,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8eb3099-3b32-ca37-ed0d-b0f142db790e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb646787-ae22-fd91-54dd-f3d459af2c77",
  "kind": "theorem",
  "lexical_name": "length_eq_zero_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero",
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
  "slug": "length-eq-zero-of-bot-eq-bot-of-top-eq-top-of-length-eq-zero--8433848c05b9fa66ad6a4ec7",
  "source": {
    "blob": "9b07d2fb6f5808aa838077f6dd4759536e1ac17f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 714,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8433848c05b9fa66ad6a4ec7612fec725529f54b5df5a7174c6850493355beeb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb646787-ae22-fd91-54dd-f3d459af2c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_eq_zero_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero {s₁ s₂ : CompositionSeries X}
    (hb : s₁.bot = s₂.bot) (ht : s₁.top = s₂.top) (hs₁ : s₁.length = 0) : s₂.length = 0 := by
  have : s₁.bot = s₁.top := congr_arg s₁ (Fin.ext (by simp [hs₁]))
  have : Fin.last s₂.length = (0 : Fin s₂.length.succ) :=
    s₂.injective (hb.symm.trans (this.trans ht)).symm
  -- Porting note: Was `simpa [Fin.ext_iff]`.
  rw [Fin.ext_iff] at this
  simpa
#align composition_series.length_eq_zero_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero CompositionSeries.length_eq_zero_of_bot_eq_bot_of_top_eq_top_of_length_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant4d9205fed153789fb39c94b6af26dc54eb82154671d35de5088cc06ba8fdeefd.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07d2fb6f5808aa838077f6dd4759536e1ac17f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
