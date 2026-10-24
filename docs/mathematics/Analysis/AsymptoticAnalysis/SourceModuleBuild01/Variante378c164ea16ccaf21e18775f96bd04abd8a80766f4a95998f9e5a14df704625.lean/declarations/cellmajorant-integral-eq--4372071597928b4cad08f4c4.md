# cellMajorant_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9b8e289-bcca-f299-80d0-6a29d4f62b0d",
  "kind": "theorem",
  "lexical_name": "cellMajorant_integral_eq",
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
  "slug": "cellmajorant-integral-eq--4372071597928b4cad08f4c4",
  "source": {
    "blob": "4b62b1d8a2b49a21dae5ccf0e7c6b5066acfb8d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 129,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4372071597928b4cad08f4c43d8d92c16012a1191043e7362532141de2ae0189",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9b8e289-bcca-f299-80d0-6a29d4f62b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellMajorant_integral_eq {c b : ℝ} (hc : 1 < c) (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, cellMajorant c x) =
      dirichletBudget c -
        (Real.log 2 + Real.log b + 1 / (c - 1)) * b ^ (1 - c) / (c - 1) := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (f := majorantPrimitive c) ?_
    (cellMajorant_intervalIntegrable c zero_lt_one hb), majorantPrimitive_one hc]
  · simp only [majorantPrimitive]
    ring
  · intro x hx
    rw [uIcc_of_le hb] at hx
    exact majorantPrimitive_hasDerivAt hc (zero_lt_one.trans_le hx.1)

/-- The explicit integral budget is valid over every real upper endpoint at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b62b1d8a2b49a21dae5ccf0e7c6b5066acfb8d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
