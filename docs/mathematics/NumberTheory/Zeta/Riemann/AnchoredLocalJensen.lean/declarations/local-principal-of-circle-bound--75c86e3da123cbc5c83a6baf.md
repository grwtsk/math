# local_principal_of_circle_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed7e6837-667e-3614-1a3d-0bd36ad4e3fc",
  "kind": "theorem",
  "lexical_name": "local_principal_of_circle_bound",
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
  "slug": "local-principal-of-circle-bound--75c86e3da123cbc5c83a6baf",
  "source": {
    "blob": "f0597066244f0ecde390467f535b4c76acb9be81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75c86e3da123cbc5c83a6bafec70dc908a34a03a74693cc2c3b70b2b649cbb0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed7e6837-667e-3614-1a3d-0bd36ad4e3fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_principal_of_circle_bound (N : ℕ) (hN : 2 ≤ N) (M : ℝ) (hM : 1 ≤ M)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (σ y : ℝ) (hy : |y| = separatedHeight N) :
    ‖∑ z ∈ heightBand N, (multiplicity z : ℂ) /
      (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ ≤
        4 * (2 * Real.log (4 * M) / Real.log (6 / 5 : ℝ) + 1) *
          (2 * Real.log (4 * M) / Real.log (6 / 5 : ℝ)) :=
  local_principal_of_mass_bound N σ y _ hy (bandMass_le_of_circle_bound N hN M hM hp hm)

end
end GRWTSK.RiemannHypothesis.AnchoredLocalJensen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0597066244f0ecde390467f535b4c76acb9be81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
