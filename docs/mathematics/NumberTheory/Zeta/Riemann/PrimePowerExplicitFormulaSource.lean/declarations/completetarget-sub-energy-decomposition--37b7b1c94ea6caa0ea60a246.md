# completeTarget_sub_energy_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b485254f-264f-0648-e752-b4b1f6897278",
  "kind": "theorem",
  "lexical_name": "completeTarget_sub_energy_decomposition",
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
  "slug": "completetarget-sub-energy-decomposition--37b7b1c94ea6caa0ea60a246",
  "source": {
    "blob": "66a7514a998becd17be8ec4d99f66f046612bee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 151,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37b7b1c94ea6caa0ea60a246de1e51727fc30819e5fab3673387f3cc1d445e41",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b485254f-264f-0648-e752-b4b1f6897278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeTarget_sub_energy_decomposition
    {T : Type*} {source : Source T} {target : T → ℝ}
    (hsource : CompleteTargetIdentity source target) (f : T) :
    target f - stageEnergy (source.stage f) (source.test f) =
      source.quadraticizationResidual f +
      source.archimedean f +
      source.pole f +
      source.trivialZero f +
      source.nontrivialZero f +
      source.endpoint f +
      source.tail f := by
  rw [hsource f]
  unfold Source.completeChannelSum Source.quadraticizationResidual
  ring

/-- A source-level comparison record retaining each channel separately.
Logical and analytic validity of the target identity is carried by
sourceIdentity; it is not inferred from strings or field names. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a7514a998becd17be8ec4d99f66f046612bee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
