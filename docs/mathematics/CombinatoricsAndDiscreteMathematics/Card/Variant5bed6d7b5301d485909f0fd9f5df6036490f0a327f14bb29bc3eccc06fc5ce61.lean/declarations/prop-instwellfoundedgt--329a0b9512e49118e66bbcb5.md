# Prop.instWellFoundedGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40343d757e6b5928e2b61f33df17ded8a08f96dc1e186b1449a4c3cc51421e48",
  "kind": "instance",
  "lexical_name": "Prop.instWellFoundedGT",
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
  "slug": "prop-instwellfoundedgt--329a0b9512e49118e66bbcb5",
  "source": {
    "blob": "18085393a36047d622ecbe3de1587bc624ccf343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 447,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant5bed6d7b5301d485909f0fd9f5df6036490f0a327f14bb29bc3eccc06fc5ce61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:329a0b9512e49118e66bbcb51cb65c18151902d6bd2ac4208d775d9eb81eeac3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant5bed6d7b5301d485909f0fd9f5df6036490f0a327f14bb29bc3eccc06fc5ce61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40343d757e6b5928e2b61f33df17ded8a08f96dc1e186b1449a4c3cc51421e48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prop.instWellFoundedGT : WellFoundedGT Prop := inferInstance

section Trunc

/-- A `Fintype` with positive cardinality constructively contains an element.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant5bed6d7b5301d485909f0fd9f5df6036490f0a327f14bb29bc3eccc06fc5ce61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant5bed6d7b5301d485909f0fd9f5df6036490f0a327f14bb29bc3eccc06fc5ce61.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18085393a36047d622ecbe3de1587bc624ccf343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
