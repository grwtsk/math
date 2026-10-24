# ιMulti_mul_ιMulti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2a814c043d81108cb7adeb5d8f4c9e6f0d91d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a3c4b3a-8301-a3e4-7f8a-09daa61fa50e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c5f6a5c-9219-87fa-41dd-50e305542dae",
  "kind": "lemma",
  "lexical_name": "ιMulti_mul_ιMulti",
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
  "slug": "multi-mul-multi--f5f5ea3fabebc95b7bca379a",
  "source": {
    "blob": "e2a814c043d81108cb7adeb5d8f4c9e6f0d91d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 321,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5f5ea3fabebc95b7bca379ac69a98960c4fd43129c90996675904e607aef1e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5f6a5c-9219-87fa-41dd-50e305542dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMulti_mul_ιMulti {m n : ℕ} (a : Fin m → M) (b : Fin n → M) :
    ιMulti R m a * ιMulti R n b = ιMulti R (m + n) (Fin.append a b) := by
  simp only [ιMulti_apply]
  change _ = (List.ofFn ((ι R) ∘ Fin.append a b)).prod
  rw [← List.map_ofFn, List.ofFn_fin_append, List.map_append, List.prod_append]
  simp only [List.map_ofFn]
  congr

variable (R)

/-- The image of `ExteriorAlgebra.ιMulti R n` is contained in the `n`th exterior power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc29a498ed7bb37863ceffa1788136d6d85117a8a90decfaa98a77b29771bf6b5.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2a814c043d81108cb7adeb5d8f4c9e6f0d91d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
