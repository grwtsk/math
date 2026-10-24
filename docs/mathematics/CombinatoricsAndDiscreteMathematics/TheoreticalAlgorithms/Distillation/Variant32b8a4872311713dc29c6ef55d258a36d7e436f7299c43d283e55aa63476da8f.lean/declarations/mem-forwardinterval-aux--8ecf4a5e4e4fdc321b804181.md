# mem_forwardInterval_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58d40cf8b4e8fe6710437fe57ce0dac4a499ed75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1970163-8982-e7ce-81e5-366206b44492",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:505d6f80-dfb6-2ad2-bb09-38aadcc6641c",
  "kind": "theorem",
  "lexical_name": "mem_forwardInterval_aux",
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
  "slug": "mem-forwardinterval-aux--8ecf4a5e4e4fdc321b804181",
  "source": {
    "blob": "58d40cf8b4e8fe6710437fe57ce0dac4a499ed75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecf4a5e4e4fdc321b804181d1258c66aa3ab6c0a2831a633921de5e3eb21920",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505d6f80-dfb6-2ad2-bb09-38aadcc6641c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_forwardInterval_aux (layers : List Layer) (xs : List ℝ) (Is : IntervalVector)
    (hdim : xs.length = Is.length)
    (hwf : LayersWellFormed layers xs.length)
    (hmem : ∀ i (hi : i < Is.length), xs[i]'(hdim ▸ hi) ∈ Is[i]'hi)
    (prec : Int) (hprec : prec ≤ 0) :
    let outReal := layers.foldl (fun acc l => Layer.forwardReal l acc) xs
    let outInt := layers.foldl (fun acc l => Layer.forwardInterval l acc prec) Is
    ∀ i (hi : i < outInt.length),
      outReal[i]'((forwardLength_aux layers xs Is hdim hwf prec) ▸ hi) ∈ outInt[i]'hi := by
  induction layers generalizing xs Is with
  | nil =>
    simp only [List.foldl_nil]
    intro i hi; exact hmem i hi
  | cons layer rest ih =>
    simp only [List.foldl_cons]
    -- Unpack WellFormed hypothesis
    simp only [LayersWellFormed] at hwf
    obtain ⟨l_wf, l_dim, rest_wf⟩ := hwf

    -- First layer output
    let nextReal := Layer.forwardReal layer xs
    let nextInt := Layer.forwardInterval layer Is prec

    -- Lengths of next layer outputs
    have hRealLen : nextReal.length = min layer.outputDim layer.bias.length :=
      Layer.forwardReal_length layer xs
    have hIntLen : nextInt.length = min layer.outputDim layer.bias.length :=
      Layer.forwardInterval_length layer Is prec
    have hNextLen : nextReal.length = nextInt.length := by rw [hRealLen, hIntLen]

    -- Layer 1 is sound
    have hL1 : ∀ j (hj : j < min layer.outputDim layer.bias.length),
        nextReal[j]'(hRealLen ▸ hj) ∈ nextInt[j]'(hIntLen ▸ hj) := by
      have hdim' : layer.inputDim = Is.length := by rw [l_dim, hdim]
      exact Layer.mem_forwardInterval l_wf hdim' hdim hmem prec hprec

    -- Translate membership for next layer
    have hmem' : ∀ i (hi : i < nextInt.length),
        nextReal[i]'(hNextLen ▸ hi) ∈ nextInt[i]'hi := by
      intro i hi
      have hi' : i < min layer.outputDim layer.bias.length := by rw [hIntLen] at hi; exact hi
      exact hL1 i hi'

    -- Well-formedness for rest uses output dim
    have hwf' : LayersWellFormed rest nextReal.length := by
      rw [hRealLen]; exact rest_wf

    exact ih nextReal nextInt hNextLen hwf' hmem'

/-- Public soundness theorem -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant32b8a4872311713dc29c6ef55d258a36d7e436f7299c43d283e55aa63476da8f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d40cf8b4e8fe6710437fe57ce0dac4a499ed75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
