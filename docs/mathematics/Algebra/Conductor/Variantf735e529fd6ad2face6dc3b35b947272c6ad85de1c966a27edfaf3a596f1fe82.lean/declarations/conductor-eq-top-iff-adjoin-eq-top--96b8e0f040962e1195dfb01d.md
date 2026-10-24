# conductor_eq_top_iff_adjoin_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0134be63-08e2-2ede-bbc5-66719ddff009",
  "kind": "theorem",
  "lexical_name": "conductor_eq_top_iff_adjoin_eq_top",
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
  "slug": "conductor-eq-top-iff-adjoin-eq-top--96b8e0f040962e1195dfb01d",
  "source": {
    "blob": "edff584f5fa01f744a936b064b73c47f5932e991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 68,
    "path": "GRWTSK/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96b8e0f040962e1195dfb01d277c5b7c112fa733ff695bfeddffdf533263d06e",
  "verification": {
    "reference": "docs/verification/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0134be63-08e2-2ede-bbc5-66719ddff009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductor_eq_top_iff_adjoin_eq_top {x : S} :
    conductor R x = ⊤ ↔ R[x] = ⊤ :=
  ⟨fun h ↦ adjoin_eq_top_of_conductor_eq_top h, fun h ↦ conductor_eq_top_of_adjoin_eq_top h⟩

open IsLocalization in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Conductor/Variantf735e529fd6ad2face6dc3b35b947272c6ad85de1c966a27edfaf3a596f1fe82.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edff584f5fa01f744a936b064b73c47f5932e991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
