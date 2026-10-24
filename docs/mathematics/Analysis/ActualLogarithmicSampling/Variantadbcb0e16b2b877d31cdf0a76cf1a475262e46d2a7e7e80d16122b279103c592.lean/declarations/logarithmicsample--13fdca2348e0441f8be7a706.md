# logarithmicSample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:350a6a8078f9f7779a0c1bd96c0b5bdb9c4eeb76d933d896faf0ae83fe1567e3",
  "kind": "def",
  "lexical_name": "logarithmicSample",
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
  "slug": "logarithmicsample--13fdca2348e0441f8be7a706",
  "source": {
    "blob": "eff1d92c91177d8e48df6cd3a660fdf0106e8b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13fdca2348e0441f8be7a7064c8945922007d5723edece0d13861f98d676b22b",
  "verification": {
    "reference": "docs/verification/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:350a6a8078f9f7779a0c1bd96c0b5bdb9c4eeb76d933d896faf0ae83fe1567e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logarithmicSample (A r x : ℝ) : ℝ := C A (r * Real.log x)
/-- The logarithmic derivative in this module, with the following exact parameterization.

def logarithmicDerivative (A r x : ℝ) : ℝ := r * deriv (C A) (r * Real.log x) / x
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eff1d92c91177d8e48df6cd3a660fdf0106e8b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
