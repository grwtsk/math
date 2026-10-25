# diagonalQ_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe7dbe39-4b8e-4c1f-fcbb-8a4bc37f41df",
  "kind": "theorem",
  "lexical_name": "diagonalQ_intro",
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
  "slug": "diagonalq-intro--f84e1207fcb0eb60bb639624",
  "source": {
    "blob": "05824c89348203f442239a609d1e1bf4bed1e2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f84e1207fcb0eb60bb6396240e2fa6393aeb41b1a6bd3b26e317d75501c20a1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe7dbe39-4b8e-4c1f-fcbb-8a4bc37f41df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalQ_intro {x : Expr S}
    (hx : HasType P Γ x B.xType) (mx : WellModed γ x .data)
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) i,
      HasType P Δ i (B.rename e.names).xPredType → WellModed δ i .data →
      Proves P Δ δ ((B.rename e.names).qStep (L.code.rename e.names) (KY.code.rename e.names)
        (KP.code.rename e.names)
        (x.rename e.names) i)) : Proves P Γ γ (B.diagonalQ L.code KY.code KP.code x) := by
  obtain ⟨s,hs⟩ := KP.triple.domain.1
  apply L.all_intro_future KP (H.relational_formed.channel.predicate_sorted
    H.relational_formed.probe.carrier_sorted)
    (H.relational_formed.channel.predicate_mode H.relational_formed.probe.carrier_mode)
    (H.relational_formed.channel.predicate_sorted H.relational_formed.probe.carrier_sorted s
      hs) (H.qBody_family KY KP hx mx)
  intro Δ δ e i hi mi
  rw [qBody_rename,qBody_instantiate]
  exact hh Δ δ e i (by change HasType P Δ i (B.xPredType.rename e.names) at hi; simpa only
    [xPredType_rename] using hi) mi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05824c89348203f442239a609d1e1bf4bed1e2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
