# ptendsto_of_ptendsto'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4678b30-41e3-ccae-ef1d-ba5d707d53d5",
  "kind": "theorem",
  "lexical_name": "ptendsto_of_ptendsto'",
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
  "slug": "ptendsto-of-ptendsto--96d8ef1fc6abd01afb2c6eef",
  "source": {
    "blob": "e1c952f4ea401743a475f2c0df802638a62720a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96d8ef1fc6abd01afb2c6eef13ee26f557245504e619f9851f94003b0c9a66d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4678b30-41e3-ccae-ef1d-ba5d707d53d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ptendsto_of_ptendsto' {f : α →. β} {l₁ : Filter α} {l₂ : Filter β} :
    PTendsto' f l₁ l₂ → PTendsto f l₁ l₂ := by
  rw [ptendsto_def, ptendsto'_def]
  exact fun h s sl₂ => mem_of_superset (h s sl₂) (PFun.preimage_subset_core _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Partial/Variantb75ce5562ee6e1b93b4b268dc7c3bde566a10a1b694aa220331117a1f9657e12.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c952f4ea401743a475f2c0df802638a62720a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
