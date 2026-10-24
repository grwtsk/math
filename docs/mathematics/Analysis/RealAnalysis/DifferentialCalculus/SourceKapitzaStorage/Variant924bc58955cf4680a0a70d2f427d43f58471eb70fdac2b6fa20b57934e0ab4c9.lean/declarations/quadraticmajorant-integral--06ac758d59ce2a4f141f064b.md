# quadraticMajorant_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53709371-6101-8717-29e0-9f3f341a2476",
  "kind": "theorem",
  "lexical_name": "quadraticMajorant_integral",
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
  "slug": "quadraticmajorant-integral--06ac758d59ce2a4f141f064b",
  "source": {
    "blob": "3dfa39af91b316a7e8abf5f10e10d8b7def595bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 271,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ac758d59ce2a4f141f064b110e23b150fe8f94b74ca8dc8b22991bf315f92b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53709371-6101-8717-29e0-9f3f341a2476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticMajorant_integral {y : ℝ} (hy : 1 ≤ y) :
    (∫ x in (1 : ℝ)..y, quadraticMajorant x) =
      quadraticConstant + quadraticPrimitive y := by
  have hi : IntervalIntegrable quadraticMajorant MeasureTheory.volume 1 y :=
    (quadraticMajorant_continuousOn hy).intervalIntegrable
  have hd : ∀ x ∈ Set.uIcc (1 : ℝ) y,
      HasDerivAt quadraticPrimitive (quadraticMajorant x) x := by
    intro x hx
    rw [Set.uIcc_of_le hy] at hx
    exact quadraticPrimitive_hasDerivAt (by linarith [hx.1])
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi, quadraticPrimitive_one]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dfa39af91b316a7e8abf5f10e10d8b7def595bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
