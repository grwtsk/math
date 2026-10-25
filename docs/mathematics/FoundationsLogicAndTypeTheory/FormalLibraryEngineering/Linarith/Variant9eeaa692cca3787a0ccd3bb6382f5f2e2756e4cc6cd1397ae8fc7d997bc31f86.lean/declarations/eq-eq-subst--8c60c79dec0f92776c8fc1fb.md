# eq_eq_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6448349-d279-aad7-54cd-e5485caacda1",
  "kind": "theorem",
  "lexical_name": "eq_eq_subst",
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
  "slug": "eq-eq-subst--8c60c79dec0f92776c8fc1fb",
  "source": {
    "blob": "0b9f0638bd49543db51384920baf7fb8a846d41b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 566,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c60c79dec0f92776c8fc1fb6a4c43d6b191c735b4bc7aa3ccca301f7f27bc7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6448349-d279-aad7-54cd-e5485caacda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_eq_subst {α} [IntModule α] (ctx : Context α) (x : Var) (p₁ p₂ p₃ : Poly)
    : eq_eq_subst_cert x p₁ p₂ p₃ → p₁.denote' ctx = 0 → p₂.denote' ctx = 0 → p₃.denote' ctx = 0 := by
  simp [eq_eq_subst_cert]; intro _ h₁ h₂; subst p₃; simp [h₁, h₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9f0638bd49543db51384920baf7fb8a846d41b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
