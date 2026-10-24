# newman_of_ordinate_of_newman

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ca12408-6171-9ef9-8ef1-55bce5a63afb",
  "kind": "theorem",
  "lexical_name": "newman_of_ordinate_of_newman",
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
  "slug": "newman-of-ordinate-of-newman--9e7b476fc2709efae6f78acd",
  "source": {
    "blob": "cf0cf64e26ec937027464f65fb1564f02a1b0186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e7b476fc2709efae6f78acd1654e970374e91dca851cf935d92b49bd9e4fe53",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca12408-6171-9ef9-8ef1-55bce5a63afb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newman_of_ordinate_of_newman (z : ℝ) :
    newmanVariableOfZetaOrdinate (zetaOrdinateOfNewman z) = z := by
  unfold zetaOrdinateOfNewman newmanVariableOfZetaOrdinate
  ring

/-- The zeta low-height 3/4 seed corresponds to Newman parameter height 3/2,
not 3/4. This has nothing to do with real-part zero density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/FiniteHeatNewmanNormalization.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0cf64e26ec937027464f65fb1564f02a1b0186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
