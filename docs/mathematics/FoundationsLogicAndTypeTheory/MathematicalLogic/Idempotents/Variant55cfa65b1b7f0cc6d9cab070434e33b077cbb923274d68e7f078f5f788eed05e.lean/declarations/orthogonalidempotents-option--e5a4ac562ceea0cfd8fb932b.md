# OrthogonalIdempotents.option

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0d12e7f5924330176fd12dba6740d9fa10d8340",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d15204e4-331c-1bb4-736a-d6d896567f56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:929bd0a7-53d1-4c31-8c3c-0306f0189eef",
  "kind": "lemma",
  "lexical_name": "OrthogonalIdempotents.option",
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
  "slug": "orthogonalidempotents-option--e5a4ac562ceea0cfd8fb932b",
  "source": {
    "blob": "a0d12e7f5924330176fd12dba6740d9fa10d8340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a4ac562ceea0cfd8fb932b3b70178efda7c400365a3656fb86cbae70d69b2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:929bd0a7-53d1-4c31-8c3c-0306f0189eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma OrthogonalIdempotents.option (he : OrthogonalIdempotents e) [Fintype I] (x)
    (hx : IsIdempotentElem x) (hx₁ : x * ∑ i, e i = 0) (hx₂ : (∑ i, e i) * x = 0) :
    OrthogonalIdempotents (Option.elim · x e) where
  idem i := i.rec hx he.idem
  ortho i j ne := by
    classical
    rcases i with - | i <;> rcases j with - | j
    · cases ne rfl
    · simpa only [mul_assoc, Finset.sum_mul, he.mul_eq, Finset.sum_ite_eq', Finset.mem_univ,
        ↓reduceIte, zero_mul] using congr_arg (· * e j) hx₁
    · simpa only [Option.elim_some, Option.elim_none, ← mul_assoc, Finset.mul_sum, he.mul_eq,
        Finset.sum_ite_eq, Finset.mem_univ, ↓reduceIte, mul_zero] using congr_arg (e i * ·) hx₂
    · exact he.ortho (Option.some_inj.ne.mp ne)

variable [Fintype I]

/--
A family `{ eᵢ }` of idempotent elements is complete orthogonal if
1. (orthogonal) `eᵢ * eⱼ = 0` for all `i ≠ j`.
2. (complete) `∑ eᵢ = 1`
-/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variant55cfa65b1b7f0cc6d9cab070434e33b077cbb923274d68e7f078f5f788eed05e.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d12e7f5924330176fd12dba6740d9fa10d8340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
