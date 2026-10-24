# induction_of_closure_eq_top_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dd5ef41-2425-76d0-6b6f-dc0543b59333",
  "kind": "theorem",
  "lexical_name": "induction_of_closure_eq_top_left",
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
  "slug": "induction-of-closure-eq-top-left--f8bcf0812174b81c3c7ae20f",
  "source": {
    "blob": "1284405ba7ac39fb57b1adf5548a370a000829ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 402,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variant78b12f38c7747ee1b7e94b1080c16b28a7f847a1ed58ce84d3d781e5a50ce2d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8bcf0812174b81c3c7ae20fb29e23042ea202c807795cc385400fa41ff52d11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Membership/Variant78b12f38c7747ee1b7e94b1080c16b28a7f847a1ed58ce84d3d781e5a50ce2d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dd5ef41-2425-76d0-6b6f-dc0543b59333`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_of_closure_eq_top_left {s : Set M} {p : M → Prop} (hs : closure s = ⊤) (x : M)
    (H1 : p 1) (Hmul : ∀ x ∈ s, ∀ (y), p y → p (x * y)) : p x :=
  closure_induction_left
    (by
      rw [hs]
      exact mem_top _)
    H1 Hmul
#align submonoid.induction_of_closure_eq_top_left Submonoid.induction_of_closure_eq_top_left
#align add_submonoid.induction_of_closure_eq_top_left AddSubmonoid.induction_of_closure_eq_top_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Membership/Variant78b12f38c7747ee1b7e94b1080c16b28a7f847a1ed58ce84d3d781e5a50ce2d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Membership/Variant78b12f38c7747ee1b7e94b1080c16b28a7f847a1ed58ce84d3d781e5a50ce2d2.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1284405ba7ac39fb57b1adf5548a370a000829ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
