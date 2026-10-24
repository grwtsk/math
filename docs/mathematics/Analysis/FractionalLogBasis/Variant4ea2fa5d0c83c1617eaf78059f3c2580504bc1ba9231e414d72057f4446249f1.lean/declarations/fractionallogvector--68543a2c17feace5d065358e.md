# fractionalLogVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c076c3dd251b27875c2015fa78aec7f498e2c631afb7e312d4ae7be55829db37",
  "kind": "def",
  "lexical_name": "fractionalLogVector",
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
  "slug": "fractionallogvector--68543a2c17feace5d065358e",
  "source": {
    "blob": "cdf7d7f0e531d7b81b80ee8a82a13a1dc79909bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 83,
    "path": "GRWTSK/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68543a2c17feace5d065358ee4548ca29e0631dc3b3fdcdc9fee9f1ed04e41e1",
  "verification": {
    "reference": "docs/verification/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c076c3dd251b27875c2015fa78aec7f498e2c631afb7e312d4ae7be55829db37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fractionalLogVector (d : ℕ) : FullH :=
  (fractionalLogFunction_memLp d).toLp (fractionalLogFunction d)

/-- The complete two-ended fractional basis has its explicit inverse square-root norm budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FractionalLogBasis/Variant4ea2fa5d0c83c1617eaf78059f3c2580504bc1ba9231e414d72057f4446249f1.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf7d7f0e531d7b81b80ee8a82a13a1dc79909bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
