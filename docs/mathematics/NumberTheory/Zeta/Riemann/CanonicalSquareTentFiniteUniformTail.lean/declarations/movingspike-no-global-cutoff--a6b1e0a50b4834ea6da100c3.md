# movingSpike_no_global_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de8de925-fa2e-d572-2672-d5cefd2cbcc5",
  "kind": "theorem",
  "lexical_name": "movingSpike_no_global_cutoff",
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
  "slug": "movingspike-no-global-cutoff--a6b1e0a50b4834ea6da100c3",
  "source": {
    "blob": "05baed43db04e28bc3e1a142a8b5097b0d071bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b1e0a50b4834ea6da100c3f79d48c0336bbb73b61af418f3081d38ae5c9005",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de8de925-fa2e-d572-2672-d5cefd2cbcc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem movingSpike_no_global_cutoff :
    ¬ ∃ N : ℕ, ∀ height : ℕ, N ≤ height →
      ∀ testIndex : ℕ,
        movingSpike height testIndex ≤ (1 / 2 : ℝ) := by
  rintro ⟨N, hN⟩
  have hbad := hN N (le_refl N) (N + 1)
  have hspike : movingSpike N (N + 1) = (1 : ℝ) := by
    simp [movingSpike]
  rw [hspike] at hbad
  norm_num at hbad

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteUniformTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentFiniteUniformTail.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05baed43db04e28bc3e1a142a8b5097b0d071bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
