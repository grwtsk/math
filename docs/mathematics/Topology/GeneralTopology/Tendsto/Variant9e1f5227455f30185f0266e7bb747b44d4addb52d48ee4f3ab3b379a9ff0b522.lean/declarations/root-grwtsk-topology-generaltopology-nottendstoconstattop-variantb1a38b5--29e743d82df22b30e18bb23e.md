# _root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.Antitone.upperBounds_range_comp_tendsto_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:614d57e7-5f78-16dc-2dda-9933f01b9abf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.Antitone.upperBounds_range_comp_tendsto_atBot",
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
  "slug": "root-grwtsk-topology-generaltopology-nottendstoconstattop-variantb1a38b5--29e743d82df22b30e18bb23e",
  "source": {
    "blob": "15417f9e74d98eaced8a9a6abbafcd46158a9c8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e743d82df22b30e18bb23e5cdccd3080fc625de7f534f94065d31ec9a09d9f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:614d57e7-5f78-16dc-2dda-9933f01b9abf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.Antitone.upperBounds_range_comp_tendsto_atBot [Preorder β] [Preorder γ]
    {l : Filter α} [l.NeBot] {f : β → γ} (hf : Antitone f) {g : α → β} (hg : Tendsto g l atBot) :
    upperBounds (range (f ∘ g)) = upperBounds (range f) :=
  hf.dual.lowerBounds_range_comp_tendsto_atTop hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15417f9e74d98eaced8a9a6abbafcd46158a9c8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
