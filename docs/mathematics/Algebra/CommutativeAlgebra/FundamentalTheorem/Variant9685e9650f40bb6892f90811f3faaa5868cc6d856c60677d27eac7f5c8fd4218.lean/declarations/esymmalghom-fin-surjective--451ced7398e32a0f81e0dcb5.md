# esymmAlgHom_fin_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4140bfb-edc6-9249-3547-94924017b725",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c04b4bc-895f-20a9-fb5e-c7a198bf4b3a",
  "kind": "lemma",
  "lexical_name": "esymmAlgHom_fin_surjective",
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
  "slug": "esymmalghom-fin-surjective--451ced7398e32a0f81e0dcb5",
  "source": {
    "blob": "5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 313,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451ced7398e32a0f81e0dcb56a90ab2b726325055daf60df2e78d6fdfb4d6c8a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c04b4bc-895f-20a9-fb5e-c7a198bf4b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma esymmAlgHom_fin_surjective (h : m ≤ n) :
    Function.Surjective (esymmAlgHom (Fin m) R n) := by
  intro p
  obtain ⟨q, rfl⟩ := (esymmAlgHom_fin_bijective R m).2 p
  rw [← AlgHom.mem_range]
  induction q using MvPolynomial.induction_on with
  | C r => rw [← algebraMap_eq, AlgHom.commutes]; apply Subalgebra.algebraMap_mem
  | add p q hp hq => rw [map_add]; exact Subalgebra.add_mem _ hp hq
  | mul_X p i hp =>
    rw [map_mul]
    apply Subalgebra.mul_mem _ hp
    rw [AlgHom.mem_range]
    refine ⟨X ⟨i, i.2.trans_le h⟩, ?_⟩
    simp_rw [esymmAlgHom, aeval_X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
