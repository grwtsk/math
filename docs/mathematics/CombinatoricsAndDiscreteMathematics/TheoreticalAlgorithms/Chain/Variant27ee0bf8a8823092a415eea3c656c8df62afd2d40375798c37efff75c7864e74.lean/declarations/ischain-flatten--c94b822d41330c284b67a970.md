# isChain_flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "016145f7ebc3cf49958a76f45ed07756add06de4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27ee0bf8a8823092a415eea3c656c8df62afd2d40375798c37efff75c7864e74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:247c1ed0-6f71-da19-d03c-0fd8ca64b9b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c92684f1-7ace-f94b-26a9-471f18b67fc0",
  "kind": "lemma",
  "lexical_name": "isChain_flatten",
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
  "slug": "ischain-flatten--c94b822d41330c284b67a970",
  "source": {
    "blob": "016145f7ebc3cf49958a76f45ed07756add06de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 285,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant27ee0bf8a8823092a415eea3c656c8df62afd2d40375798c37efff75c7864e74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c94b822d41330c284b67a970dc09c2cc3132c24969c709d9db5e3bd26002d264",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant27ee0bf8a8823092a415eea3c656c8df62afd2d40375798c37efff75c7864e74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c92684f1-7ace-f94b-26a9-471f18b67fc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isChain_flatten : ∀ {L : List (List α)}, [] ∉ L →
    (IsChain R L.flatten ↔ (∀ l ∈ L, IsChain R l) ∧
    L.IsChain (fun l₁ l₂ => ∀ᵉ (x ∈ l₁.getLast?) (y ∈ l₂.head?), R x y))
| [], _ => by simp
| [l], _ => by simp [flatten]
| (l₁ :: l₂ :: L), hL => by
    rw [mem_cons, not_or, ← Ne] at hL
    rw [flatten_cons, isChain_append, isChain_flatten hL.2, forall_mem_cons, isChain_cons_cons]
    rw [mem_cons, not_or, ← Ne] at hL
    simp only [forall_mem_cons, and_assoc, flatten_cons, head?_append_of_ne_nil _ hL.2.1.symm]
    exact Iff.rfl.and (Iff.rfl.and <| Iff.rfl.and and_comm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant27ee0bf8a8823092a415eea3c656c8df62afd2d40375798c37efff75c7864e74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant27ee0bf8a8823092a415eea3c656c8df62afd2d40375798c37efff75c7864e74.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016145f7ebc3cf49958a76f45ed07756add06de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
