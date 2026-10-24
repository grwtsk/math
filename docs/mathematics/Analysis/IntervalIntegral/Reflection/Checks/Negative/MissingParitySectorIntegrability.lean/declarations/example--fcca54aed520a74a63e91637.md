# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95259ed3503bda74536badac2c719971d714b821e326cd5343f820c69956ec8b",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--fcca54aed520a74a63e91637",
  "source": {
    "blob": "029af8a486d3b6d162534bc07bc2eeb701d2a2b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7,
    "line": 3,
    "path": "GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/Negative/MissingParitySectorIntegrability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcca54aed520a74a63e916371eea254143e50e492616b6e647ad54f96be1e7a0",
  "verification": {
    "reference": "docs/verification/Analysis/IntervalIntegral/Reflection/Checks/Negative/MissingParitySectorIntegrability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95259ed3503bda74536badac2c719971d714b821e326cd5343f820c69956ec8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3–7.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a b : ℝ) (f g : ℝ → ℝ)
    (hpp : IntervalIntegrable (fun t ↦ evenPart a b f t * evenPart a b g t) volume a b)
    (hmm : IntervalIntegrable (fun t ↦ oddPart a b f t * oddPart a b g t) volume a b) :
    (∫ t in a..b, f t * g t) = (∫ t in a..b, evenPart a b f t * evenPart a b g t) + (∫ t in a..b, oddPart a b f t * oddPart a b g t) :=
  integral_product_eq_even_add_odd a b f g hpp hmm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/IntervalIntegral/Reflection/Checks/Negative/MissingParitySectorIntegrability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/Negative/MissingParitySectorIntegrability.lean#L3).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029af8a486d3b6d162534bc07bc2eeb701d2a2b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
