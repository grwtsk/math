# im_T_zpow_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3138b4af-1d15-e493-19ed-da9906a050d7",
  "kind": "theorem",
  "lexical_name": "im_T_zpow_smul",
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
  "slug": "im-t-zpow-smul--7df9022da653bb4dfb8f1934",
  "source": {
    "blob": "be9a75cc088185b7bfaba3fdc237ec3c32cf3469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 337,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7df9022da653bb4dfb8f1934428d8878a89cf5214daff8210f45a103a7ce6585",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3138b4af-1d15-e493-19ed-da9906a050d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem im_T_zpow_smul (n : ℤ) : (T ^ n • z).im = z.im := by
  rw [← coe_im, coe_T_zpow_smul_eq, add_im, int_cast_im, add_zero, coe_im]
#align modular_group.im_T_zpow_smul ModularGroup.im_T_zpow_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be9a75cc088185b7bfaba3fdc237ec3c32cf3469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
