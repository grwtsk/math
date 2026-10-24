# to_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5969a9c4cb5e6e94bee97ea489dc20c3be391df7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac24fe36-840a-bdc3-140f-b6ae047d8d85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:241db170-c9d5-2cab-8eb9-21f32575624c",
  "kind": "theorem",
  "lexical_name": "to_append_iff",
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
  "slug": "to-append-iff--34f8fb97508a3624f4b596ff",
  "source": {
    "blob": "5969a9c4cb5e6e94bee97ea489dc20c3be391df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 239,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34f8fb97508a3624f4b596ffd642e735081ebecffa01722ae4fbc89be9786e39",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241db170-c9d5-2cab-8eb9-21f32575624c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_append_iff : Red L (L₁ ++ L₂) ↔ ∃ L₃ L₄, L = L₃ ++ L₄ ∧ Red L₃ L₁ ∧ Red L₄ L₂ :=
  Iff.intro
    (by
      generalize eq : L₁ ++ L₂ = L₁₂
      intro h
      induction h generalizing L₁ L₂ with
      | refl => exact ⟨_, _, eq.symm, by rfl, by rfl⟩
      | tail hLL' h ih =>
        obtain @⟨s, e, a, b⟩ := h
        rcases List.append_eq_append_iff.1 eq with (⟨s', rfl, rfl⟩ | ⟨e', rfl, rfl⟩)
        · have : L₁ ++ (s' ++ (a, b) :: (a, not b) :: e) =
            L₁ ++ s' ++ (a, b) :: (a, not b) :: e := by simp
          rcases ih this with ⟨w₁, w₂, rfl, h₁, h₂⟩
          exact ⟨w₁, w₂, rfl, h₁, h₂.tail Step.not⟩
        · have : s ++ (a, b) :: (a, not b) :: e' ++ L₂ =
            s ++ (a, b) :: (a, not b) :: (e' ++ L₂) := by simp
          rcases ih this with ⟨w₁, w₂, rfl, h₁, h₂⟩
          exact ⟨w₁, w₂, rfl, h₁.tail Step.not, h₂⟩)
    fun ⟨_, _, Eq, h₃, h₄⟩ => Eq.symm ▸ append_append h₃ h₄

/-- The empty word `[]` only reduces to itself. -/
@[to_additive /-- The empty word `[]` only reduces to itself. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8599f5b467d052acec19fdbe03531096ed5b88a624004928ad99015b8f386d34.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5969a9c4cb5e6e94bee97ea489dc20c3be391df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
