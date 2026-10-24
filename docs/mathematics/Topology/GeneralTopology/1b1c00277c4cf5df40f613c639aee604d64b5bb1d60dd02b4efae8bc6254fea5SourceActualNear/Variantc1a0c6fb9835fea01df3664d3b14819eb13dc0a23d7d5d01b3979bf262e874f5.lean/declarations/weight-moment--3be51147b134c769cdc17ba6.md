# weight_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63eee663-c66f-5e02-8a64-1b54c6e7cb87",
  "kind": "theorem",
  "lexical_name": "weight_moment",
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
  "slug": "weight-moment--3be51147b134c769cdc17ba6",
  "source": {
    "blob": "b61c8ef27ab6d85467f28f967822735d25dc0402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3be51147b134c769cdc17ba6192c0b12f7d2faf6f633d734f0c126f0f70382e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63eee663-c66f-5e02-8a64-1b54c6e7cb87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weight_moment (T : ℝ) :
    (∫ t in 0..T, Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t)) =
      (5 / 2 : ℝ) * Real.exp (T / 2) * T ^ 2 := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ =>
      (5 / 2 : ℝ) * Real.exp (t / 2) * t ^ 2)
      (Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t)) t := by
    exact (((((hasDerivAt_id t).div_const 2).exp).const_mul (5 / 2 : ℝ)).mul
      ((hasDerivAt_id t).pow 2)).congr_deriv (by simp only [id_eq, Pi.pow_apply]; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ =>
      Real.exp (t / 2) * ((5 / 4 : ℝ) * t ^ 2 + 5 * t))).intervalIntegrable _ _)]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61c8ef27ab6d85467f28f967822735d25dc0402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
