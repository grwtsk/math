# LinearIndependent.pair_add_smul_add_smul_iff_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04f8474d8c2220a1d64a22e672421f322115a2ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47bbd021-1c21-e50c-db11-fd02fc03d1a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da6f2e08-452c-93ae-ac47-aad9f7d85801",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.pair_add_smul_add_smul_iff_aux",
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
  "slug": "linearindependent-pair-add-smul-add-smul-iff-aux--aa980f1282975516c211b405",
  "source": {
    "blob": "04f8474d8c2220a1d64a22e672421f322115a2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 291,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa980f1282975516c211b405f77239c3e3eb00d68c450b16d51e88c43ba75109",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da6f2e08-452c-93ae-ac47-aad9f7d85801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma LinearIndependent.pair_add_smul_add_smul_iff_aux (h : a * d ≠ b * c)
    (h' : LinearIndependent R ![x, y]) :
    LinearIndependent R ![a • x + b • y, c • x + d • y] := by
  simp only [LinearIndependent.pair_iff] at h' ⊢
  intro s t hst
  specialize h' (a • s + c • t) (b • s + d • t) (by simp only [← hst, smul_add, add_smul,
    smul_assoc, smul_comm a s, smul_comm c t, smul_comm b s, smul_comm d t]; abel)
  obtain ⟨h₁, h₂⟩ := h'
  constructor
  · suffices (a * d) • s = (b * c) • s by
      by_contra hs; exact h (_root_.smul_left_injective S hs ‹_›)
    calc (a * d) • s
        = d • a • s := by rw [mul_comm, mul_smul]
      _ = - (d • c • t) := by rw [eq_neg_iff_add_eq_zero, ← smul_add, h₁, smul_zero]
      _ = (b * c) • s := ?_
    · rw [mul_comm, mul_smul, neg_eq_iff_add_eq_zero, add_comm, smul_comm d c, ← smul_add, h₂,
        smul_zero]
  · suffices (a * d) • t = (b * c) • t by
      by_contra ht; exact h (_root_.smul_left_injective S ht ‹_›)
    calc (a * d) • t
        = a • d • t := by rw [mul_smul]
      _ = - (a • b • s) := by rw [eq_neg_iff_add_eq_zero, ← smul_add, add_comm, h₂, smul_zero]
      _ = (b * c) • t := ?_
    · rw [mul_smul, neg_eq_iff_add_eq_zero, smul_comm a b, ← smul_add, h₁, smul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant26d22d1d93cdad7e4d1bb7237858bc8c5bb67962670d166426bc5fc0bffac0c2.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04f8474d8c2220a1d64a22e672421f322115a2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
