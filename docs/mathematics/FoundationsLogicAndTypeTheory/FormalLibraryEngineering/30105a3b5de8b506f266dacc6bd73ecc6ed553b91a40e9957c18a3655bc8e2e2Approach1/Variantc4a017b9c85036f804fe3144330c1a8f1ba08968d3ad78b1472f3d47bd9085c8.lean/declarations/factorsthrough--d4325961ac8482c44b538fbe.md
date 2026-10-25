# FactorsThrough

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ad78c5a595ce0040d93ebe19741562c62130bff68a195c505246486477698ed",
  "kind": "def",
  "lexical_name": "FactorsThrough",
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
  "slug": "factorsthrough--d4325961ac8482c44b538fbe",
  "source": {
    "blob": "d4d2ac8bebac9eccbf8de526cb077e457be7681d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2Approach1/Variantc4a017b9c85036f804fe3144330c1a8f1ba08968d3ad78b1472f3d47bd9085c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4325961ac8482c44b538fbeb8e526d030aa065421dea728a6abb42d131df041",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2Approach1/Variantc4a017b9c85036f804fe3144330c1a8f1ba08968d3ad78b1472f3d47bd9085c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ad78c5a595ce0040d93ebe19741562c62130bff68a195c505246486477698ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FactorsThrough (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C) : Prop :=
  ∃ f : r.carrier → q.carrier, q.compress = f ∘ r.compress

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2Approach1/Variantc4a017b9c85036f804fe3144330c1a8f1ba08968d3ad78b1472f3d47bd9085c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/30105a3b5de8b506f266dacc6bd73ecc6ed553b91a40e9957c18a3655bc8e2e2Approach1/Variantc4a017b9c85036f804fe3144330c1a8f1ba08968d3ad78b1472f3d47bd9085c8.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d2ac8bebac9eccbf8de526cb077e457be7681d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
