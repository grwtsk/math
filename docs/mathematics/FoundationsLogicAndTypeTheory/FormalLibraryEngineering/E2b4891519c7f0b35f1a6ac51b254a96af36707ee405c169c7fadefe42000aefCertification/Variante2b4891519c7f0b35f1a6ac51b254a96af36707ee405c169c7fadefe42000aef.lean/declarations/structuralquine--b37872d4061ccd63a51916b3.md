# StructuralQuine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d0f23dea2e302bbd1ed46e2da5f63307aa47fdaa95f448575be105979f520a6",
  "kind": "structure",
  "lexical_name": "StructuralQuine",
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
  "slug": "structuralquine--b37872d4061ccd63a51916b3",
  "source": {
    "blob": "1aa6408d894e105f26aa2ce9212fca3ceb7241c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aefCertification/Variante2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b37872d4061ccd63a51916b38aa6c85909905404e0948f42dd8b96de6f7a6d60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aefCertification/Variante2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d0f23dea2e302bbd1ed46e2da5f63307aa47fdaa95f448575be105979f520a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructuralQuine {State : Type u} {Index : Type v} (C : CertificateFamily.{u, v, w} State Index) where
  quotient : SufficientRepresentation.{u, v, w, a} C
  reconstruct : quotient.carrier → State
  «section» : ∀ q, quotient.compress (reconstruct q) = q
  reconstruct_equivalent : ∀ s, C.Equivalent (reconstruct (quotient.compress s)) s
  minimal : SufficientRepresentation.IsMinimal.{u, v, w, a, b} quotient

namespace StructuralQuine

variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}

/-- Project a state to the internally reconstructed representative of its
minimal sufficient certificate class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aefCertification/Variante2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aefCertification/Variante2b4891519c7f0b35f1a6ac51b254a96af36707ee405c169c7fadefe42000aef.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aa6408d894e105f26aa2ce9212fca3ceb7241c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
