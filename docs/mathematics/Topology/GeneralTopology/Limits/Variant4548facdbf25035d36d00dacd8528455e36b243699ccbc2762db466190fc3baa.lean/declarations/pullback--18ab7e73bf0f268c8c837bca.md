# pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cef45c38a954945d6e70f2def84310d4daf4b54f3155bc525116c8eada3e9769",
  "kind": "def",
  "lexical_name": "pullback",
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
  "slug": "pullback--18ab7e73bf0f268c8c837bca",
  "source": {
    "blob": "67175ce41d96b60f31a9042e375beab7138edf70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18ab7e73bf0f268c8c837bca4d657e743bbf35d772dab43e7089da33e2d9d467",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cef45c38a954945d6e70f2def84310d4daf4b54f3155bc525116c8eada3e9769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullback : CompHaus.{u} :=
  letI set := { xy : X × Y | f xy.fst = g xy.snd }
  haveI : CompactSpace set :=
  isCompact_iff_compactSpace.mp (isClosed_eq (f.continuous.comp continuous_fst)
    (g.continuous.comp continuous_snd)).isCompact
  CompHaus.of set

/--
The projection from the pullback to the first component.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant4548facdbf25035d36d00dacd8528455e36b243699ccbc2762db466190fc3baa.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67175ce41d96b60f31a9042e375beab7138edf70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
