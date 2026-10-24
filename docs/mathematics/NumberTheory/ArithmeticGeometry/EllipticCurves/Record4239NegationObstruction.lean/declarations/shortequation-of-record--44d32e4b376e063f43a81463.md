# shortEquation_of_record

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
      "line": 89,
      "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c974df69-f03b-a1ca-34d4-88fc5fcadf21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fb76b26-428b-143b-8141-3e7a7ae63166",
  "kind": "theorem",
  "lexical_name": "shortEquation_of_record",
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
  "slug": "shortequation-of-record--44d32e4b376e063f43a81463",
  "source": {
    "blob": "1ab38078613591c8a8901ac9c477be120f2135df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 89,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44d32e4b376e063f43a81463384bc47eada98cbcba091a8a26b85f3a3f366fdd",
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

Occurrence: `result:1fb76b26-428b-143b-8141-3e7a7ae63166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortEquation_of_record
    (x y : ℚ) (h : OnRecordModel x y) :
    (108 * (2 * y + x)) ^ 2 =
      (36 * x + 3) ^ 3 +
      (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ) := by
  have hbase :
      y ^ 2 + x * y - x ^ 3 + (A : ℚ) * x - (B : ℚ) = 0 := by
    dsimp [OnRecordModel] at h
    linear_combination h
  have hA : (shortA : ℚ) = -27 * (1 + 48 * (A : ℚ)) := by
    exact_mod_cast shortA_relation
  have hB : (shortB : ℚ) = 54 * (1 + 72 * (A : ℚ) + 864 * (B : ℚ)) := by
    exact_mod_cast shortB_relation
  have hidentity :
      (108 * (2 * y + x)) ^ 2 -
          ((36 * x + 3) ^ 3 +
            (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ)) =
        46656 * (y ^ 2 + x * y - x ^ 3 + (A : ℚ) * x - (B : ℚ)) := by
    rw [hA, hB]
    ring
  apply sub_eq_zero.mp
  calc
    (108 * (2 * y + x)) ^ 2 -
        ((36 * x + 3) ^ 3 +
          (shortA : ℚ) * (36 * x + 3) + (shortB : ℚ)) =
        46656 * (y ^ 2 + x * y - x ^ 3 + (A : ℚ) * x - (B : ℚ)) := hidentity
    _ = 0 := by rw [hbase]; ring

/-- The potential rational two-torsion affine locus on the actual record
model is empty: y = -y-x cannot hold at any rational solution. This is the
exact coordinate condition consumed by the native point-negation port. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab38078613591c8a8901ac9c477be120f2135df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
