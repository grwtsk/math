# fixingSubgroup_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:382294c9-75b2-cb99-883d-25eb9c1f2698",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:307bcccd-9d4c-b79e-a580-378b4ff6007e",
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
  "slug": "fixingsubgroup-isclosed--ab8d29a2a1729404b50fc319",
  "source": {
    "blob": "f9523833f551d886ec45d137d31d72c4f83cbbea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8d29a2a1729404b50fc3196b781c9e6f46e73d48f542dd85d0ab040b1a0c1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:307bcccd-9d4c-b79e-a580-378b4ff6007e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fixingSubgroup_isClosed (L : IntermediateField k K) [IsGalois k K] :
    IsClosed (L.fixingSubgroup : Set Gal(K/k)) where
  isOpen_compl := isOpen_iff_mem_nhds.mpr fun σ h => by
    apply mem_nhds_iff.mpr
    rcases Set.not_subset.mp ((mem_fixingSubgroup_iff Gal(K/k)).not.mp h) with ⟨y, yL, ne⟩
    use σ • ((adjoin k {y}).1.fixingSubgroup : Set Gal(K/k))
    constructor
    · intro f hf
      rcases (Set.mem_smul_set.mp hf) with ⟨g, hg, eq⟩
      simp only [Set.mem_compl_iff, SetLike.mem_coe, ← eq]
      apply (mem_fixingSubgroup_iff Gal(K/k)).not.mpr
      push Not
      use y
      simp only [yL, smul_eq_mul, AlgEquiv.smul_def, AlgEquiv.mul_apply, ne_eq, true_and]
      have : g y = y := (mem_fixingSubgroup_iff Gal(K/k)).mp hg y <|
        adjoin_simple_le_iff.mp le_rfl
      simpa only [this, ne_eq, AlgEquiv.smul_def] using! ne
    · simp only [(IntermediateField.fixingSubgroup_isOpen (adjoin k {y}).1).smul σ, true_and]
      use 1
      simp only [SetLike.mem_coe, smul_eq_mul, mul_one, and_true, Subgroup.one_mem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant1f842ded64891930b1db35cb6defac92a64db65327e7af6b7f66a6805f6b819f.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9523833f551d886ec45d137d31d72c4f83cbbea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
