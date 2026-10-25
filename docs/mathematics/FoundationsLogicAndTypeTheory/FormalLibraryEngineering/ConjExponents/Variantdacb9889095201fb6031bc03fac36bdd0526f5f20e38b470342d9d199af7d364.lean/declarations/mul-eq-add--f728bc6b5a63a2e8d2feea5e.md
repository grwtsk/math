# mul_eq_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a2bfbc4-c19a-ff41-a84e-854968e1c351",
  "kind": "lemma",
  "lexical_name": "mul_eq_add",
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
  "slug": "mul-eq-add--f728bc6b5a63a2e8d2feea5e",
  "source": {
    "blob": "3ba3c1b56b5de7ab34b7367c450c35452ac57d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 564,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConjExponents/Variantdacb9889095201fb6031bc03fac36bdd0526f5f20e38b470342d9d199af7d364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f728bc6b5a63a2e8d2feea5e2d3da8278bdd9b39a1904fb5476980eaf8487575",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConjExponents/Variantdacb9889095201fb6031bc03fac36bdd0526f5f20e38b470342d9d199af7d364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a2bfbc4-c19a-ff41-a84e-854968e1c351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_eq_add : p * q = p + q := by
  obtain rfl | hp := eq_or_ne p ∞
  · simp [ne_zero q ∞]
  obtain rfl | hq := eq_or_ne q ∞
  · simp [ne_zero p ∞]
  simpa [add_comm p, mul_add, add_mul, hp, hq, ne_zero p q, ne_zero q p, ENNReal.mul_inv_cancel,
    ENNReal.inv_mul_cancel_right] using congr(p * $((inv_add_inv_eq_one p q).symm) * q)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConjExponents/Variantdacb9889095201fb6031bc03fac36bdd0526f5f20e38b470342d9d199af7d364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConjExponents/Variantdacb9889095201fb6031bc03fac36bdd0526f5f20e38b470342d9d199af7d364.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ba3c1b56b5de7ab34b7367c450c35452ac57d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
