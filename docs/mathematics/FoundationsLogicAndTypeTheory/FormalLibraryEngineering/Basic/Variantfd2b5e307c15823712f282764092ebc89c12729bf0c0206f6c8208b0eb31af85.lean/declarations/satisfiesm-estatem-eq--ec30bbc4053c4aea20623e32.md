# SatisfiesM_EStateM_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e96679d9-4155-f105-7e66-4a2e2110e24f",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_EStateM_eq",
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
  "slug": "satisfiesm-estatem-eq--ec30bbc4053c4aea20623e32",
  "source": {
    "blob": "b5ea5d1f32e232b96cc739b9f3d22e913ca1cd93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfd2b5e307c15823712f282764092ebc89c12729bf0c0206f6c8208b0eb31af85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec30bbc4053c4aea20623e32c785af3d37c608c3e31cd5dde1078e4aea9fcf39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfd2b5e307c15823712f282764092ebc89c12729bf0c0206f6c8208b0eb31af85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e96679d9-4155-f105-7e66-4a2e2110e24f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SatisfiesM_EStateM_eq :
    SatisfiesM (m := EStateM ε σ) p x ↔ ∀ s a s', x.run s = .ok a s' → p a := by
  constructor
  · rintro ⟨x, rfl⟩ s a s' h
    match w : x.run s with
    | .ok a s' => simp at h; exact h.1
    | .error e s' => simp [w] at h
  · intro w
    refine ⟨?_, ?_⟩
    · intro s
      match q : x.run s with
      | .ok a s' => exact .ok ⟨a, w s a s' q⟩ s'
      | .error e s' => exact .error e s'
    · ext s
      rw [EStateM.run_map, EStateM.run]
      split <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfd2b5e307c15823712f282764092ebc89c12729bf0c0206f6c8208b0eb31af85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfd2b5e307c15823712f282764092ebc89c12729bf0c0206f6c8208b0eb31af85.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5ea5d1f32e232b96cc739b9f3d22e913ca1cd93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
