# Iio_last_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c5715b2-70e5-1a8c-6008-2611c6c86bf3",
  "kind": "theorem",
  "lexical_name": "Iio_last_eq_map",
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
  "slug": "iio-last-eq-map--74b4fc33c3bcadc797ec7778",
  "source": {
    "blob": "4b2e52bf289e23cf8ca191560bf4f4ec07b9e2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74b4fc33c3bcadc797ec77784f74d4b48c2b26b32715f2fece4a19020beb7808",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5715b2-70e5-1a8c-6008-2611c6c86bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iio_last_eq_map : Iio (Fin.last n) = Finset.univ.map Fin.castSuccEmb :=
  coe_injective <| by ext; simp [lt_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fin/Variante3be8240fc93881af9b1c9a179baf8a4824cc0d02c64480d0eab0dce1054225b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2e52bf289e23cf8ca191560bf4f4ec07b9e2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
