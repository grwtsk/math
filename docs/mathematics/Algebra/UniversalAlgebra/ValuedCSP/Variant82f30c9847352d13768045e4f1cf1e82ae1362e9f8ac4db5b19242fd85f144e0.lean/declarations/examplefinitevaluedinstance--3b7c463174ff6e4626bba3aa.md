# exampleFiniteValuedInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f70c846ba79659adf480924a8c2c2c17df94fc3589b49f324362490d0791ca28",
  "kind": "def",
  "lexical_name": "exampleFiniteValuedInstance",
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
  "slug": "examplefinitevaluedinstance--3b7c463174ff6e4626bba3aa",
  "source": {
    "blob": "94cdf0a1babde4cea79828875fa544eadd1b3bb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 37,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b7c463174ff6e4626bba3aa13d380ad2a5667eb3c310cdb2d4deb53dd3bfdcc",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f70c846ba79659adf480924a8c2c2c17df94fc3589b49f324362490d0791ca28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def exampleFiniteValuedInstance : exampleFiniteValuedCSP.Instance (Fin 2) :=
  {ValuedCSP.unaryTerm abs_in 0, ValuedCSP.unaryTerm abs_in 1}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ValuedCSP/Variant82f30c9847352d13768045e4f1cf1e82ae1362e9f8ac4db5b19242fd85f144e0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94cdf0a1babde4cea79828875fa544eadd1b3bb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
