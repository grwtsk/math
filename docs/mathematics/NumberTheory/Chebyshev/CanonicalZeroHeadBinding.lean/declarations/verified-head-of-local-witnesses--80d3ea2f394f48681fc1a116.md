# verified_head_of_local_witnesses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06e5870b-424d-29d5-f176-5c51adf8e3a7",
  "kind": "theorem",
  "lexical_name": "verified_head_of_local_witnesses",
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
  "slug": "verified-head-of-local-witnesses--80d3ea2f394f48681fc1a116",
  "source": {
    "blob": "bdd3758a97c015385ab8d7381dda0882cfceeaa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 155,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80d3ea2f394f48681fc1a116cadd0ec05e18d268561a6c9d0b35a06f8d002388",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06e5870b-424d-29d5-f176-5c51adf8e3a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verified_head_of_local_witnesses (x h T : ℚ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput)
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hloc : LocalWitnesses rows)
    (hcount : heightCount (T : ℝ) ≤ ∑ i, (rows i).weight)
    (tolerance : ℚ) (out : State)
    (hv : GRWTSK.Analysis.Complex.RationalTentAccumulation.verify x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧ out.error ≤ tolerance :=
  verified_head_sound x h (T : ℝ) bits rows
    (of_local_witnesses T rows hgeometry hloc hcount) tolerance out hv

/-- The source bijection is no longer a caller input. The local witnesses,
actual total count and strict prime margin are NOT numerically manufactured. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd3758a97c015385ab8d7381dda0882cfceeaa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
