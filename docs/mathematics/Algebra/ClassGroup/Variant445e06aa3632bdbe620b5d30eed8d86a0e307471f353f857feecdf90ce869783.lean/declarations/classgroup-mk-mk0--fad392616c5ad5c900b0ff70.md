# ClassGroup.mk_mk0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:448dcd71-5756-fb66-9588-913f37d32e2b",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk_mk0",
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
  "slug": "classgroup-mk-mk0--fad392616c5ad5c900b0ff70",
  "source": {
    "blob": "5c8845b904c5fa31d7b7c381e31820785303acad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 251,
    "path": "GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fad392616c5ad5c900b0ff70f668fb553d5b4c450608116d603a64e4279482e7",
  "verification": {
    "reference": "docs/verification/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:448dcd71-5756-fb66-9588-913f37d32e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk_mk0 [IsDedekindDomain R] (I : (Ideal R)⁰) :
    ClassGroup.mk (FractionalIdeal.mk0 K I) = ClassGroup.mk0 I := by
  rw [ClassGroup.mk0, MonoidHom.comp_apply, ← ClassGroup.mk_canonicalEquiv K (FractionRing R),
    FractionalIdeal.map_canonicalEquiv_mk0]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8845b904c5fa31d7b7c381e31820785303acad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
