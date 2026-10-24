# Pairwise.cons_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "590f8d1b96a021da3414c501f01d0c9c564748a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 829,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75f8c19f-dd4b-eeef-b565-b80f482b684d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c3468ce-2203-2e09-89d8-47030a017e97",
  "kind": "theorem",
  "lexical_name": "Pairwise.cons_elim",
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
  "slug": "pairwise-cons-elim--8189a931161f076f9e039e63",
  "source": {
    "blob": "590f8d1b96a021da3414c501f01d0c9c564748a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 829,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8189a931161f076f9e039e6363f06b5b59329eba6bb5cbcb522b6e144b7383af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c3468ce-2203-2e09-89d8-47030a017e97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pairwise.cons_elim {R : α → α → Prop} {hd : α} {tl : Seq α}
    (h : Pairwise R (.cons hd tl)) : (∀ x ∈ tl, R hd x) ∧ Pairwise R tl := by
  simp only [Pairwise] at *
  refine ⟨?_, fun i j h_ij ↦ h (i + 1) (j + 1) (by lia)⟩
  intro x hx
  rw [mem_iff_exists_get?] at hx
  obtain ⟨n, hx⟩ := hx
  simpa [← hx] using h 0 (n + 1) (by lia)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590f8d1b96a021da3414c501f01d0c9c564748a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
