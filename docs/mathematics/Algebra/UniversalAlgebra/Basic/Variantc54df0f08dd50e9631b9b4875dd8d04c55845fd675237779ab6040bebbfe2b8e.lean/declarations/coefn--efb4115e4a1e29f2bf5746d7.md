# coeFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98e7ccd4ae2c32d1be418571b0d91c766261368c3a9f23f9a47f51365b50f023",
  "kind": "def",
  "lexical_name": "coeFn",
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
  "slug": "coefn--efb4115e4a1e29f2bf5746d7",
  "source": {
    "blob": "82b0538c00ca9b94476e726449951c0d688bd802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 104,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efb4115e4a1e29f2bf5746d74aabd15217ba6daad78e30b94a8c119fe2482bfe",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98e7ccd4ae2c32d1be418571b0d91c766261368c3a9f23f9a47f51365b50f023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeFn : IntFractPair K → IntFractPair β := mapFr (↑)

/-- Coerce a pair by coercing the fractional component. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc54df0f08dd50e9631b9b4875dd8d04c55845fd675237779ab6040bebbfe2b8e.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b0538c00ca9b94476e726449951c0d688bd802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
