# IsCycle.getVert_sub_one_ne_getVert_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91f7b286-b6dc-dcdd-4ec0-7f2a617ec49a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbc39058-08a4-e88e-41c3-59f7a9424aab",
  "kind": "lemma",
  "lexical_name": "IsCycle.getVert_sub_one_ne_getVert_add_one",
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
  "slug": "iscycle-getvert-sub-one-ne-getvert-add-one--6bbbfa4c8fb698669745d874",
  "source": {
    "blob": "b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 398,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bbbfa4c8fb698669745d874f0ea2588c59152e9cfc826f9b42e74e23ebc7993",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc39058-08a4-e88e-41c3-59f7a9424aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCycle.getVert_sub_one_ne_getVert_add_one {i : ℕ} {p : G.Walk u u} (hpc : p.IsCycle)
    (h : i ≤ p.length) : p.getVert (i - 1) ≠ p.getVert (i + 1) := by
  have hl := hpc.three_le_length
  by_cases hi' : i ≥ p.length - 1
  · intro h'
    rw [p.getVert_of_length_le (by omega : p.length ≤ i + 1),
      hpc.getVert_endpoint_iff (by omega)] at h'
    omega
  intro h'
  have := hpc.getVert_injOn' (by simp only [Set.mem_setOf_eq, Nat.sub_le_iff_le_add]; omega)
    (by simp only [Set.mem_setOf_eq]; omega) h'
  omega

@[deprecated (since := "2025-04-27")]
alias IsCycle.getVert_sub_one_neq_getVert_add_one := IsCycle.getVert_sub_one_ne_getVert_add_one

/-! ### Walk decompositions -/

section WalkDecomp

variable [DecidableEq V]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
