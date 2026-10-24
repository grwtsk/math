# ricciFlowRepresentable_covered_by_extendedEML

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:852a94ea-1671-cfc3-149a-425335e7afc0",
  "kind": "theorem",
  "lexical_name": "ricciFlowRepresentable_covered_by_extendedEML",
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
  "slug": "ricciflowrepresentable-covered-by-extendedeml--ab3ea6dc3c105e688b2f71df",
  "source": {
    "blob": "df950505fb8f57e73e1b0da7a4a337631258c420",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab3ea6dc3c105e688b2f71dfde85f95dbf5f7b9b5cae37113bd5d7cc3d0b1794",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:852a94ea-1671-cfc3-149a-425335e7afc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ricciFlowRepresentable_covered_by_extendedEML :
    ∀ Γ,
      Gamma.Valid Γ ->
      LogicalFoundation.ricciFlow ≤ Γ.logicalFoundation ->
        ∀ f : RicciFlowRepresentableObject,
          CoveredByExtendedEMLAt Γ
            (DeclaredSurfaceObject.ricciFlow f) := by
  intro Γ hΓ h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ hΓ (DeclaredSurfaceObject.ricciFlow f) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CoverageProofs/Variantdf85e4a9b46234135efb1694c3a691b9a61dd7cf6217c33e38d30e726f21386b.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df950505fb8f57e73e1b0da7a4a337631258c420` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
