# local_zero_with_regular_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a679e5fc-dbc1-61a7-780d-44aa2e31a81b",
  "kind": "theorem",
  "lexical_name": "local_zero_with_regular_bound",
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
  "slug": "local-zero-with-regular-bound--eb4aaf579db6d4ab9ff2945a",
  "source": {
    "blob": "52a3c7faf015ce0085c70c6188fa42c470f0f5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb4aaf579db6d4ab9ff2945aa59965f05fc2da38ef54196035d50c49650cff0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a679e5fc-dbc1-61a7-780d-44aa2e31a81b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_zero_with_regular_bound (hsource : ConcreteNewtonPacket.SourceAcceptance) :
    ∃ root : ZeroPoint, root.1.re = 1 / 2 ∧
      ‖root.1 - QComplex.embed ConcreteNewtonPacket.center‖ < (innerRadius : ℝ) ∧
      deriv riemannZeta root.1 ≠ 0 ∧
      (∀ w : ZeroPoint, ‖w.1 - QComplex.embed ConcreteNewtonPacket.center‖ ≤
        (ConcreteNewtonPacket.newtonRadius : ℝ) → w = root) ∧
      (∀ w ∈ closedBall (QComplex.embed ConcreteNewtonPacket.center)
        (ConcreteNewtonPacket.newtonRadius : ℝ), w ≠ root.1 → riemannZeta w ≠ 0 ∧
          ‖deriv riemannZeta w / riemannZeta w - 1 / (w - root.1)‖ ≤ (238728 / 5 : ℝ)) := by
  obtain ⟨root, onLine, located, _, derivativeNonzero, unique⟩ :=
    local_zero_with_inner_geometry_of_source hsource
  refine ⟨root, onLine, located, derivativeNonzero, unique, ?_⟩
  exact outer_pole_subtracted_bound hsource root (root_member_of_inner root located)

/-- Boundary separation from the ACTUAL root uses the independently retained inner location. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonRegularPart.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a3c7faf015ce0085c70c6188fa42c470f0f5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
