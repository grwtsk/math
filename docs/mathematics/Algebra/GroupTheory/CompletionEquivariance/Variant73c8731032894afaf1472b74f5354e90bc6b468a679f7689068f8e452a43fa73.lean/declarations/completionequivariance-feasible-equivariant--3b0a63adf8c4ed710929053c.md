# CompletionEquivariance.feasible_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac28ba25fbffc2e21e0b29cba010000ca90afdee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcb5eac2-f239-dc34-1949-917daedd759a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3a00538-c529-e64c-fb1c-25f2856fade9",
  "kind": "theorem",
  "lexical_name": "CompletionEquivariance.feasible_equivariant",
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
  "slug": "completionequivariance-feasible-equivariant--3b0a63adf8c4ed710929053c",
  "source": {
    "blob": "ac28ba25fbffc2e21e0b29cba010000ca90afdee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 215,
    "path": "GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b0a63adf8c4ed710929053c5bbf50ff8011984951d64562b02b7dcbb530507b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3a00538-c529-e64c-fb1c-25f2856fade9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompletionEquivariance.feasible_equivariant
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    (equivariance :
      CompletionEquivariance
        semantics GroupCarrier)
    (automorphism : GroupCarrier)
    (constraints : Finset Constraint)
    (partial : Partial) :
    semantics.Feasible constraints partial ↔
      semantics.Feasible
        (transportFinset
          automorphism constraints)
        (automorphism • partial) := by
  constructor
  · rintro
      ⟨completion, extends, satisfies⟩
    exact
      ⟨automorphism • completion,
        (equivariance.extension_equivariant
          automorphism partial completion).mp
          extends,
        (equivariance.satisfiesAll_equivariant
          automorphism completion constraints).mp
          satisfies⟩
  · rintro
      ⟨completion, extends, satisfies⟩
    refine
      ⟨automorphism⁻¹ • completion, ?_, ?_⟩
    · have inverseExtension :=
        (equivariance.extension_equivariant
          automorphism⁻¹
          (automorphism • partial)
          completion).mp extends
      simpa using inverseExtension
    · have inverseSatisfaction :=
        (equivariance.satisfiesAll_equivariant
          automorphism⁻¹ completion
          (transportFinset
            automorphism constraints)).mp
          satisfies
      simpa using inverseSatisfaction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CompletionEquivariance/Variant73c8731032894afaf1472b74f5354e90bc6b468a679f7689068f8e452a43fa73.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac28ba25fbffc2e21e0b29cba010000ca90afdee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
