# normalize_type

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c689815-12d2-ca74-b3f9-2e6ba8a1ce1d",
  "kind": "theorem",
  "lexical_name": "normalize_type",
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
  "slug": "normalize-type--3d1bbd74b691f195ec278f11",
  "source": {
    "blob": "748568b1b47bbea3dd3ff6bf51ee6fd1523db07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 601,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d1bbd74b691f195ec278f11b7c4c99665bc9cddeaa45e1ea38fedc11a616a60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c689815-12d2-ca74-b3f9-2e6ba8a1ce1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize_type (h : HasType P Γ M A) (hw : SystemWeaklyNormalizing P) :
    HasType P Γ M A.normalForm := by
  obtain ⟨s, rfl⟩ | ⟨s, hA⟩ := h.regularity
  · simpa only [Expr.normalForm_of_normal (Normal.sort s)] using h
  · exact .conversion h (hA.normalForm hw)
      (Expr.normalForm_spec (h.type_weaklyNormalizing hw)).1.converts

end HasType

/-- The variable-headed spines used by the manuscript. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante9df3f6baae64c77eb820962e83d23450ca544275cc0808d9e9ac1fb95a60b61.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `748568b1b47bbea3dd3ff6bf51ee6fd1523db07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
