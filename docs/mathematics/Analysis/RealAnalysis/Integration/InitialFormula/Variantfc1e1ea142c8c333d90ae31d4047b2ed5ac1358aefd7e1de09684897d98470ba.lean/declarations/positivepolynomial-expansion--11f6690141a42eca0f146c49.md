# positivePolynomial_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcd42d32-2e7e-3db1-7382-96faa5ba632a",
  "kind": "theorem",
  "lexical_name": "positivePolynomial_expansion",
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
  "slug": "positivepolynomial-expansion--11f6690141a42eca0f146c49",
  "source": {
    "blob": "0b22a534e84e8f05da2fde359148713862f11f68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f6690141a42eca0f146c49ef4157fe4a97cda217c651ed840e6102af632e9c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcd42d32-2e7e-3db1-7382-96faa5ba632a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePolynomial_expansion (z : ℂ) :
    positivePolynomial z =
      C (z ^ 8) * X ^ 8 -
      C (20 * z ^ 7) * X ^ 7 +
      C (190 * z ^ 6) * X ^ 6 -
      C (1110 * z ^ 5) * X ^ 5 +
      C (4335 * z ^ 4) * X ^ 4 -
      C (11550 * z ^ 3) * X ^ 3 +
      C (20475 * z ^ 2) * X ^ 2 -
      C (22050 * z) * X + C 11025 := by
  simp only [positivePolynomial, scalePolynomial,
    map_mul, map_pow, map_ofNat]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variantfc1e1ea142c8c333d90ae31d4047b2ed5ac1358aefd7e1de09684897d98470ba.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b22a534e84e8f05da2fde359148713862f11f68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
