# gt_mem_sets_of_limsInf_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d571fa12-a31e-8755-8f33-402e79fa40f4",
  "kind": "theorem",
  "lexical_name": "gt_mem_sets_of_limsInf_gt",
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
  "slug": "gt-mem-sets-of-limsinf-gt--32649585c118409b3a69895a",
  "source": {
    "blob": "6bb6f68696a7a7b28e6d53db60694dffcc5045f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32649585c118409b3a69895a893118460134f09332a293743b54fe3470a043e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d571fa12-a31e-8755-8f33-402e79fa40f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gt_mem_sets_of_limsInf_gt :
    ∀ {f : Filter α} {b}, f.IsBounded (· ≥ ·) → b < f.limsInf → ∀ᶠ a in f, b < a :=
  @lt_mem_sets_of_limsSup_lt αᵒᵈ _
set_option linter.uppercaseLean3 false in
#align gt_mem_sets_of_Liminf_gt gt_mem_sets_of_limsInf_gt

variable [TopologicalSpace α] [OrderTopology α]

/-- If the liminf and the limsup of a filter coincide, then this filter converges to
their common value, at least if the filter is eventually bounded above and below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bb6f68696a7a7b28e6d53db60694dffcc5045f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
