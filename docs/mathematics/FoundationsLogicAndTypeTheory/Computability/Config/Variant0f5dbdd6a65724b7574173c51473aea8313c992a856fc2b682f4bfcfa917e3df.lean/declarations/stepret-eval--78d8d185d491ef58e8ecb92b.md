# stepRet_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "958b743e6c161e2c6fc87571be26fd8b27ecf211",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 700,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4c9d872-3751-fdd4-1980-ac91d446ba92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5606ad0-e687-ad52-32e8-0099ff6a0970",
  "kind": "theorem",
  "lexical_name": "stepRet_eval",
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
  "slug": "stepret-eval--78d8d185d491ef58e8ecb92b",
  "source": {
    "blob": "958b743e6c161e2c6fc87571be26fd8b27ecf211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 700,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78d8d185d491ef58e8ecb92b809380ca91abfdb0f17d6a17b19c7f901d90c102",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5606ad0-e687-ad52-32e8-0099ff6a0970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepRet_eval {k v} : eval step (stepRet k v) = Cfg.halt <$> k.eval v := by
  induction k generalizing v with
  | halt =>
    simp only [Cont.eval, map_pure]
    exact Part.eq_some_iff.2 (mem_eval.2 ⟨ReflTransGen.refl, rfl⟩)
  | cons₁ fs as k IH =>
    rw [Cont.eval, stepRet, code_is_ok]
    simp only [← bind_pure_comp, bind_assoc]; congr; funext v'
    rw [reaches_eval]; swap
    · exact ReflTransGen.single rfl
    rw [stepRet, IH, bind_pure_comp]
  | cons₂ ns k IH => rw [Cont.eval, stepRet]; exact IH
  | comp f k IH =>
    rw [Cont.eval, stepRet, code_is_ok]
    simp only [← bind_pure_comp, bind_assoc]; congr; funext v'
    rw [reaches_eval]; swap
    · exact ReflTransGen.single rfl
    rw [IH, bind_pure_comp]
  | fix f k IH =>
    rw [Cont.eval, stepRet]; simp only
    split_ifs; · exact IH
    simp only [← bind_pure_comp, bind_assoc, cont_eval_fix (code_is_ok _)]
    congr; funext; rw [bind_pure_comp, ← IH]
    exact reaches_eval (ReflTransGen.single rfl)

end ToPartrec

end Turing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant0f5dbdd6a65724b7574173c51473aea8313c992a856fc2b682f4bfcfa917e3df.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `958b743e6c161e2c6fc87571be26fd8b27ecf211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
