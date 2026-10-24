# positive_key_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d4d6b07-1721-c0d0-c337-7d29d5412d56",
  "kind": "theorem",
  "lexical_name": "positive_key_bounds",
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
  "slug": "positive-key-bounds--c3a19674e14eb4c18e34c8c5",
  "source": {
    "blob": "91500fac0e2bc25e45362d732b32fa699ff185f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative5/Variant89f8f68b3ac0e1c7cd4ca80f79bba1f10ee4c985757965f69982ea2bb615c6ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3a19674e14eb4c18e34c8c59bd6e67e05180431caf58b6fdd62e7af1b521473",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative5/Variant89f8f68b3ac0e1c7cd4ca80f79bba1f10ee4c985757965f69982ea2bb615c6ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d4d6b07-1721-c0d0-c337-7d29d5412d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem positive_key_bounds (y : ℝ) (hy : 0 < y) :
    ((⌈y⌉₊ - 1 : ℕ) : ℝ) < y ∧ y ≤ ((⌈y⌉₊ - 1 : ℕ) : ℝ) + 1 := by
  have hc : 1 ≤ ⌈y⌉₊ := Nat.one_le_ceil_iff.mpr hy
  have he : (⌈y⌉₊ - 1 : ℕ) + 1 = ⌈y⌉₊ := Nat.sub_add_cancel hc
  have h1 := Nat.le_ceil y
  have h2 := Nat.ceil_lt_add_one hy.le
  have hcast : ((⌈y⌉₊ : ℕ) : ℝ) = ((⌈y⌉₊ - 1 : ℕ) : ℝ) + 1 := by
    exact_mod_cast he.symm
  rw [hcast] at h1 h2
  exact ⟨by linarith, h1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative5/Variant89f8f68b3ac0e1c7cd4ca80f79bba1f10ee4c985757965f69982ea2bb615c6ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative5/Variant89f8f68b3ac0e1c7cd4ca80f79bba1f10ee4c985757965f69982ea2bb615c6ea.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91500fac0e2bc25e45362d732b32fa699ff185f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
