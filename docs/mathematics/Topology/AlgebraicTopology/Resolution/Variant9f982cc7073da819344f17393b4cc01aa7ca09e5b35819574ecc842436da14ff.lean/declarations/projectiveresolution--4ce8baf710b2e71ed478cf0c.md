# projectiveResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03c832209edfe26a4f8bd6e4606b77246db570f085ad9131f6deb58bb5b4feef",
  "kind": "abbrev",
  "lexical_name": "projectiveResolution",
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
  "slug": "projectiveresolution--4ce8baf710b2e71ed478cf0c",
  "source": {
    "blob": "7836ab35befa89fafebc496c65ad11911016cdeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 195,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ce8baf710b2e71ed478cf0cfda116e0f63b3aeef4af8566bb006d12c6799e68",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03c832209edfe26a4f8bd6e4606b77246db570f085ad9131f6deb58bb5b4feef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev projectiveResolution (Z : C) [HasZeroObject C]
    [HasZeroMorphisms C] [HasProjectiveResolution Z] :
    ProjectiveResolution Z :=
  (HasProjectiveResolution.out (Z := Z)).some

variable (C)
variable [Abelian C]

section
variable [HasProjectiveResolutions C]

/-- Taking projective resolutions is functorial,
if considered with target the homotopy category
(`ℕ`-indexed chain complexes and chain maps up to homotopy).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variant9f982cc7073da819344f17393b4cc01aa7ca09e5b35819574ecc842436da14ff.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7836ab35befa89fafebc496c65ad11911016cdeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
