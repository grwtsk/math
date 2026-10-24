# of_injective_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31934f91-98d6-8e4c-4ddd-114babe0e0b3",
  "kind": "lemma",
  "lexical_name": "of_injective_of_finiteDimensional",
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
  "slug": "of-injective-of-finitedimensional--c165db775e008aeaa769e217",
  "source": {
    "blob": "fbf1b77f5ae632652ef3cc0021772266176bcba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c165db775e008aeaa769e217a996dab6a99179f1afcd0716ff47fbf62833fd65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31934f91-98d6-8e4c-4ddd-114babe0e0b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_injective_of_finiteDimensional [CompleteSpace 𝕜] [FiniteDimensional 𝕜 F]
    (hf : Injective f) :
    f.HasLeftInverse := by
  -- An injective linear map has a linear inverse; this inverse is automatically continuous
  -- because its domain is finite-dimensional.
  obtain ⟨g, hg⟩ :=
    f.toLinearMap.exists_leftInverse_of_injective (f.ker_eq_bot_of_injective hf)
  exact ⟨⟨g, LinearMap.continuous_of_finiteDimensional _⟩, fun x ↦ congr($hg x)⟩

end NontriviallyNormedField

/-! An equivalent characterisation of maps with a continuous left inverse -/
section Ring

-- The next lemmas assume we are working over a ring.
variable {R E F : Type*} [Ring R]
  [TopologicalSpace E] [AddCommGroup E] [Module R E]
  [TopologicalSpace F] [AddCommGroup F] [Module R F] {f : E →L[R] F}

set_option backward.isDefEq.respectTransparency false in
/-- If `f` has a continuous left inverse, its range admits a closed complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf1b77f5ae632652ef3cc0021772266176bcba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
