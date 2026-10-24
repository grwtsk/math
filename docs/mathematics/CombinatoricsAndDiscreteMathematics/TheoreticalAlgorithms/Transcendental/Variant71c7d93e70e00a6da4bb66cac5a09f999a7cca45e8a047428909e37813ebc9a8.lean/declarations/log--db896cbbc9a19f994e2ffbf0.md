# log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b2047f7f5e0cbaa8b3b7f28c474d835a75d158f650762d8bce6dd6c06ce2879",
  "kind": "def",
  "lexical_name": "log",
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
  "slug": "log--db896cbbc9a19f994e2ffbf0",
  "source": {
    "blob": "5f4d26807738525e298287e45eba1fc8b4bdd2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db896cbbc9a19f994e2ffbf0c51deb9acab7d6244c363510cdf151026d103ab8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b2047f7f5e0cbaa8b3b7f28c474d835a75d158f650762d8bce6dd6c06ce2879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def log (a : AffineForm) (_taylorDepth : Nat := 8) : AffineForm :=
  let I := a.toInterval
  if h : 0 < I.lo then
    let logI := IntervalRat.logInterval ⟨I, h⟩
    let mid := (logI.lo + logI.hi) / 2
    let rad := (logI.hi - logI.lo) / 2
    -- Use error term (coeffs = []) for soundness proof compatibility
    { c0 := mid
      coeffs := []
      r := |rad|
      r_nonneg := abs_nonneg _ }
  else
    -- Non-positive: undefined
    { c0 := 0, coeffs := [], r := 10^30, r_nonneg := by norm_num }

/-- Chebyshev linearization for log(x) on [lo, hi] with lo > 0.

    log'(x) = 1/x, so tangent at m is: L(x) = log(m) + (x - m)/m
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant71c7d93e70e00a6da4bb66cac5a09f999a7cca45e8a047428909e37813ebc9a8.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4d26807738525e298287e45eba1fc8b4bdd2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
