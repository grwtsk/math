# associatesEquivIsPrincipal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d6bb1819644ec7fa0d83ca30d7d31cd1659576b7e21c5d75a7905ce7fc0f60",
  "kind": "def",
  "lexical_name": "associatesEquivIsPrincipal",
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
  "slug": "associatesequivisprincipal--3e5ddab4518c7c89c36eef4d",
  "source": {
    "blob": "04666052d0680af32382c2e6c3de4163d4768b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e5ddab4518c7c89c36eef4dff2279ead42d00ff61654a1c780fa2ef2b38f3d5",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d6bb1819644ec7fa0d83ca30d7d31cd1659576b7e21c5d75a7905ce7fc0f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def associatesEquivIsPrincipal :
    Associates R ≃ {I : Ideal R // IsPrincipal I} where
  toFun := _root_.Quotient.lift (fun x ↦ ⟨span {x}, x, rfl⟩)
    (fun _ _ _ ↦ by simpa [span_singleton_eq_span_singleton])
  invFun I := .mk I.2.generator
  left_inv := Quotient.ind fun _ ↦ by simpa [Quotient.eq] using!
    Ideal.span_singleton_eq_span_singleton.mp (@Ideal.span_singleton_generator _ _ _ ⟨_, rfl⟩)
  right_inv I := by simp [← Associates.quotient_mk_eq_mk]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrincipal/Variant5e41fe795796516becd407d594d6b509d79e225a3444db91e2a7f6ef6478425d.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04666052d0680af32382c2e6c3de4163d4768b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
