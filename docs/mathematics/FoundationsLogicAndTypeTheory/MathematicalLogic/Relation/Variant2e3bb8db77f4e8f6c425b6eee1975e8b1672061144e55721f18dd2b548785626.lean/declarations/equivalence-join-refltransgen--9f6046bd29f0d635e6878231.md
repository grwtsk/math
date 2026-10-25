# equivalence_join_reflTransGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14f39b33-3a0d-0af6-e2e5-13f3bb18f209",
  "kind": "theorem",
  "lexical_name": "equivalence_join_reflTransGen",
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
  "slug": "equivalence-join-refltransgen--9f6046bd29f0d635e6878231",
  "source": {
    "blob": "0f1117ea70075825a56d6e4b46abab65a8c5932e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 698,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant2e3bb8db77f4e8f6c425b6eee1975e8b1672061144e55721f18dd2b548785626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f6046bd29f0d635e6878231280fa0babb946c834755f457890f1f1ac7fc9f24",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant2e3bb8db77f4e8f6c425b6eee1975e8b1672061144e55721f18dd2b548785626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14f39b33-3a0d-0af6-e2e5-13f3bb18f209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivalence_join_reflTransGen
    (h : ∀ a b c, r a b → r a c → ∃ d, ReflGen r b d ∧ ReflTransGen r c d) :
    Equivalence (Join (ReflTransGen r)) :=
  equivalence_join reflexive_reflTransGen transitive_reflTransGen fun _ _ _ ↦ church_rosser h
#align relation.equivalence_join_refl_trans_gen Relation.equivalence_join_reflTransGen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant2e3bb8db77f4e8f6c425b6eee1975e8b1672061144e55721f18dd2b548785626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant2e3bb8db77f4e8f6c425b6eee1975e8b1672061144e55721f18dd2b548785626.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1117ea70075825a56d6e4b46abab65a8c5932e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
