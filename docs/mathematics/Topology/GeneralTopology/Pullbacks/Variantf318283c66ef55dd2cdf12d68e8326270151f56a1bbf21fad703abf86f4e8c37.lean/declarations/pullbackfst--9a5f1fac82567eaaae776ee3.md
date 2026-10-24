# pullbackFst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7e4a12c9fa24218c14a93ec82cb1482a1660336e5a0b5edf682e63f0a8bd8a0",
  "kind": "abbrev",
  "lexical_name": "pullbackFst",
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
  "slug": "pullbackfst--9a5f1fac82567eaaae776ee3",
  "source": {
    "blob": "367d7864bfcf0f8c68f9edfb33aa7e2066c11321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a5f1fac82567eaaae776ee33699969807e9f33882b706b102f8ae87c9ce6997",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7e4a12c9fa24218c14a93ec82cb1482a1660336e5a0b5edf682e63f0a8bd8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev pullbackFst (f : X ⟶ Z) (g : Y ⟶ Z) : ↧{ p : X × Y // f p.1 = g p.2 } ⟶ X :=
  ofHom ⟨Prod.fst ∘ Subtype.val, by fun_prop⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `367d7864bfcf0f8c68f9edfb33aa7e2066c11321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
