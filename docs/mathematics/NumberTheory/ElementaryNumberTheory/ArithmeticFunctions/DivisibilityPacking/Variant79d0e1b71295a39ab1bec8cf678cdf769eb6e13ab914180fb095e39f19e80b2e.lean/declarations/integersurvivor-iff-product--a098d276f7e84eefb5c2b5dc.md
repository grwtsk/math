# integerSurvivor_iff_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34bf5987e231c36cf4a9f04306be36aeb1ffe503",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:042b5ea4-bf3a-6321-27f1-c8eb69341e40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c159cc43-42bf-97e2-eeed-71b0ff08467b",
  "kind": "theorem",
  "lexical_name": "integerSurvivor_iff_product",
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
  "slug": "integersurvivor-iff-product--a098d276f7e84eefb5c2b5dc",
  "source": {
    "blob": "34bf5987e231c36cf4a9f04306be36aeb1ffe503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 152,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a098d276f7e84eefb5c2b5dc917050287c888221e21ebfdca7f326e4f07b7197",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c159cc43-42bf-97e2-eeed-71b0ff08467b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerSurvivor_iff_product (H : Finset ℤ) (y : ℕ) (n : ℤ) :
    IntegerSurvivor H y n ↔ ∀ p ∈ primeSupport y, ¬ (p : ℤ) ∣ ∏ h ∈ H, (n + h) := by
  constructor
  · intro hn p hp hd
    have : Fact (Nat.Prime p) := ⟨(mem_primeSupport p y |>.mp hp).2⟩
    have hz := (ZMod.intCast_zmod_eq_zero_iff_dvd (∏ h ∈ H, (n + h)) p).mpr hd
    rw [Int.cast_prod] at hz
    have hnz : ∀ h ∈ H, ((n + h : ℤ) : ZMod p) ≠ 0 := by
      intro h hh he
      exact hn p hp h hh ((ZMod.intCast_zmod_eq_zero_iff_dvd (n + h) p).mp he)
    exact (Finset.prod_ne_zero_iff.mpr hnz) hz
  · intro hn p hp h hh hd
    exact hn p hp (dvd_trans hd (Finset.dvd_prod_of_mem (fun h : ℤ => n + h) hh))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34bf5987e231c36cf4a9f04306be36aeb1ffe503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
