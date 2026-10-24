# Disjoint.exists_uniform_thickening_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7014f36aac7fa86c5cf4cd157a30e8a4f37ed922",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31af5017f0b54819e36ff6437aa2d173ea7d7aa1dc71d74a760f4a4fae0b54c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eb782a0-92f9-3c8e-175c-b397b8313e77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f161a34e-7829-b1d8-d072-f0183100a240",
  "kind": "theorem",
  "lexical_name": "Disjoint.exists_uniform_thickening_of_basis",
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
  "slug": "disjoint-exists-uniform-thickening-of-basis--783067fb73b540fd8021fd3a",
  "source": {
    "blob": "7014f36aac7fa86c5cf4cd157a30e8a4f37ed922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant31af5017f0b54819e36ff6437aa2d173ea7d7aa1dc71d74a760f4a4fae0b54c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:783067fb73b540fd8021fd3aef6f5b8a4fbd5545d56b9db605461dc95824207e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant31af5017f0b54819e36ff6437aa2d173ea7d7aa1dc71d74a760f4a4fae0b54c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f161a34e-7829-b1d8-d072-f0183100a240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disjoint.exists_uniform_thickening_of_basis {p : ι → Prop} {s : ι → Set (α × α)}
    (hU : (𝓤 α).HasBasis p s) {A B : Set α} (hA : IsCompact A) (hB : IsClosed B)
    (h : Disjoint A B) : ∃ i, p i ∧ Disjoint (⋃ x ∈ A, ball x (s i)) (⋃ x ∈ B, ball x (s i)) := by
  rcases h.exists_uniform_thickening hA hB with ⟨V, hV, hVAB⟩
  rcases hU.mem_iff.1 hV with ⟨i, hi, hiV⟩
  exact ⟨i, hi, hVAB.mono (iUnion₂_mono fun a _ => ball_mono hiV a)
    (iUnion₂_mono fun b _ => ball_mono hiV b)⟩

/-- A useful consequence of the Lebesgue number lemma: given any compact set `K` contained in an
open set `U`, we can find an (open) entourage `V` such that the ball of size `V` about any point of
`K` is contained in `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant31af5017f0b54819e36ff6437aa2d173ea7d7aa1dc71d74a760f4a4fae0b54c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant31af5017f0b54819e36ff6437aa2d173ea7d7aa1dc71d74a760f4a4fae0b54c4.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7014f36aac7fa86c5cf4cd157a30e8a4f37ed922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
