# jacobiSymNat.even_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f6074dc1143b2b3168bc55b2c3682cd701939fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40dfb19b-9a99-ecc3-a045-13698cd04353",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a5e87af-f6de-dfce-1501-56d89ce46e18",
  "kind": "theorem",
  "lexical_name": "jacobiSymNat.even_even",
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
  "slug": "jacobisymnat-even-even--74aaa28cf1575499e3eee310",
  "source": {
    "blob": "1f6074dc1143b2b3168bc55b2c3682cd701939fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74aaa28cf1575499e3eee310e9d75b90322f713291753a9022084293a9549414",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a5e87af-f6de-dfce-1501-56d89ce46e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSymNat.even_even (a b : ℕ) (hb₀ : Nat.beq (b / 2) 0 = false) (ha : a % 2 = 0)
    (hb₁ : b % 2 = 0) : jacobiSymNat a b = 0 := by
  refine jacobiSym.eq_zero_iff.mpr
    ⟨ne_of_gt ((Nat.pos_of_ne_zero (Nat.ne_of_beq_eq_false hb₀)).trans_le (Nat.div_le_self b 2)),
      fun hf => ?_⟩
  have h : 2 ∣ a.gcd b := Nat.dvd_gcd (Nat.dvd_of_mod_eq_zero ha) (Nat.dvd_of_mod_eq_zero hb₁)
  change 2 ∣ (a : ℤ).gcd b at h
  rw [hf, ← even_iff_two_dvd] at h
  exact Nat.not_even_one h

/-- When `a` is odd and `b` is even, we can replace `b` by `b / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f6074dc1143b2b3168bc55b2c3682cd701939fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
