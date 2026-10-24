# DiscreteTorsionDatum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70975614ff4ba06ff882bffcd6aba599d47abdfdf9a4b2177fab7c3f16548d44",
  "kind": "structure",
  "lexical_name": "DiscreteTorsionDatum",
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
  "slug": "discretetorsiondatum--060e19357b71d1cb3a8a3a53",
  "source": {
    "blob": "f0f8cd2e72761119f89039974ed77bd015997012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 189,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:060e19357b71d1cb3a8a3a53c3cb11e189c18b18961087ca0eec07ad4d96b29c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70975614ff4ba06ff882bffcd6aba599d47abdfdf9a4b2177fab7c3f16548d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiscreteTorsionDatum
    (V : Type)
    (k : Nat) where
  torsion : V → V → Fiber k
  antisymmetric : Prop

/--
A discrete Ricci tensor must be explicitly supplied or derived by a named
construction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f8cd2e72761119f89039974ed77bd015997012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
