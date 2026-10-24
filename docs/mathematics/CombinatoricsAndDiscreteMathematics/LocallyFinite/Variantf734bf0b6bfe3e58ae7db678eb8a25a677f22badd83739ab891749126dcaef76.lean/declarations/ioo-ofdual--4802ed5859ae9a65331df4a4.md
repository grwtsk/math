# Ioo_ofDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae1a8ffefd868ee71f35fb7c8bf904344e32aecc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 882,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc23a33e-5675-13b2-6fce-fe57be1285ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:576c405a-a568-be5d-cdae-4cd0d55091ab",
  "kind": "theorem",
  "lexical_name": "Ioo_ofDual",
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
  "slug": "ioo-ofdual--4802ed5859ae9a65331df4a4",
  "source": {
    "blob": "ae1a8ffefd868ee71f35fb7c8bf904344e32aecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 900,
    "line": 882,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4802ed5859ae9a65331df4a4e3d307a720dd7ff771dcfa62e800ad7e6f143bb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:576c405a-a568-be5d-cdae-4cd0d55091ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–900.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem Ioo_ofDual (a b : αᵒᵈ) : Ioo (ofDual a) (ofDual b) = (Ioo b a).map ofDual.toEmbedding := by
  refine' Eq.trans _ map_refl.symm
  ext c
  rw [mem_Ioo, mem_Ioo (α := αᵒᵈ)]
  exact and_comm
#align Ioo_of_dual Ioo_ofDual

end LocallyFiniteOrder

section LocallyFiniteOrderTop

variable [LocallyFiniteOrderTop α]

/-- Note we define `Iic (toDual a)` as `Ici a` (which has type `Finset α` not `Finset αᵒᵈ`!)
instead of `(Ici a).map toDual.toEmbedding` as this means the following is defeq:
```
lemma this : (Iic (toDual (toDual a)) : _) = (Iic a : _) := rfl
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1a8ffefd868ee71f35fb7c8bf904344e32aecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
