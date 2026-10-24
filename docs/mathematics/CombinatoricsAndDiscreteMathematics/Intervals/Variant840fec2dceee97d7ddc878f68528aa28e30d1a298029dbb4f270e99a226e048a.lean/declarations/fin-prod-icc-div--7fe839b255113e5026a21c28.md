# Fin.prod_Icc_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffe993d2007a176eaeb2df707e65a0b809282d4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/840fec2dceee97d7ddc878f68528aa28e30d1a298029dbb4f270e99a226e048a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8005d21a-82d1-d68a-3e6f-fb811c6505bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4804fe6-a3c5-5c98-5897-40a69131737f",
  "kind": "lemma",
  "lexical_name": "Fin.prod_Icc_div",
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
  "slug": "fin-prod-icc-div--7fe839b255113e5026a21c28",
  "source": {
    "blob": "ffe993d2007a176eaeb2df707e65a0b809282d4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 260,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant840fec2dceee97d7ddc878f68528aa28e30d1a298029dbb4f270e99a226e048a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fe839b255113e5026a21c285bacd5fbb5bc4e80e42ce082b2e93d1eeada50e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Intervals/Variant840fec2dceee97d7ddc878f68528aa28e30d1a298029dbb4f270e99a226e048a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4804fe6-a3c5-5c98-5897-40a69131737f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Fin.prod_Icc_div [CommGroup M] {n : ℕ} {a b : Fin n} (hab : a ≤ b)
    (f : Fin (n + 1) → M) :
    ∏ i ∈ Icc a b, (f i.succ / f i.castSucc) = f b.succ / f a.castSucc := by
  rw [prod_fin_Icc_eq_prod_nat_Icc]
  convert! Finset.prod_Icc_div (Fin.le_def.1 hab) (fun i ↦ if hi : i < n + 1 then f ⟨i, hi⟩ else 1)
  · simp_all
    grind
  · grind
  · simp only [Order.lt_add_one_iff, is_le', ↓reduceDIte]
    rfl

end Fin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Intervals/Variant840fec2dceee97d7ddc878f68528aa28e30d1a298029dbb4f270e99a226e048a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant840fec2dceee97d7ddc878f68528aa28e30d1a298029dbb4f270e99a226e048a.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe993d2007a176eaeb2df707e65a0b809282d4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
