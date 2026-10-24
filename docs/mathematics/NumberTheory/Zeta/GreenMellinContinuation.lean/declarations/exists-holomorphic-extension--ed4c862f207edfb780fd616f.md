# exists_holomorphic_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d088c32-5038-dfff-8ad6-7b6a6fb97201",
  "kind": "theorem",
  "lexical_name": "exists_holomorphic_extension",
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
  "slug": "exists-holomorphic-extension--ed4c862f207edfb780fd616f",
  "source": {
    "blob": "4d5ca3ac5b2d554941613a61dcb3ef65b444e842",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/GreenMellinContinuation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed4c862f207edfb780fd616f97d4a59ca97a071a34d9fb89768eca5efb4c8a71",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/GreenMellinContinuation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d088c32-5038-dfff-8ad6-7b6a6fb97201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_holomorphic_extension (hE : AllDyadicEnergyBound) :
    ∃ F : ℂ → ℂ,
      F=blockSeries ∧
      DifferentiableOn ℂ F {s : ℂ | 1/2<s.re} ∧
      ∀ s : ℂ, 1<s.re → F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1) := by
  exact ⟨blockSeries, rfl, continuation_of_energy hE⟩

end GRWTSK.NumberTheory.Zeta.GreenMellinContinuation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/GreenMellinContinuation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/GreenMellinContinuation.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d5ca3ac5b2d554941613a61dcb3ef65b444e842` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
