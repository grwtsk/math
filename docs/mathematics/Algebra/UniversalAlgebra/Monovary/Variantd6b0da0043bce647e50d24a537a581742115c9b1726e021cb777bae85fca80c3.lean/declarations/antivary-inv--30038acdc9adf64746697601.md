# antivary_inv₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "372880306cdce393632fdd62b28b3c7473978eb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6b0da0043bce647e50d24a537a581742115c9b1726e021cb777bae85fca80c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5befc8d8-8a12-1618-30bd-f8a78791c037",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:badf744d-0d9c-4384-7bea-99e7d44dc6cd",
  "kind": "lemma",
  "lexical_name": "antivary_inv₀",
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
  "slug": "antivary-inv--30038acdc9adf64746697601",
  "source": {
    "blob": "372880306cdce393632fdd62b28b3c7473978eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 337,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Variantd6b0da0043bce647e50d24a537a581742115c9b1726e021cb777bae85fca80c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30038acdc9adf64746697601aca949847ce82dcf2e25e0fcce9775d3d31137cd",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Variantd6b0da0043bce647e50d24a537a581742115c9b1726e021cb777bae85fca80c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:badf744d-0d9c-4384-7bea-99e7d44dc6cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma antivary_inv₀ (hf : StrongLT 0 f) (hg : StrongLT 0 g) : Antivary f⁻¹ g⁻¹ ↔ Antivary f g := by
  rw [antivary_inv_left₀ hf, monovary_inv_right₀ hg]

end

alias ⟨MonovaryOn.of_inv_left₀, AntivaryOn.inv_left₀⟩ := monovaryOn_inv_left₀
alias ⟨AntivaryOn.of_inv_left₀, MonovaryOn.inv_left₀⟩ := antivaryOn_inv_left₀
alias ⟨MonovaryOn.of_inv_right₀, AntivaryOn.inv_right₀⟩ := monovaryOn_inv_right₀
alias ⟨AntivaryOn.of_inv_right₀, MonovaryOn.inv_right₀⟩ := antivaryOn_inv_right₀
alias ⟨MonovaryOn.of_inv₀, MonovaryOn.inv₀⟩ := monovaryOn_inv₀
alias ⟨AntivaryOn.of_inv₀, AntivaryOn.inv₀⟩ := antivaryOn_inv₀
alias ⟨Monovary.of_inv_left₀, Antivary.inv_left₀⟩ := monovary_inv_left₀
alias ⟨Antivary.of_inv_left₀, Monovary.inv_left₀⟩ := antivary_inv_left₀
alias ⟨Monovary.of_inv_right₀, Antivary.inv_right₀⟩ := monovary_inv_right₀
alias ⟨Antivary.of_inv_right₀, Monovary.inv_right₀⟩ := antivary_inv_right₀
alias ⟨Monovary.of_inv₀, Monovary.inv₀⟩ := monovary_inv₀
alias ⟨Antivary.of_inv₀, Antivary.inv₀⟩ := antivary_inv₀

end LinearOrderedSemifield

/-! ### Rearrangement inequality characterisation -/

section LinearOrderedAddCommGroup
variable [Ring α] [LinearOrder α] [IsStrictOrderedRing α]
  [AddCommGroup β] [LinearOrder β] [IsOrderedAddMonoid β] [Module α β]
  [OrderedSMul α β] {f : ι → α} {g : ι → β} {s : Set ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Variantd6b0da0043bce647e50d24a537a581742115c9b1726e021cb777bae85fca80c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Variantd6b0da0043bce647e50d24a537a581742115c9b1726e021cb777bae85fca80c3.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372880306cdce393632fdd62b28b3c7473978eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
