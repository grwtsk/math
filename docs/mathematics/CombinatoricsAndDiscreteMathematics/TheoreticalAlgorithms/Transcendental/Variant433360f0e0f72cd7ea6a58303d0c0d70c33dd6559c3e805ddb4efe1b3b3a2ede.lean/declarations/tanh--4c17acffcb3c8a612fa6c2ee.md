# tanh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3554e51c98d263ea694eacf1febfaa01f319e2b95b68d0e2ff406d207b4779e",
  "kind": "def",
  "lexical_name": "tanh",
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
  "slug": "tanh--4c17acffcb3c8a612fa6c2ee",
  "source": {
    "blob": "ea52ba339990d060b7c387fbe9ee10c225d1b912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c17acffcb3c8a612fa6c2ee54c71080893a56e879740269b789fc4c63add9ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3554e51c98d263ea694eacf1febfaa01f319e2b95b68d0e2ff406d207b4779e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tanh (a : AffineForm) : AffineForm :=
  let I := a.toInterval
  let tanhI := LeanCert.Engine.tanhInterval I
  let mid := (tanhI.lo + tanhI.hi) / 2
  let rad := (tanhI.hi - tanhI.lo) / 2
  -- Use error term (coeffs = []) for soundness proof compatibility
  { c0 := mid
    coeffs := []
    r := |rad|
    r_nonneg := abs_nonneg _ }

/-- Chebyshev linearization for tanh(x).

    tanh'(x) = 1 - tanh²(x) = sech²(x)

    For small x: tanh(x) ≈ x with error O(x³)
    For large |x|: tanh(x) ≈ ±1

    We use the tangent at midpoint as approximation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea52ba339990d060b7c387fbe9ee10c225d1b912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
