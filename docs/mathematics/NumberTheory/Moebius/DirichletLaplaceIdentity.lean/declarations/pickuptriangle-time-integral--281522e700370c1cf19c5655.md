# pickupTriangle_time_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e29e307-2331-1cf2-c9fc-044a08e79218",
  "kind": "theorem",
  "lexical_name": "pickupTriangle_time_integral",
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
  "slug": "pickuptriangle-time-integral--281522e700370c1cf19c5655",
  "source": {
    "blob": "a3bc2e035926b4bcec8faff5f06a23eebb11a38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 173,
    "path": "GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281522e700370c1cf19c5655a050f65a06868cfb04b8a750c85a1aa691eec05a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e29e307-2331-1cf2-c9fc-044a08e79218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupTriangle_time_integral (z : ℂ) (t : ℝ) (ht : 0 < t) :
    (∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      Complex.exp (-z * t) * (wholePickup t : ℂ) := by
  have heq : (fun u : ℝ => pickupTriangle z (t, u)) =
      (Iic t).indicator (fun u => Complex.exp (-z * t) * (pickupVelocity u : ℂ)) := by
    funext u
    rfl
  rw [heq, setIntegral_indicator measurableSet_Iic, Ioi_inter_Iic, integral_const_mul]
  congr 1
  unfold wholePickup
  rw [intervalIntegral.integral_of_le ht.le]
  exact integral_complex_ofReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3bc2e035926b4bcec8faff5f06a23eebb11a38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
