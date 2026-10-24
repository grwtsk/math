# Real.sSup_smul_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b2b82063bee86a381a832e65b619ca8d4028d1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b1fed7d-31ab-d78f-fbe2-99980495ce9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:984bc349-522b-a22b-5091-43d14c7b1150",
  "kind": "theorem",
  "lexical_name": "Real.sSup_smul_of_nonneg",
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
  "slug": "real-ssup-smul-of-nonneg--cae2a507444108154ee6ddf8",
  "source": {
    "blob": "1b2b82063bee86a381a832e65b619ca8d4028d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae2a507444108154ee6ddf87b7171af3a317da0bc21d58fe3621567ab57bb92",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:984bc349-522b-a22b-5091-43d14c7b1150`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.sSup_smul_of_nonneg (ha : 0 ≤ a) (s : Set ℝ) : sSup (a • s) = a • sSup s := by
  obtain rfl | hs := s.eq_empty_or_nonempty
  · rw [smul_set_empty, Real.sSup_empty, smul_zero]
  obtain rfl | ha' := ha.eq_or_lt
  · rw [zero_smul_set hs, zero_smul]
    exact csSup_singleton 0
  by_cases h : BddAbove s
  · exact ((OrderIso.smulLeft ℝ ha').map_csSup' hs h).symm
  · rw [Real.sSup_of_not_bddAbove (mt (bddAbove_smul_iff_of_pos ha').1 h),
        Real.sSup_of_not_bddAbove h, smul_zero]
#align real.Sup_smul_of_nonneg Real.sSup_smul_of_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2b82063bee86a381a832e65b619ca8d4028d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
