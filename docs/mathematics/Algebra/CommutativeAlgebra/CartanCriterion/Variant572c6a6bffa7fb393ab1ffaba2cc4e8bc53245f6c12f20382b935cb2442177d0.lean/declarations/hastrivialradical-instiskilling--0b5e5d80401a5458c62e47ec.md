# HasTrivialRadical.instIsKilling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bf45526e157c854660e05450eb6ed8ebf1ea7e860e57b12b4f4f42b63168d7b",
  "kind": "instance",
  "lexical_name": "HasTrivialRadical.instIsKilling",
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
  "slug": "hastrivialradical-instiskilling--0b5e5d80401a5458c62e47ec",
  "source": {
    "blob": "3854289ff253b95fb9294d6466c4e5eb5b0ab945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 257,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b5e5d80401a5458c62e47ec72a9a4d5284593cd23306af6371929109564114a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bf45526e157c854660e05450eb6ed8ebf1ea7e860e57b12b4f4f42b63168d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance HasTrivialRadical.instIsKilling [HasTrivialRadical R L] : IsKilling R L where
  killingCompl_top_eq_bot := by simpa using killingCompl_top_le_radical R L

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variant572c6a6bffa7fb393ab1ffaba2cc4e8bc53245f6c12f20382b935cb2442177d0.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3854289ff253b95fb9294d6466c4e5eb5b0ab945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
