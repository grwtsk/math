# HarmonicAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38db70d557657de44efc2ec0f2d1fce60d133a56c42b71ddc0287c80ebf04330",
  "kind": "def",
  "lexical_name": "HarmonicAt",
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
  "slug": "harmonicat--006ae8dcd5a0610e9077abdd",
  "source": {
    "blob": "cdd2ca3e2cf4d7a928e113ea1768e78e9926b6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:006ae8dcd5a0610e9077abddbc492adb1a1e1197bdd1628b68e6c19f4e7dab7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38db70d557657de44efc2ec0f2d1fce60d133a56c42b71ddc0287c80ebf04330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HarmonicAt := (ContDiffAt ℝ 2 f x) ∧ (Δ f =ᶠ[𝓝 x] 0)

variable (f s) in
/--
Let `E` be a real, finite-dimensional, inner product space and `s` be a subset of `E`. A function
`f` on `E` is harmonic in a neighborhood of `s` if it is harmonic at every point of `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdd2ca3e2cf4d7a928e113ea1768e78e9926b6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
