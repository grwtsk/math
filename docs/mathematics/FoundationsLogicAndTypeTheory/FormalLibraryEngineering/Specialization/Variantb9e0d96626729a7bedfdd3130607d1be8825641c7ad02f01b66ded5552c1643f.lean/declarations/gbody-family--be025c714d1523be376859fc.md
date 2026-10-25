# gBody_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3510a45-82f9-6993-1773-4d4aa4830425",
  "kind": "theorem",
  "lexical_name": "gBody_family",
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
  "slug": "gbody-family--be025c714d1523be376859fc",
  "source": {
    "blob": "671204504e601f15ffbc630afc2f2b204f0486e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1520,
    "line": 1510,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be025c714d1523be376859fc46ca135830a7f9f93ef8f8d52df83b088f8b5d11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3510a45-82f9-6993-1773-4d4aa4830425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1510–1520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gBody_family {v : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data)
    : L.Family B.yType (B.gBody L.code KY.code KP.code v) := by
  intro Δ δ e y hy my
  rw [gBody_rename,gBody_instantiate]
  have hv' : HasType P Δ (v.rename e.names) (B.rename e.names).predType := by
    simpa only [predType_rename] using e.typing hv
  have hy' : HasType P Δ y (B.rename e.names).yType := by
    simpa only [yType_rename] using hy
  exact (H.rename e).gAt_formula (KY.rename e) (KP.rename e) hv' (e.moded mv) hy' my

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean#L1510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671204504e601f15ffbc630afc2f2b204f0486e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
