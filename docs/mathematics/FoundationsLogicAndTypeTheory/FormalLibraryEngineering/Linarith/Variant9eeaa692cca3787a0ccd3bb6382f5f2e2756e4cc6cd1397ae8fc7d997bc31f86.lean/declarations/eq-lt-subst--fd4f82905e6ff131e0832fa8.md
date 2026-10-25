# eq_lt_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5d65554-6d3c-00be-9fb2-b437b211e1fd",
  "kind": "theorem",
  "lexical_name": "eq_lt_subst",
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
  "slug": "eq-lt-subst--fd4f82905e6ff131e0832fa8",
  "source": {
    "blob": "0b9f0638bd49543db51384920baf7fb8a846d41b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 556,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd4f82905e6ff131e0832fa8a09a0f72346a9c4bcc6571b6ecfc13ab5710096a",
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

Occurrence: `result:b5d65554-6d3c-00be-9fb2-b437b211e1fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_lt_subst {α} [IntModule α] [LE α] [LT α] [LawfulOrderLT α] [IsPreorder α] [OrderedAdd α] (ctx : Context α) (x : Var) (p₁ p₂ p₃ : Poly)
    : eq_lt_subst_cert x p₁ p₂ p₃ → p₁.denote' ctx = 0 → p₂.denote' ctx < 0 → p₃.denote' ctx < 0 := by
  simp [eq_lt_subst_cert]; intro h _ h₁ h₂; subst p₃; simp [h₁]
  exact zsmul_neg_iff (p₁.coeff x) h₂ |>.mpr h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9f0638bd49543db51384920baf7fb8a846d41b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
