# inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f624eddb2728a60351cbed1407e497694ff203fc099adece7d170dd4389cfbd4",
  "kind": "def",
  "lexical_name": "inner",
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
  "slug": "inner--7d17d1e3ff4a8fc8d1482afb",
  "source": {
    "blob": "16c00786f47de2c52c63405d76197f7700589614",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 31,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/A095d96c16b2934da/Variantcf8de42726b77d29c8992bbdcd5901f92e3483e09a92fc3fd1b75dc6520ad359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d17d1e3ff4a8fc8d1482afbdd1340b344b40efde005677f40f28f96c00466a7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/A095d96c16b2934da/Variantcf8de42726b77d29c8992bbdcd5901f92e3483e09a92fc3fd1b75dc6520ad359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f624eddb2728a60351cbed1407e497694ff203fc099adece7d170dd4389cfbd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inner (f g : Raw kernel) : ℂ :=
  f.sum fun i ai ↦ g.sum fun j aj ↦ star ai * kernel i j * aj

end Raw

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/A095d96c16b2934da/Variantcf8de42726b77d29c8992bbdcd5901f92e3483e09a92fc3fd1b75dc6520ad359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/A095d96c16b2934da/Variantcf8de42726b77d29c8992bbdcd5901f92e3483e09a92fc3fd1b75dc6520ad359.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c00786f47de2c52c63405d76197f7700589614` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
