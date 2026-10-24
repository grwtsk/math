# antivary_inv₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d06d0db0-bcc9-e658-4c5c-c1a6e2c3818b",
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
  "slug": "antivary-inv--585d7c569d3e17255a0602ea",
  "source": {
    "blob": "6ee615c2e3df1164b60f42e33509397bada1ea21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 345,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:585d7c569d3e17255a0602ea88d5e519a7e0dd4e4a0cfd8a72aa453f83eb47b3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d06d0db0-bcc9-e658-4c5c-c1a6e2c3818b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–371.

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

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee615c2e3df1164b60f42e33509397bada1ea21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
