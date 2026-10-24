# iInf_colon_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4a6201b-b10b-1476-9f2a-70250bd91dc7",
  "kind": "theorem",
  "lexical_name": "iInf_colon_iSup",
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
  "slug": "iinf-colon-isup--c8e81323db812e16b9303816",
  "source": {
    "blob": "d93bb8daa13aa4395647185dd4aa01fbafca6654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 383,
    "path": "GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8e81323db812e16b9303816ab5867d62986ba5bad94a4a7a26b8b72490096e8",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4a6201b-b10b-1476-9f2a-70250bd91dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_colon_iSup (ι₁ : Sort w) (f : ι₁ → Submodule R M) (ι₂ : Sort x)
    (g : ι₂ → Submodule R M) : (⨅ i, f i).colon (⨆ j, g j) = ⨅ (i) (j), (f i).colon (g j) :=
  le_antisymm (le_iInf fun _ => le_iInf fun _ => colon_mono (iInf_le _ _) (le_iSup _ _)) fun _ H =>
    mem_colon'.2 <|
      iSup_le fun j =>
        map_le_iff_le_comap.1 <|
          le_iInf fun i =>
            map_le_iff_le_comap.2 <|
              mem_colon'.1 <|
                have := (mem_iInf _).1 H i
                have := (mem_iInf _).1 this j
                this
#align submodule.infi_colon_supr Submodule.iInf_colon_iSup

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93bb8daa13aa4395647185dd4aa01fbafca6654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
