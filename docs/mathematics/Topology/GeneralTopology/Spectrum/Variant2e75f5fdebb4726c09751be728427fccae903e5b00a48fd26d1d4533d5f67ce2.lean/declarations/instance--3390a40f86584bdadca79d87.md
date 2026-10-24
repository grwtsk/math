# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a882b41e69f18b87a5de17a427563e018e3320263c5dcf060bf200640f5152b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3390a40f86584bdadca79d87",
  "source": {
    "blob": "bf59cb683626bdb1ddf05237d1b6b5508356ead1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3390a40f86584bdadca79d87fecafd5658e53bc4d18e34d4188021d39838b788",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a882b41e69f18b87a5de17a427563e018e3320263c5dcf060bf200640f5152b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance (priority := 100) Complex.instStarHomClass : StarHomClass F A ℂ where
  map_star φ a := by
    suffices hsa : ∀ s : selfAdjoint A, (φ s)⋆ = φ s by
      rw [← realPart_add_I_smul_imaginaryPart a]
      simp only [map_add, map_smul, star_add, star_smul, hsa, selfAdjoint.star_val_eq]
    intro s
    have := AlgHom.apply_mem_spectrum φ (s : A)
    rw [selfAdjoint.val_re_map_spectrum s] at this
    rcases this with ⟨⟨_, _⟩, _, heq⟩
    simp only [Function.comp_apply] at heq
    rw [← heq, RCLike.star_def]
    exact RCLike.conj_ofReal _

/-- This is not an instance to avoid type class inference loops. See
`WeakDual.Complex.instStarHomClass`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2e75f5fdebb4726c09751be728427fccae903e5b00a48fd26d1d4533d5f67ce2.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf59cb683626bdb1ddf05237d1b6b5508356ead1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
