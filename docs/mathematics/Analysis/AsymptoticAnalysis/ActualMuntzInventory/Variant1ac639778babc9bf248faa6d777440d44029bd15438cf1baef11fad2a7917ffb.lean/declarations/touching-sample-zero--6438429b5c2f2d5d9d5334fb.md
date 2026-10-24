# touching_sample_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e19355d1-bdec-7c87-33d6-731133b1d8a7",
  "kind": "theorem",
  "lexical_name": "touching_sample_zero",
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
  "slug": "touching-sample-zero--6438429b5c2f2d5d9d5334fb",
  "source": {
    "blob": "1b247482c32a327091274e4b1a98109f65e22519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 88,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6438429b5c2f2d5d9d5334fb27363a0aa2dd3c823d79d2f21d9c825d15dd16eb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e19355d1-bdec-7c87-33d6-731133b1d8a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem touching_sample_zero {A : ℝ} (hA : 0 < A) {n : ℕ} (hn : 0 < n) :
    actualLogSource A ((n : ℝ)*(Real.exp A/(n : ℝ))) = 0 := by
  rw [mul_div_cancel₀ _ (by exact_mod_cast hn.ne' : (n : ℝ) ≠ 0)]
  exact actualLogSource_zero_outside hA (Or.inr le_rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventory/Variant1ac639778babc9bf248faa6d777440d44029bd15438cf1baef11fad2a7917ffb.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b247482c32a327091274e4b1a98109f65e22519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
