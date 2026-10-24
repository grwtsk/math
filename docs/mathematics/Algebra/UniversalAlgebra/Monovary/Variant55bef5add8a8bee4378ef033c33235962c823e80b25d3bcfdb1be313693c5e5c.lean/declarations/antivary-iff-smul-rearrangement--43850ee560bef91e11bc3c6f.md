# antivary_iff_smul_rearrangement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0a73547-86b3-995d-01e8-248d53e108a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e8ce82f-99f0-91d3-644c-a480b1905833",
  "kind": "lemma",
  "lexical_name": "antivary_iff_smul_rearrangement",
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
  "slug": "antivary-iff-smul-rearrangement--43850ee560bef91e11bc3c6f",
  "source": {
    "blob": "80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 406,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43850ee560bef91e11bc3c6f09bf8f8a3ee430c4b64a8496dce4ca35db20bcc8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e8ce82f-99f0-91d3-644c-a480b1905833`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma antivary_iff_smul_rearrangement :
    Antivary f g ↔ ∀ i j, f i • g i + f j • g j ≤ f i • g j + f j • g i :=
  monovary_toDual_right.symm.trans <| by rw [monovary_iff_smul_rearrangement]; rfl

alias ⟨MonovaryOn.sub_smul_sub_nonneg, _⟩ := monovaryOn_iff_forall_smul_nonneg
alias ⟨AntivaryOn.sub_smul_sub_nonpos, _⟩ := antivaryOn_iff_forall_smul_nonpos
alias ⟨Monovary.sub_smul_sub_nonneg, _⟩ := monovary_iff_forall_smul_nonneg
alias ⟨Antivary.sub_smul_sub_nonpos, _⟩ := antivary_iff_forall_smul_nonpos
alias ⟨Monovary.smul_add_smul_le_smul_add_smul, _⟩ := monovary_iff_smul_rearrangement
alias ⟨Antivary.smul_add_smul_le_smul_add_smul, _⟩ := antivary_iff_smul_rearrangement
alias ⟨MonovaryOn.smul_add_smul_le_smul_add_smul, _⟩ := monovaryOn_iff_smul_rearrangement
alias ⟨AntivaryOn.smul_add_smul_le_smul_add_smul, _⟩ := antivaryOn_iff_smul_rearrangement

end LinearOrderedAddCommGroup

section LinearOrderedRing
variable [Ring α] [LinearOrder α] [IsStrictOrderedRing α] {f g : ι → α} {s : Set ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
