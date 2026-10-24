# norm_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 958,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f6a3bfe-c277-afae-57e5-4533f3651ff7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a66ad54-de35-13b6-2404-305e060623a6",
  "kind": "theorem",
  "lexical_name": "norm_single",
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
  "slug": "norm-single--9aab569f2adc6cf1501247da",
  "source": {
    "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 958,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aab569f2adc6cf1501247da3b4c31c6742c2a3e6f031608b480a2de94140d45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a66ad54-de35-13b6-2404-305e060623a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 958–977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem norm_single (hp : 0 < p) (i : α) (x : E i) : ‖lp.single p i x‖ = ‖x‖ := by
  haveI : Nonempty α := ⟨i⟩
  induction p with
  | top =>
    simp only [norm_eq_ciSup, lp.coeFn_single]
    refine
      ciSup_eq_of_forall_le_of_forall_lt_exists_gt (fun j => ?_) fun n hn => ⟨i, hn.trans_eq ?_⟩
    · obtain rfl | hij := Decidable.eq_or_ne i j
      · rw [Pi.single_eq_same]
      · rw [Pi.single_eq_of_ne' hij, _root_.norm_zero]
        exact norm_nonneg _
    · rw [Pi.single_eq_same]
  | coe p =>
    have : 0 < (p : ℝ≥0∞).toReal := by simpa using hp
    rw [norm_eq_tsum_rpow this, tsum_eq_single i, lp.coeFn_single, one_div,
      Real.rpow_rpow_inv _ this.ne', Pi.single_eq_same]
    · exact norm_nonneg _
    · intro j hji
      rw [lp.coeFn_single, Pi.single_eq_of_ne hji, _root_.norm_zero, Real.zero_rpow this.ne']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean#L958).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95065bf79d4606e53b195edd84b9761a1242ddcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
