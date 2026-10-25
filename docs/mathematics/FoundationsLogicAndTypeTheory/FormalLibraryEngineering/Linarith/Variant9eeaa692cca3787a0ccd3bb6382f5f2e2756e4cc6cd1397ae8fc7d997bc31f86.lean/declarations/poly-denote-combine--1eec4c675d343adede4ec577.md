# Poly.denote_combine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bea5bcf-a4a0-4f05-c033-dd02f573ec22",
  "kind": "theorem",
  "lexical_name": "Poly.denote_combine",
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
  "slug": "poly-denote-combine--1eec4c675d343adede4ec577",
  "source": {
    "blob": "0b9f0638bd49543db51384920baf7fb8a846d41b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eec4c675d343adede4ec5774626ab96a5bf8b1c0ceaee160a283c89409420f8",
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

Occurrence: `result:0bea5bcf-a4a0-4f05-c033-dd02f573ec22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denote_combine {α} [IntModule α] (ctx : Context α) (p₁ p₂ : Poly) : (p₁.combine p₂).denote ctx = p₁.denote ctx + p₂.denote ctx := by
  fun_induction p₁.combine p₂ <;>
    simp_all +zetaDelta [denote]
  next h _ =>
    rw [Int.add_comm] at h
    rw [add_left_comm, add_assoc, ← add_assoc, ← add_zsmul, h, zero_zsmul, zero_add]
  next => rw [add_zsmul]; ac_rfl
  all_goals ac_rfl

attribute [local simp] Poly.denote_combine

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variant9eeaa692cca3787a0ccd3bb6382f5f2e2756e4cc6cd1397ae8fc7d997bc31f86.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9f0638bd49543db51384920baf7fb8a846d41b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
