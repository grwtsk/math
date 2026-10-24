# mem_forwardInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dce3480f8d4d54d52fea6372aff3d484f33becd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/230e5657fd955e58f745379a792cc24257ca21a1e477e69c1d0de1b0b40e392f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f5c2614-a6f7-11aa-9218-d232f1f2d0ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cbed211-4c4f-3cf1-2646-8a6dd4d74746",
  "kind": "theorem",
  "lexical_name": "mem_forwardInterval",
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
  "slug": "mem-forwardinterval--c0887e67cfc8ba2c5d2ed93f",
  "source": {
    "blob": "dce3480f8d4d54d52fea6372aff3d484f33becd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant230e5657fd955e58f745379a792cc24257ca21a1e477e69c1d0de1b0b40e392f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0887e67cfc8ba2c5d2ed93f495f5ed7e0af0ac84bf05d64f1345fe9fb55bfd7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant230e5657fd955e58f745379a792cc24257ca21a1e477e69c1d0de1b0b40e392f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cbed211-4c4f-3cf1-2646-8a6dd4d74746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_forwardInterval {net : TwoLayerNet} {xs : List ℝ} {Is : IntervalVector}
    (hwf : net.WellFormed)
    (hdim : net.layer1.inputDim = Is.length)
    (hxlen : xs.length = Is.length)
    (hmem : ∀ i, (hi : i < Is.length) → xs[i]'(by omega) ∈ Is[i]'hi)
    (prec : Int) (hprec : prec ≤ 0 := by norm_num) :
    ∀ i, (hi : i < min net.layer2.outputDim net.layer2.bias.length) →
      (forwardReal net xs)[i]'(by
        simp only [forwardReal, Layer.forwardReal_length]; omega) ∈
      (forwardInterval net Is prec)[i]'(by
        simp only [forwardInterval, Layer.forwardInterval_length]; omega) := by
  intro i hi
  simp only [forwardReal, forwardInterval]
  -- First layer soundness
  have hmem1 := Layer.mem_forwardInterval hwf.1 hdim hxlen hmem prec hprec
  -- Second layer input length
  have hlen1_real : (Layer.forwardReal net.layer1 xs).length =
      min net.layer1.outputDim net.layer1.bias.length := Layer.forwardReal_length _ _
  have hlen1_int : (Layer.forwardInterval net.layer1 Is prec).length =
      min net.layer1.outputDim net.layer1.bias.length := Layer.forwardInterval_length _ _ _
  -- Second layer soundness
  have hdim2 : net.layer2.inputDim = (Layer.forwardInterval net.layer1 Is prec).length := by
    rw [hlen1_int]; exact hwf.2.2
  have hmem1' : ∀ j, (hj : j < (Layer.forwardInterval net.layer1 Is prec).length) →
      (Layer.forwardReal net.layer1 xs)[j]'(by
        simp only [Layer.forwardReal_length, Layer.forwardInterval_length] at hlen1_real hj ⊢; omega) ∈
      (Layer.forwardInterval net.layer1 Is prec)[j]'hj := by
    intro j hj
    have hj' : j < min net.layer1.outputDim net.layer1.bias.length := by
      simp only [Layer.forwardInterval_length] at hj; exact hj
    exact hmem1 j hj'
  have hlen_eq : (Layer.forwardReal net.layer1 xs).length =
      (Layer.forwardInterval net.layer1 Is prec).length := by
    simp only [Layer.forwardReal_length, Layer.forwardInterval_length]
  exact Layer.mem_forwardInterval hwf.2.1 hdim2 hlen_eq hmem1' prec hprec i hi

end TwoLayerNet

end LeanCert.ML
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant230e5657fd955e58f745379a792cc24257ca21a1e477e69c1d0de1b0b40e392f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant230e5657fd955e58f745379a792cc24257ca21a1e477e69c1d0de1b0b40e392f.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce3480f8d4d54d52fea6372aff3d484f33becd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
