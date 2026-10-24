# SupIndep.attach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "233135dba71228f6df73abdb8144fbd7e6ff6bd3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66ae1ff591d94c5f8eb411296de1ba435cb72c91feffc1ba6949c63b9bd16e0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fca928d-f6f3-5a9a-d753-fd5ec4f80ae1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acf75ea3-886a-5083-3a1d-da69bf6f9e9e",
  "kind": "theorem",
  "lexical_name": "SupIndep.attach",
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
  "slug": "supindep-attach--9125d0cf0afd0d117d97a8a3",
  "source": {
    "blob": "233135dba71228f6df73abdb8144fbd7e6ff6bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 162,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant66ae1ff591d94c5f8eb411296de1ba435cb72c91feffc1ba6949c63b9bd16e0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9125d0cf0afd0d117d97a8a3c8a88715a21557a396522536ca03f6f6a78c0ec9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant66ae1ff591d94c5f8eb411296de1ba435cb72c91feffc1ba6949c63b9bd16e0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf75ea3-886a-5083-3a1d-da69bf6f9e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SupIndep.attach (hs : s.SupIndep f) : s.attach.SupIndep fun a => f a := by
  intro t _ i _ hi
  classical
    have : (fun (a : { x // x ∈ s }) => f ↑a) = f ∘ (fun a : { x // x ∈ s } => ↑a) := rfl
    rw [this, ← Finset.sup_image]
    refine' hs (image_subset_iff.2 fun (j : { x // x ∈ s }) _ => j.2) i.2 fun hi' => hi _
    rw [mem_image] at hi'
    obtain ⟨j, hj, hji⟩ := hi'
    rwa [Subtype.ext hji] at hj
#align finset.sup_indep.attach Finset.SupIndep.attach

/-
Porting note: simpNF linter returns

"Left-hand side does not simplify, when using the simp lemma on itself."

However, simp does indeed solve the following. leanprover/std4#71 is related.

example {α ι} [Lattice α] [OrderBot α] (s : Finset ι) (f : ι → α) :
  (s.attach.SupIndep fun a => f a) ↔ s.SupIndep f := by simp
-/
@[simp, nolint simpNF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant66ae1ff591d94c5f8eb411296de1ba435cb72c91feffc1ba6949c63b9bd16e0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SupIndep/Variant66ae1ff591d94c5f8eb411296de1ba435cb72c91feffc1ba6949c63b9bd16e0c.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `233135dba71228f6df73abdb8144fbd7e6ff6bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
