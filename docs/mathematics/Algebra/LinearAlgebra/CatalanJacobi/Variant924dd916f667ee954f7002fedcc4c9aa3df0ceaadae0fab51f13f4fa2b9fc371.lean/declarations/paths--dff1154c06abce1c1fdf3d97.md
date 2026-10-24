# paths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11211a369c2b9f228b92e9512af7d8208f31e125435ca4b8b4dc073799c5d2c4",
  "kind": "def",
  "lexical_name": "paths",
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
  "slug": "paths--dff1154c06abce1c1fdf3d97",
  "source": {
    "blob": "9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dff1154c06abce1c1fdf3d9798ae74392ab566f0e26c92b2bd166bff73189d40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11211a369c2b9f228b92e9512af7d8208f31e125435ca4b8b4dc073799c5d2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def paths : ℕ → ℕ → Finset (List DyckStep)
  | 0, h => if h = 0 then {[]} else ∅
  | n + 1, 0 => (paths n 1).map (consEmbedding U)
  | n + 1, h + 1 => (paths n (h + 2)).map (consEmbedding U) ∪
      (paths n h).map (consEmbedding D)

/-- Every initial segment stays at nonnegative height when the path starts at height `h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
