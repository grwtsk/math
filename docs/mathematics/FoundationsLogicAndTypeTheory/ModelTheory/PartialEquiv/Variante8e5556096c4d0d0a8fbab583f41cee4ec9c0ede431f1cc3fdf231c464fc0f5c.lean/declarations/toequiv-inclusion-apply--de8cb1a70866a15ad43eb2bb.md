# toEquiv_inclusion_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d4c9f28-8e38-e61b-8787-992f4a941308",
  "kind": "theorem",
  "lexical_name": "toEquiv_inclusion_apply",
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
  "slug": "toequiv-inclusion-apply--de8cb1a70866a15ad43eb2bb",
  "source": {
    "blob": "ecd5ae63a5e6963f650710a9d9703978cfb17485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de8cb1a70866a15ad43eb2bb5352e68ce28723287fff792a4e4e14e326394004",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d4c9f28-8e38-e61b-8787-992f4a941308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toEquiv_inclusion_apply {f g : M ≃ₚ[L] N} (h : f ≤ g) (x : f.dom) :
    g.toEquiv (Substructure.inclusion (dom_le_dom h) x) =
      Substructure.inclusion (cod_le_cod h) (f.toEquiv x) := by
  apply (subtype _).injective
  change (subtype _).comp (g.toEquiv.toEmbedding.comp (inclusion _)) x = _
  rw [subtype_toEquiv_inclusion h]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd5ae63a5e6963f650710a9d9703978cfb17485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
