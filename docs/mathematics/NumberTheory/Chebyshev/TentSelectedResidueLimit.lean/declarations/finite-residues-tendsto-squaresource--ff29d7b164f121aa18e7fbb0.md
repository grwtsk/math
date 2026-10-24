# finite_residues_tendsto_squareSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:330e7911-5463-bb16-50b6-3311f14fdd66",
  "kind": "theorem",
  "lexical_name": "finite_residues_tendsto_squareSource",
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
  "slug": "finite-residues-tendsto-squaresource--ff29d7b164f121aa18e7fbb0",
  "source": {
    "blob": "135a5c01991efd725d2b4a10102db71dac32fa04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff29d7b164f121aa18e7fbb039168d2e201a3b8589d0d95c7f440388316931fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:330e7911-5463-bb16-50b6-3311f14fdd66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_residues_tendsto_squareSource (n : ℕ) (hn : 2 ≤ n) :
    Tendsto (fun N : ℕ =>
      ((squareRadius n : ℂ) - (∑ z ∈ heightHead (separatedHeight N),
        (multiplicity z : ℂ) * tentKernel (squareCenter n) (squareRadius n) z.1) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)))
      atTop (𝓝 (squareTentMangoldt n : ℂ)) := by
  have hR := separated_right_tendsto_squareSource n hn
  have hE := combined_rays_tendsto_zero (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)
  have ht := hR.sub hE
  have he : (fun N : ℕ =>
      vertical (integrand (squareCenter n) (squareRadius n)) 2 (separatedHeight N) /
        ((2 * Real.pi : ℝ) : ℂ) -
      (horizontalRay (squareCenter n) (squareRadius n) (separatedHeight N) -
        horizontalRay (squareCenter n) (squareRadius n) (-separatedHeight N)) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I)) =ᶠ[atTop]
      (fun N : ℕ => (squareRadius n : ℂ) -
        (∑ z ∈ heightHead (separatedHeight N),
          (multiplicity z : ℂ) * tentKernel (squareCenter n) (squareRadius n) z.1) +
        (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)) := by
    apply Eventually.of_forall
    intro N
    dsimp only
    rw [right_eq_residues_add_horizontalRays (squareCenter n) (squareRadius n)
      (separatedHeight N) (squareRadius_pos n) (square_tent_domain n hn)
      (separatedHeight_pos N) (separatedHeight_avoids N)]
    ring
  simpa only [sub_zero] using (tendsto_congr' he).mp ht

/-- The sum is over actual complete finite heads, not an arbitrary observed list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135a5c01991efd725d2b4a10102db71dac32fa04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
