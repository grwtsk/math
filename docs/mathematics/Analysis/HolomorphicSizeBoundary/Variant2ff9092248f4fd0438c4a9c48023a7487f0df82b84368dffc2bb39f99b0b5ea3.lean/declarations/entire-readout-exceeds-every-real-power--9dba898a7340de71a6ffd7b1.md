# entire_readout_exceeds_every_real_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:591814a5-3032-cead-8da7-4c974630ac0f",
  "kind": "theorem",
  "lexical_name": "entire_readout_exceeds_every_real_power",
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
  "slug": "entire-readout-exceeds-every-real-power--9dba898a7340de71a6ffd7b1",
  "source": {
    "blob": "cad8b9357297a34ab2095287b3472df00d49a025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dba898a7340de71a6ffd7b1e26e7cf738c610d8e4eb026bf6821bcebf15ef8f",
  "verification": {
    "reference": "docs/verification/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:591814a5-3032-cead-8da7-4c974630ac0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entire_readout_exceeds_every_real_power (C B : ℝ) {R : ℝ} (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ C * A ^ B < ‖singleAtomFamily A 1‖ := by
  simpa only [readout_norm] using exceeds_every_real_power C B hR

end
end GRWTSK.RiemannHypothesis.Conversation.HolomorphicSizeBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HolomorphicSizeBoundary/Variant2ff9092248f4fd0438c4a9c48023a7487f0df82b84368dffc2bb39f99b0b5ea3.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cad8b9357297a34ab2095287b3472df00d49a025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
