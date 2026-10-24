# concrete_root_multiplicity_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63e91478-9901-5cbb-090e-a9a050cfcc9c",
  "kind": "theorem",
  "lexical_name": "concrete_root_multiplicity_one",
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
  "slug": "concrete-root-multiplicity-one--f425cfbe93d5af55efd707a1",
  "source": {
    "blob": "f3743e01022b7680e5f779490ae148d3ce5d1d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f425cfbe93d5af55efd707a10dc92ea297b65883a27ac76cf5321f6dbc78a080",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63e91478-9901-5cbb-090e-a9a050cfcc9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concrete_root_multiplicity_one (hsource : ConcreteNewtonPacket.SourceAcceptance)
    (root : ZeroPoint)
    (located : ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ <
      (ConcreteNewtonLocalization.innerRadius : ℝ)) : multiplicity root = 1 := by
  have isolated : ∀ w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
      (ConcreteNewtonPacket.newtonRadius : ℝ), riemannZeta w = 0 → w = root.1 := by
    intro w hw zero
    by_contra different
    exact (ConcreteNewtonContour.outer_nonzero_away hsource root located w hw different) zero
  have canonical := normalized_index_eq_multiplicity root (QComplex.embed ConcreteNewtonPacket.center)
    (ConcreteNewtonPacket.newtonRadius : ℝ) ConcreteNewtonBoundary.outer_analytic
    (ConcreteNewtonContour.inner_root_in_outer_ball root located) isolated
  have equality : (multiplicity root : ℂ) = 1 :=
    canonical.symm.trans (ConcreteNewtonContour.normalized_outer_index hsource)
  exact_mod_cast equality

/-- Keep the original witness, radius, derivative result and outer uniqueness together with its weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3743e01022b7680e5f779490ae148d3ce5d1d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
