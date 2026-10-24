# Algebra.Presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c001f442c9195487fbdfb5d48838bc84ede7d4fca54d2e39cc1bf9201adf424b",
  "kind": "structure",
  "lexical_name": "Algebra.Presentation",
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
  "slug": "algebra-presentation--eff540acfb71a2d1553c6a81",
  "source": {
    "blob": "66f0b12387b1fe90f3998d0165cca79f67f746b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eff540acfb71a2d1553c6a819fa8f7f60dafa2be4d3f7ff0098a606af77681be",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c001f442c9195487fbdfb5d48838bc84ede7d4fca54d2e39cc1bf9201adf424b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Algebra.Presentation extends Algebra.Generators R S ι where
  /-- The assignment of each relation to a polynomial in the generators. -/
  relation : σ → toGenerators.Ring
  /-- The relations span the kernel of the canonical map. -/
  span_range_relation_eq_ker :
    Ideal.span (Set.range relation) = toGenerators.ker

namespace Algebra.Presentation

variable {R S ι σ}
variable (P : Presentation R S ι σ)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant833f368588a0a8b3992b89f2b834ec1c42e7596245292f2a31178f339732b566.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f0b12387b1fe90f3998d0165cca79f67f746b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
