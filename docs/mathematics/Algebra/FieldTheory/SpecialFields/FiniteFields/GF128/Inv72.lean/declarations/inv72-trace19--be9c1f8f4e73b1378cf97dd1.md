# inv72_trace19

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f2b1dd8-fd98-bb04-bb70-7dcf9ad62f4f",
  "kind": "theorem",
  "lexical_name": "inv72_trace19",
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
  "slug": "inv72-trace19--be9c1f8f4e73b1378cf97dd1",
  "source": {
    "blob": "2a631b1454da35590576f09165817ce60ebf4ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 478,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Inv72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be9c1f8f4e73b1378cf97dd1cfe39b9c8b9aab6451c199773ae06e24849dc617",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f2b1dd8-fd98-bb04-bb70-7dcf9ad62f4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv72_trace19 : powFuel 109 649037107316853453566312041152511 185252177959702356092548643845521888725 173388643542243018881691200635775552505 = 91147062568108516999118198419223628039 :=
  (pow_odd_step 108 649037107316853453566312041152511 185252177959702356092548643845521888725 173388643542243018881691200635775552505 243620234871572317737638040934507029889 316374306633272322902884827554685493632 (by decide) (by decide) inv72_square19 inv72_product19).trans inv72_trace20
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Inv72.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a631b1454da35590576f09165817ce60ebf4ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
