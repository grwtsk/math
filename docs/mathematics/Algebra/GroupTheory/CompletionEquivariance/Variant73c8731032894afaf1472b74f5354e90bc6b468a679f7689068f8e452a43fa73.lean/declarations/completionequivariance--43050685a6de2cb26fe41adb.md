# CompletionEquivariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f3092fb9ff8c70520b47c1d146d33eb89efe97f24f04f05497770b694d9c1d0",
  "kind": "structure",
  "lexical_name": "CompletionEquivariance",
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
  "slug": "completionequivariance--43050685a6de2cb26fe41adb",
  "source": {
    "blob": "ac28ba25fbffc2e21e0b29cba010000ca90afdee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 137,
    "path": "GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43050685a6de2cb26fe41adb5f6270379bfe23561ce8d0840dc2357e73cfc54b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f3092fb9ff8c70520b47c1d146d33eb89efe97f24f04f05497770b694d9c1d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompletionEquivariance
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint] where
  refinement_equivariant :
    ∀ automorphism parent child,
      semantics.refines parent child ↔
        semantics.refines
          (automorphism • parent)
          (automorphism • child)
  extension_equivariant :
    ∀ automorphism partial completion,
      semantics.extendsFull partial completion ↔
        semantics.extendsFull
          (automorphism • partial)
          (automorphism • completion)
  satisfaction_equivariant :
    ∀ automorphism completion constraint,
      semantics.satisfies completion constraint ↔
        semantics.satisfies
          (automorphism • completion)
          (automorphism • constraint)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac28ba25fbffc2e21e0b29cba010000ca90afdee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
