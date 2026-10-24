# insufficient_foundation_cannot_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc5ed9c3-8fb9-ee9b-1cdb-2d7bc47e72b6",
  "kind": "theorem",
  "lexical_name": "insufficient_foundation_cannot_cover",
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
  "slug": "insufficient-foundation-cannot-cover--a4d94b7c674c9661f8869f50",
  "source": {
    "blob": "b915dbe52c7868b466769375e7034b752107e300",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 111,
    "path": "GRWTSK/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d94b7c674c9661f8869f50c13d0af01e17d53dab1195d53e3c10b4d3abc328",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc5ed9c3-8fb9-ee9b-1cdb-2d7bc47e72b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insufficient_foundation_cannot_cover
    {Γ : Gamma} {f : DeclaredSurfaceObject} :
    ¬ f.requiredFoundation ≤ Γ.logicalFoundation ->
      ¬ CoveredByExtendedEMLAt Γ f := by
  intro hnot hcov
  exact hnot (coverage_requires_sufficient_foundation hcov)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Coverage/Variant390d1245b6185d08df0375836c11019876f1a0b4294efb800e8bcf5590e459fa.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b915dbe52c7868b466769375e7034b752107e300` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
