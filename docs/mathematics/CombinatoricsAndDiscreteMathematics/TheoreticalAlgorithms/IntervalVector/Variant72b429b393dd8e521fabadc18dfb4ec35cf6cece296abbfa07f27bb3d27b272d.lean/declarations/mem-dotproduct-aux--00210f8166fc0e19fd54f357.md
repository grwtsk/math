# mem_dotProduct_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b46dd340c64d5daaa81f7256a942bf8b013b3ff2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb0113e6-a217-4eba-3608-e3bcf981d3b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23c4d834-6540-743e-2fd7-c364c08c8e5b",
  "kind": "theorem",
  "lexical_name": "mem_dotProduct_aux",
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
  "slug": "mem-dotproduct-aux--00210f8166fc0e19fd54f357",
  "source": {
    "blob": "b46dd340c64d5daaa81f7256a942bf8b013b3ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00210f8166fc0e19fd54f3576e2f13ca0fb29319ddda4caf7c212290ff95a85e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c4d834-6540-743e-2fd7-c364c08c8e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_dotProduct_aux (weights : List ℚ) (xs : List ℝ) (Is : IntervalVector)
    (hlen : weights.length = Is.length)
    (hxlen : xs.length = Is.length)
    (hmem : ∀ i, (hi : i < Is.length) → xs[i]'(by omega) ∈ Is[i]'hi)
    (prec : Int) (hprec : prec ≤ 0) :
    realDotProduct weights xs ∈ dotProduct weights Is prec := by
  induction weights generalizing xs Is with
  | nil =>
    match xs, Is with
    | [], [] =>
      simp only [realDotProduct, dotProduct]
      exact mem_zero_singleton
    | _ :: _, [] => simp at hxlen
    | [], _ :: _ => simp at hlen
    | _ :: _, _ :: _ => simp at hlen
  | cons w ws ih =>
    match xs, Is with
    | [], [] => simp at hlen
    | [], _ :: _ => simp at hxlen
    | _ :: _, [] => simp at hlen
    | x :: xs', I :: Is' =>
      simp only [realDotProduct, dotProduct]
      apply IntervalDyadic.mem_add
      · apply mem_scalarMulInterval _ _ hprec
        exact hmem 0 (by simp)
      · have hlen' : ws.length = Is'.length := by simp at hlen; exact hlen
        have hxlen' : xs'.length = Is'.length := by simp at hxlen; exact hxlen
        have hmem' : ∀ i, (hi : i < Is'.length) → xs'[i] ∈ Is'[i] := by
          intro i hi
          have h := hmem (i + 1) (by simp; omega)
          simp only [List.getElem_cons_succ] at h
          exact h
        exact ih xs' Is' hlen' hxlen' hmem'

/-- Soundness of dot product: if each x_i ∈ I_i, then ∑ w_i * x_i ∈ dotProduct -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b46dd340c64d5daaa81f7256a942bf8b013b3ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
