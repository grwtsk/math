# Bool_eq_iff2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f1ef088-6840-5c60-ea31-8c462a006e6a",
  "kind": "theorem",
  "lexical_name": "Bool_eq_iff2",
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
  "slug": "bool-eq-iff2--0b254eb8370ead57caef5aad",
  "source": {
    "blob": "008d5c0d4100b6175893bd76066959b52169528a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 209,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9176714da321ef0e9e9b828cdc85ed6b4d772860c4862263db0d37cf8bb1af5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b254eb8370ead57caef5aad681aa9e916126dbeaacdda7be6a43b249531f122",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9176714da321ef0e9e9b828cdc85ed6b4d772860c4862263db0d37cf8bb1af5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1ef088-6840-5c60-ea31-8c462a006e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Bool_eq_iff2 {A B : Bool} : (A = B) = (A ↔ B) := by
  apply? -- exact Bool_eq_iff

assert_no_sorry Bool_eq_iff2

-- Example from https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/library_search.20regression/near/354025788
/-- info: Try this: exact Quot.mk_surjective -/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9176714da321ef0e9e9b828cdc85ed6b4d772860c4862263db0d37cf8bb1af5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9176714da321ef0e9e9b828cdc85ed6b4d772860c4862263db0d37cf8bb1af5a.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008d5c0d4100b6175893bd76066959b52169528a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
