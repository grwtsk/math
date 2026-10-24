# quartic_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb9417e8f89f4ce3fe2afa5f0c2ad8e79bc310cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1260abdf-97c1-b815-ad33-e3ddb3af47ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bafb4327-7879-de1d-7ead-1a3c48994e06",
  "kind": "theorem",
  "lexical_name": "quartic_eq_zero_iff",
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
  "slug": "quartic-eq-zero-iff--79469c3cacd95db67a5294aa",
  "source": {
    "blob": "bb9417e8f89f4ce3fe2afa5f0c2ad8e79bc310cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 198,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79469c3cacd95db67a5294aa9ccb760ab24ad09533b6998662f78a408f6fcd2f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bafb4327-7879-de1d-7ead-1a3c48994e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_eq_zero_iff (ha : a ≠ 0)
    (hp : p = (8 * a * c - 3 * b ^ 2) / (8 * a ^ 2))
    (hq : q = (b ^ 3 - 4 * a * b * c + 8 * a ^ 2 * d) / (8 * a ^ 3)) (hq_nonzero : q ≠ 0)
    (hr : r =
      (16 * a * b ^ 2 * c + 256 * a ^ 3 * e - 3 * b ^ 4 - 64 * a ^ 2 * b * d) / (256 * a ^ 4))
    (hu : u ^ 3 - p * u ^ 2 - 4 * r * u + 4 * p * r - q ^ 2 = 0)
    (hs : s ^ 2 = u - p)
    (hv : v ^ 2 = 4 * s ^ 2 - 8 * (u - q / s))
    (hw : w ^ 2 = 4 * s ^ 2 - 8 * (u + q / s)) (x : K) :
    a * x ^ 4 + b * x ^ 3 + c * x ^ 2 + d * x + e = 0 ↔
      x = (-2 * s - v) / 4 - b / (4 * a) ∨ x = (-2 * s + v) / 4 - b / (4 * a) ∨
        x = (2 * s - w) / 4 - b / (4 * a) ∨ x = (2 * s + w) / 4 - b / (4 * a) := by
  let y := x + b / (4 * a)
  have h4 : (4 : K) = 2 ^ 2 := by norm_num
  have h8 : (8 : K) = 2 ^ 3 := by norm_num
  have h16 : (16 : K) = 2 ^ 4 := by norm_num
  have h256 : (256 : K) = 2 ^ 8 := by norm_num
  have h₁ : a * x ^ 4 + b * x ^ 3 + c * x ^ 2 + d * x + e =
      a * (y ^ 4 + p * y ^ 2 + q * y + r) := by
    simp only [h4, hp, h8, hq, hr, h16, h256, y]; field
  have h₂ : ∀ x, a * x = 0 ↔ x = 0 := by intro x; simp [ha]
  rw [h₁, h₂, quartic_depressed_eq_zero_iff hq_nonzero hu hs hv hw]
  simp_rw [y, eq_sub_iff_add_eq]

/-- The roots of a quartic polynomial when `q` equals zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant633f7fc57f039f88b05d6e29978648c32dd609a9ebeea1e3ef0ff95430ea9c9a.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9417e8f89f4ce3fe2afa5f0c2ad8e79bc310cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
