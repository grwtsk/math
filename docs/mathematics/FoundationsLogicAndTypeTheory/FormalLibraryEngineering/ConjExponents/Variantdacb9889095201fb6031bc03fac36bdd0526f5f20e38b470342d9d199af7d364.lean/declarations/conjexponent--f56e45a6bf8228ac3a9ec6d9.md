# conjExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:befa836a-5782-a270-4588-bb8ad3a3a52f",
  "kind": "lemma",
  "lexical_name": "conjExponent",
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
  "slug": "conjexponent--f56e45a6bf8228ac3a9ec6d9",
  "source": {
    "blob": "3ba3c1b56b5de7ab34b7367c450c35452ac57d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 536,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConjExponents/Variantdacb9889095201fb6031bc03fac36bdd0526f5f20e38b470342d9d199af7d364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f56e45a6bf8228ac3a9ec6d938d11499f6d004b017aba6b3bbb190ef6d6fbc58",
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

Occurrence: `result:befa836a-5782-a270-4588-bb8ad3a3a52f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma conjExponent {p : ℝ≥0∞} (hp : 1 ≤ p) : p.HolderConjugate (conjExponent p) := by
  have : p ≠ 0 := (zero_lt_one.trans_le hp).ne'
  rw [HolderConjugate, holderTriple_iff, conjExponent, add_comm]
  refine (AddLECancellable.eq_tsub_iff_add_eq_of_le (α := ℝ≥0∞) (by simpa) (by simpa)).1 ?_
  rw [inv_eq_iff_eq_inv]
  obtain rfl | hp₁ := hp.eq_or_lt
  · simp
  obtain rfl | hp := eq_or_ne p ∞
  · simp
  calc
    1 + (p - 1)⁻¹ = (p - 1 + 1) / (p - 1) := by
      rw [ENNReal.add_div, ENNReal.div_self ((tsub_pos_of_lt hp₁).ne') (sub_ne_top hp), one_div]
    _ = (1⁻¹ - p⁻¹)⁻¹ := by
      rw [tsub_add_cancel_of_le, ← inv_eq_iff_eq_inv, div_eq_mul_inv, ENNReal.mul_inv, inv_inv,
        ENNReal.mul_sub, ENNReal.inv_mul_cancel, mul_one] <;> simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConjExponents/Variantdacb9889095201fb6031bc03fac36bdd0526f5f20e38b470342d9d199af7d364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConjExponents/Variantdacb9889095201fb6031bc03fac36bdd0526f5f20e38b470342d9d199af7d364.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ba3c1b56b5de7ab34b7367c450c35452ac57d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
