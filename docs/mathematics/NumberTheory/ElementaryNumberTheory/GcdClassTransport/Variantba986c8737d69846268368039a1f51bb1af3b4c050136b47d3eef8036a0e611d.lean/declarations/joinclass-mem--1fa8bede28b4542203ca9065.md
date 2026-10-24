# joinClass_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae4dbd83-a9bb-0b0a-1a93-bba4760d8ff6",
  "kind": "theorem",
  "lexical_name": "joinClass_mem",
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
  "slug": "joinclass-mem--1fa8bede28b4542203ca9065",
  "source": {
    "blob": "1e3bf19ad6ff9bd4d871794742d4508966186524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 60,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fa8bede28b4542203ca906516908de7657d38290615d93e12b8d9924836a251",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae4dbd83-a9bb-0b0a-1a93-bba4760d8ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joinClass_mem (N : ℕ) (s : Σ _ : ℕ × ℕ, ℕ)
    (hs : s ∈ gcdClasses N) : joinClass s ∈ (Icc 1 N) ×ˢ (Icc 1 N) := by
  obtain ⟨hp, hg⟩ := mem_sigma.mp hs
  obtain ⟨hp, _⟩ := mem_filter.mp hp
  obtain ⟨hu, hv⟩ := mem_product.mp hp
  obtain ⟨hu1, _⟩ := mem_Icc.mp hu
  obtain ⟨hv1, _⟩ := mem_Icc.mp hv
  obtain ⟨hg1, hgN⟩ := mem_Icc.mp hg
  have hmax : 0 < max s.1.1 s.1.2 := (show 0 < s.1.1 by omega).trans_le (le_max_left _ _)
  have hgmax := (Nat.le_div_iff_mul_le hmax).mp hgN
  exact mem_product.mpr
    ⟨mem_Icc.mpr ⟨by dsimp [joinClass]; nlinarith,
      (Nat.mul_le_mul_left _ (le_max_left _ _)).trans hgmax⟩,
     mem_Icc.mpr ⟨by dsimp [joinClass]; nlinarith,
      (Nat.mul_le_mul_left _ (le_max_right _ _)).trans hgmax⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3bf19ad6ff9bd4d871794742d4508966186524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
