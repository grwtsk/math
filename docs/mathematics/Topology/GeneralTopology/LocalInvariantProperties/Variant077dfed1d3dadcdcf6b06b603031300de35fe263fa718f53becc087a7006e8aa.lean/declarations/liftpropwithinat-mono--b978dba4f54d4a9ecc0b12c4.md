# liftPropWithinAt_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5531f3b-219f-3085-92d8-33d2e7abd4a6",
  "kind": "theorem",
  "lexical_name": "liftPropWithinAt_mono",
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
  "slug": "liftpropwithinat-mono--b978dba4f54d4a9ecc0b12c4",
  "source": {
    "blob": "0e497d787ca2cb9e80a13f7df41c26cb91d46ff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 440,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b978dba4f54d4a9ecc0b12c46d0898a1485b89b562d10bd4be66de9b25542e91",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5531f3b-219f-3085-92d8-33d2e7abd4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropWithinAt_mono (mono : ∀ ⦃s x t⦄ ⦃f : H → H'⦄, t ⊆ s → P f s x → P f t x)
    (h : LiftPropWithinAt P g s x) (hts : t ⊆ s) : LiftPropWithinAt P g t x := by
  refine ⟨h.1.mono hts, mono (fun y hy ↦ ?_) h.2⟩
  simp only [mfld_simps] at hy
  simp only [hy, hts _, mfld_simps]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e497d787ca2cb9e80a13f7df41c26cb91d46ff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
