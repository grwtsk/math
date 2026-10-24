# mem_zipWith3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcc78fcc-743e-56a4-b430-6884315c82e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dd4fa73-3d42-60f2-8758-fdbe59856dad",
  "kind": "theorem",
  "lexical_name": "mem_zipWith3",
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
  "slug": "mem-zipwith3--a0d6fb8182be7b0a055411d9",
  "source": {
    "blob": "ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 484,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d6fb8182be7b0a055411d9b04b91724a18898301d05d4493e93e03aaf7c767",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd4fa73-3d42-60f2-8758-fdbe59856dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_zipWith3 {f : ℝ → ℚ → ℚ → ℝ} {g : IntervalDyadic → ℚ → ℚ → IntervalDyadic}
    {xs : List ℝ} {Is : IntervalVector} {as bs : List ℚ}
    (hlen_xs_Is : xs.length = Is.length)
    (hmem : ∀ i, i < xs.length → xs[i]! ∈ Is[i]!)
    (hf : ∀ x I a b, x ∈ I → f x a b ∈ g I a b) :
    ∀ i, i < (List.zipWith3 f xs as bs).length →
      (List.zipWith3 f xs as bs)[i]! ∈ (List.zipWith3 g Is as bs)[i]! := by
  induction xs generalizing Is as bs with
  | nil =>
    intro i hi
    simp [List.zipWith3] at hi
  | cons x xs' ih =>
    match Is, as, bs with
    | [], _, _ => intro i hi; simp at hlen_xs_Is
    | I :: Is', [], _ =>
      intro i hi
      simp [List.zipWith3] at hi
    | I :: Is', _ :: _, [] =>
      intro i hi
      simp [List.zipWith3] at hi
    | I :: Is', a :: as', b :: bs' =>
      intro i hi
      cases i with
      | zero =>
        simp only [List.zipWith3, List.getElem!_cons_zero]
        apply hf
        have := hmem 0 (by simp)
        simp only [List.getElem!_cons_zero] at this
        exact this
      | succ j =>
        simp only [List.zipWith3, List.getElem!_cons_succ]
        have hlen' : xs'.length = Is'.length := by simp at hlen_xs_Is; exact hlen_xs_Is
        have hmem' : ∀ i, i < xs'.length → xs'[i]! ∈ Is'[i]! := fun i hi' => by
          have := hmem (i + 1) (by simp; omega)
          simp only [List.getElem!_cons_succ] at this
          exact this
        have hj : j < (List.zipWith3 f xs' as' bs').length := by
          simp [List.zipWith3] at hi ⊢
          omega
        exact @ih Is' as' bs' hlen' hmem' j hj

/-- Membership for singleton rational interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
