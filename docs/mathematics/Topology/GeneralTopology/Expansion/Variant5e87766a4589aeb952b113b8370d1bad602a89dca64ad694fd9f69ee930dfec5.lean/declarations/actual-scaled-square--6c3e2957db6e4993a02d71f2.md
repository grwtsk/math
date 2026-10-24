# actual_scaled_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bae80e1176fa7da5398efa908fef8f55cb2f546",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3fe39ea-6ab1-b0de-1ef2-373b97e80906",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f01fae08-4e48-0fe7-c376-7087a8d6a984",
  "kind": "theorem",
  "lexical_name": "actual_scaled_square",
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
  "slug": "actual-scaled-square--6c3e2957db6e4993a02d71f2",
  "source": {
    "blob": "7bae80e1176fa7da5398efa908fef8f55cb2f546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c3e2957db6e4993a02d71f29edc6776ebb6c6740a44d0e2973628d4bd40ada8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f01fae08-4e48-0fe7-c376-7087a8d6a984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scaled_square
    (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) :
    (A : ℂ) ^ 17 * bilateralTransform A z ^ 2 =
      modeCoefficient z *
        (Complex.exp ((A : ℂ) * z) *
            transformPolynomial ((A : ℂ) * z) -
          Complex.exp (-((A : ℂ) * z)) *
            transformPolynomial (-((A : ℂ) * z))) ^ 2 := by
  rw [ZeroTransform.actual_transform A hA z hz]
  unfold dividedTransform modeCoefficient
  rw [ZeroTransform.source_scale A hA]
  push_cast
  have ha : (A : ℂ) ≠ 0 := by
    exact_mod_cast hA.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  have hsq : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hA.le
  field_simp
  ring_nf
  simp only [hsq]
  ring

/-- Squaring the numerator gives exactly the positive shift, reflected negative
shift, and unshifted mixed term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bae80e1176fa7da5398efa908fef8f55cb2f546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
