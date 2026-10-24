# eventually_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f2ec9c4-ffb9-a1c8-f925-6711c6c195f3",
  "kind": "theorem",
  "lexical_name": "eventually_prod_iff",
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
  "slug": "eventually-prod-iff--d2c0ca30201ff108a03e9006",
  "source": {
    "blob": "4bd752e4130f7138f196abd79a9207b4f99bdef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2c0ca30201ff108a03e9006440d615a92e522ab69ed2cc0cc5f3a5879855612",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f2ec9c4-ffb9-a1c8-f925-6711c6c195f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_prod_iff {p : α × β → Prop} :
    (∀ᶠ x in f ×ˢ g, p x) ↔
      ∃ pa : α → Prop, (∀ᶠ x in f, pa x) ∧ ∃ pb : β → Prop, (∀ᶠ y in g, pb y) ∧
        ∀ {x}, pa x → ∀ {y}, pb y → p (x, y) := by
  simpa only [Set.prod_subset_iff] using @mem_prod_iff α β p f g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant4c9e6bda6dca2bae5e87a2cd4b9940db1816c22c5768a9467bde984e570adea2.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd752e4130f7138f196abd79a9207b4f99bdef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
