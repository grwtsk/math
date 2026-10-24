# MonCat.forget_isCorepresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84bf329c184734e1ca5ec80d8c3a4ea1dd34082b97907eff04af6804b97574da",
  "kind": "instance",
  "lexical_name": "MonCat.forget_isCorepresentable",
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
  "slug": "moncat-forget-iscorepresentable--c96486f208ff733e08ae7e1a",
  "source": {
    "blob": "8e239a8b5c3a0408d7bf1ae6b0cc92c9e0d93734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 97,
    "path": "GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c96486f208ff733e08ae7e1aec563c2aaba54bd67f47e54c8f3f5ae0e71c961c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84bf329c184734e1ca5ec80d8c3a4ea1dd34082b97907eff04af6804b97574da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MonCat.forget_isCorepresentable :
    (forget MonCat.{u}).IsCorepresentable :=
  Functor.IsCorepresentable.mk' MonCat.coyonedaObjIsoForget

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ForgetCorepresentable/Variant7dded4025b3879fb08c3f894ca3ee238d0ebe49c28c28b516d9ca82d19944907.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e239a8b5c3a0408d7bf1ae6b0cc92c9e0d93734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
