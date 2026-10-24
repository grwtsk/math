# LadderParams.L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:110a4d83466e9b87b6433f3bd4b107e65cbcf3b4458e79a7f3ae82e2256a4c14",
  "kind": "def",
  "lexical_name": "LadderParams.L",
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
  "slug": "ladderparams-l--4f390a96d3589976ce317a9b",
  "source": {
    "blob": "abb4d988df589a463537396a6ba3fbd5ac54f13b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f390a96d3589976ce317a9bd4ad8d5a96d300b546eff6244b74cd1332cf5e49",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:110a4d83466e9b87b6433f3bd4b107e65cbcf3b4458e79a7f3ae82e2256a4c14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LadderParams.L (l : LadderParams) : Set ℂ :=
  {z : ℂ | ∃ n, 1 ≤ n ∧ z.re = l.σ n ∧ |z.im| ≤ l.T}

/-- The "admissible contour", which we will fix to be of a simplified form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb4d988df589a463537396a6ba3fbd5ac54f13b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
