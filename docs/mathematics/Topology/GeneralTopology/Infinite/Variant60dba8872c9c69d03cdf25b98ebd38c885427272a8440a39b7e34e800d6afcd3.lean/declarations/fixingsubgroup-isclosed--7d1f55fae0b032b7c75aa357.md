# fixingSubgroup_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e54dcbced2dc3324deebac70c173bdf7908458e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:467616b5-344a-815d-5a19-960fa36c5af4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a05bb6bd-bb0b-a7b5-7344-92e4fd651cf7",
  "kind": "lemma",
  "lexical_name": "fixingSubgroup_isClosed",
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
  "slug": "fixingsubgroup-isclosed--7d1f55fae0b032b7c75aa357",
  "source": {
    "blob": "e54dcbced2dc3324deebac70c173bdf7908458e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d1f55fae0b032b7c75aa3578f5726b9e01fb88827fd2db2d0968dd7f6c78ad4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05bb6bd-bb0b-a7b5-7344-92e4fd651cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fixingSubgroup_isClosed (L : IntermediateField k K) [IsGalois k K] :
    IsClosed (L.fixingSubgroup : Set (K ≃ₐ[k] K)) where
  isOpen_compl := isOpen_iff_mem_nhds.mpr fun σ h => by
    apply mem_nhds_iff.mpr
    rcases Set.not_subset.mp ((mem_fixingSubgroup_iff (K ≃ₐ[k] K)).not.mp h) with ⟨y, yL, ne⟩
    use σ • ((adjoin k {y}).1.fixingSubgroup : Set (K ≃ₐ[k] K))
    constructor
    · intro f hf
      rcases (Set.mem_smul_set.mp hf) with ⟨g, hg, eq⟩
      simp only [Set.mem_compl_iff, SetLike.mem_coe, ← eq]
      apply (mem_fixingSubgroup_iff (K ≃ₐ[k] K)).not.mpr
      push_neg
      use y
      simp only [yL, smul_eq_mul, AlgEquiv.smul_def, AlgEquiv.mul_apply, ne_eq, true_and]
      have : g y = y := (mem_fixingSubgroup_iff (K ≃ₐ[k] K)).mp hg y <|
        adjoin_simple_le_iff.mp le_rfl
      simpa only [this, ne_eq, AlgEquiv.smul_def] using ne
    · simp only [(IntermediateField.fixingSubgroup_isOpen (adjoin k {y}).1).smul σ, true_and]
      use 1
      simp only [SetLike.mem_coe, smul_eq_mul, mul_one, and_true, Subgroup.one_mem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant60dba8872c9c69d03cdf25b98ebd38c885427272a8440a39b7e34e800d6afcd3.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54dcbced2dc3324deebac70c173bdf7908458e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
