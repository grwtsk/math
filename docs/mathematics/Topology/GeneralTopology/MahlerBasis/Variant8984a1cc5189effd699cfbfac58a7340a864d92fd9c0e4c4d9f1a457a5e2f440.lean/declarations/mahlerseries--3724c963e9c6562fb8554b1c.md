# mahlerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e70f5ec817bbeca2245ab530916e2dc10fd358ac397f00e8998ec3e3ffe1c45",
  "kind": "def",
  "lexical_name": "mahlerSeries",
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
  "slug": "mahlerseries--3724c963e9c6562fb8554b1c",
  "source": {
    "blob": "aa6b45413ae802ac029fc6305a27412c5819ec9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 273,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3724c963e9c6562fb8554b1cebb6750982f4a6f735a3f7a81f4f20d014b518b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e70f5ec817bbeca2245ab530916e2dc10fd358ac397f00e8998ec3e3ffe1c45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mahlerSeries (a : ℕ → E) : C(ℤ_[p], E) := ∑' n, mahlerTerm (a n) n

variable [IsUltrametricDist E] [CompleteSpace E] {a : ℕ → E}

/-- A Mahler series whose coefficients tend to 0 is convergent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant8984a1cc5189effd699cfbfac58a7340a864d92fd9c0e4c4d9f1a457a5e2f440.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa6b45413ae802ac029fc6305a27412c5819ec9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
