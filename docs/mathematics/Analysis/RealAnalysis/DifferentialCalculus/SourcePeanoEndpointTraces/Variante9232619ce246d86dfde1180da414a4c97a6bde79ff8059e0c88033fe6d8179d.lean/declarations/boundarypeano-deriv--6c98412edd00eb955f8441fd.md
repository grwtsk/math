# boundaryPeano_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a97feeb-b042-538d-7658-04f2d6b9385b",
  "kind": "theorem",
  "lexical_name": "boundaryPeano_deriv",
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
  "slug": "boundarypeano-deriv--6c98412edd00eb955f8441fd",
  "source": {
    "blob": "87f0e125d12576be57c477f038f9b11dfb8670ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c98412edd00eb955f8441fd75aebfc64a2cd38f26e9c360ad51bfc4cce58781",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a97feeb-b042-538d-7658-04f2d6b9385b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPeano_deriv {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (boundaryPeano A) y =
      -peanoScale A * deriv (sourcePeanoPrimitive A) (2 * A - y) := by
  have hd := ((sourcePeanoPrimitive_contDiff_two hA).differentiable
    (by norm_num) (2 * A - y)).hasDerivAt
  have hc : HasDerivAt (fun z : ℝ => 2 * A - z) (-1) y := by
    simpa only [id_eq] using (hasDerivAt_id y).const_sub (2 * A)
  have h := (hd.comp y hc).const_mul (peanoScale A)
  exact (h.congr_deriv (by ring)).deriv

/-- The actual boundary primitive has zero value at y=0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoEndpointTraces/Variante9232619ce246d86dfde1180da414a4c97a6bde79ff8059e0c88033fe6d8179d.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87f0e125d12576be57c477f038f9b11dfb8670ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
