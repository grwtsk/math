# get_eq_default_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92bdf575de901c74bae80787ff14c59025acbc18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4365f59c-a073-222e-6e25-49275d743d47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8b4fcfc-f83d-6fff-b406-9fd3f38bfeef",
  "kind": "theorem",
  "lexical_name": "get_eq_default_of_le",
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
  "slug": "get-eq-default-of-le--c5bb2ebae4c720450b64bfee",
  "source": {
    "blob": "92bdf575de901c74bae80787ff14c59025acbc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5bb2ebae4c720450b64bfeed54256962b5c381cf52f0c1b06c29207a7a911d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8b4fcfc-f83d-6fff-b406-9fd3f38bfeef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get_eq_default_of_le : ∀ (k : ℕ) {as : List α}, as.length ≤ k → get k as = default
  | 0, [], _ => rfl
  | 0, a :: as, h1 => by cases h1
  | k + 1, [], _ => rfl
  | k + 1, _ :: as, h1 => by
    apply get_eq_default_of_le k
    rw [← Nat.succ_le_succ_iff]; apply h1
#align list.func.get_eq_default_of_le List.Func.get_eq_default_of_le

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92bdf575de901c74bae80787ff14c59025acbc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
