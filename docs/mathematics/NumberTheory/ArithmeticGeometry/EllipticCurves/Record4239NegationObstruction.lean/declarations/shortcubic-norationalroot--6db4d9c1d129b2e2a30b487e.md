# shortCubic_noRationalRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ab38078613591c8a8901ac9c477be120f2135df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9bfce1a-9080-de37-99d4-7abca39f6d5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1de25f98-30c6-baf0-342f-60b42e6e8020",
  "kind": "theorem",
  "lexical_name": "shortCubic_noRationalRoot",
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
  "slug": "shortcubic-norationalroot--6db4d9c1d129b2e2a30b487e",
  "source": {
    "blob": "1ab38078613591c8a8901ac9c477be120f2135df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 63,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6db4d9c1d129b2e2a30b487ec86b05cc9a2aa3672f3a6b2588b0e9b11838415f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1de25f98-30c6-baf0-342f-60b42e6e8020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortCubic_noRationalRoot (q : ℚ) :
    q ^ 3 + (shortA : ℚ) * q + (shortB : ℚ) ≠ 0 := by
  intro hq
  have hroot : Polynomial.aeval q shortCubic = 0 := by
    simpa [shortCubic] using hq
  obtain ⟨z, hzcast, _⟩ :=
    exists_integer_of_is_root_of_monic (A := ℤ) (K := ℚ)
      shortCubic_monic hroot
  have hcast : ((z ^ 3 + shortA * z + shortB : ℤ) : ℚ) = 0 := by
    rw [hzcast] at hq
    simpa using hq
  have hz : z ^ 3 + shortA * z + shortB = 0 := by
    exact_mod_cast hcast
  exact shortCubic_noIntegerRoot z hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab38078613591c8a8901ac9c477be120f2135df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
