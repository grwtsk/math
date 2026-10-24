# reference_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b9f6db7-2e9c-8568-6a4c-4d8614a053fd",
  "kind": "theorem",
  "lexical_name": "reference_checked",
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
  "slug": "reference-checked--a71be34164b70484a518cd09",
  "source": {
    "blob": "8235fd3fa6610017499cd1cfbf1a4350cba8d3ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 228,
    "path": "GRWTSK/Analysis/Complex/RationalTentFamily.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a71be34164b70484a518cd0936c7b6506e39b9fafc847053adb05e4e278382ef",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentFamily.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b9f6db7-2e9c-8568-6a4c-4d8614a053fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reference_checked {family : List Member} {x h : ℚ}
    (hh : 0 < h) (ha : 1 < x - h) (hk : (family.map Member.key).Nodup)
    (cells : ℕ → ℕ) (p : ℕ → Bool → ℕ → RationalMellinNode.Resolution)
    (hm : ∀ i < family.length, 0 < (memberAt family i).multiplicity)
    (hN : ∀ i < family.length, 0 < cells i)
    (hz : ∀ i < family.length, (memberAt family i).center.1 ≤ 1)
    (hl : ∀ i < family.length, ∀ right j, j < cells i →
      RationalLogEnclosure.validScale (RationalTentQuadrature.node x h (cells i) j right)
        (p i right j).logScale (p i right j).logTwoCells (p i right j).mantissaCells = true)
    (hg : ∀ i < family.length, ∀ right j, j < cells i →
      (RationalMellinNode.exponentBound (memberAt family i).center
        (RationalTentQuadrature.node x h (cells i) j right) (p i right j) /
        (2 ^ (p i right j).expScale : ℕ)) / ((p i right j).terms + 1 : ℕ) ≤ (1 / 2 : ℚ)) :
    check family x h (referenceTrace family x h cells p) = true := by
  apply withExactAccumulation_checked hh ha hk (by simp [referenceEvaluations])
  intro i hi
  have hi' := Finset.mem_range.mp hi
  rw [referenceEvaluationAt family x h cells p i hi']
  exact ⟨hm i hi', rfl,
    RationalTentQuadrature.reference_checked hh ha (hN i hi') (hz i hi')
      (p i) (hl i hi') (hg i hi')⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentFamily.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentFamily.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8235fd3fa6610017499cd1cfbf1a4350cba8d3ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
