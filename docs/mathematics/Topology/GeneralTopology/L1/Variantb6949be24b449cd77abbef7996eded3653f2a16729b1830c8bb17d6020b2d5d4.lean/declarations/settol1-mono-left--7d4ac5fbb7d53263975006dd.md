# setToL1_mono_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c09abda-b2d8-1397-0b5c-4d2fbb7ca4c2",
  "kind": "theorem",
  "lexical_name": "setToL1_mono_left",
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
  "slug": "settol1-mono-left--7d4ac5fbb7d53263975006dd",
  "source": {
    "blob": "386f67fe88db074ae423f4776e95281b1363a2b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d4ac5fbb7d53263975006ddbc80d3170a0baf8aa28659f61fdeff5a33406677",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c09abda-b2d8-1397-0b5c-4d2fbb7ca4c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToL1_mono_left [OrderClosedTopology G''] {T T' : Set α → E →L[ℝ] G''} {C C' : ℝ}
    (hT : DominatedFinMeasAdditive μ T C) (hT' : DominatedFinMeasAdditive μ T' C')
    (hTT' : ∀ s x, T s x ≤ T' s x) (f : α →₁[μ] E) : setToL1 hT f ≤ setToL1 hT' f :=
  setToL1_mono_left' hT hT' (fun s _ _ x => hTT' s x) f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/L1/Variantb6949be24b449cd77abbef7996eded3653f2a16729b1830c8bb17d6020b2d5d4.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386f67fe88db074ae423f4776e95281b1363a2b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
