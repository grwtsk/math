# regular_extension_with_canonical_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bda9fd1c-69ca-9144-e41d-16f8df2ff5f7",
  "kind": "theorem",
  "lexical_name": "regular_extension_with_canonical_residue",
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
  "slug": "regular-extension-with-canonical-residue--39415846bd318cb6c279ca61",
  "source": {
    "blob": "f3743e01022b7680e5f779490ae148d3ce5d1d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39415846bd318cb6c279ca61fe6c8b4779c423eb6c3b867a7c3cc3be04fc358c",
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

Occurrence: `result:bda9fd1c-69ca-9144-e41d-16f8df2ff5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regular_extension_with_canonical_residue (root : ZeroPoint) (c : ℂ) (r : ℝ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    ∃ H : ℂ → ℂ, AnalyticOnNhd ℂ H (closedBall c r) ∧
      ∀ w ∈ closedBall c r, w ≠ root.1 →
        H w = deriv riemannZeta w / riemannZeta w - (multiplicity root : ℂ) / (w - root.1) := by
  exact exists_regular_extension riemannZeta root.1 (multiplicity root) (closedBall c r)
    (multiplicity_pos root) analytic (ball_subset_closedBall inside) root.2.1
    (multiplicity_cast root).symm (fun w hw different zero => different (isolated w hw zero))

/-- Exact line equality and multiplicity-weighted index coexist without a simplicity assumption.
The reflection-stable isolation premise is independent and is NOT supplied by this theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3743e01022b7680e5f779490ae148d3ce5d1d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
