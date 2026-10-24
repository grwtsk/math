# abs_abs_div_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf25bd27a15e1d1388b458266fe1267c0b1e7f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 638,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c2c1b27-e872-2bff-0ce0-f6e26341ab88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cb51e0e-4e51-4ee2-5313-6a9e5101883c",
  "kind": "theorem",
  "lexical_name": "abs_abs_div_abs_le",
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
  "slug": "abs-abs-div-abs-le--3e3408a71d6d3b015b0e0ff7",
  "source": {
    "blob": "fbf25bd27a15e1d1388b458266fe1267c0b1e7f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 638,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e3408a71d6d3b015b0e0ff7006160aa723a5a14915d8b1a243c230ea0810d76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb51e0e-4e51-4ee2-5313-6a9e5101883c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_abs_div_abs_le [CovariantClass α α (· * ·) (· ≤ ·)] (a b : α) :
|(|a| / |b|)| ≤ |a / b| := by
  rw [abs_eq_sup_inv, sup_le_iff]
  constructor
  · apply div_le_iff_le_mul.2
    convert mabs_mul_le (a / b) b
    rw [div_mul_cancel']
  · rw [div_eq_mul_inv, mul_inv_rev, inv_inv, mul_inv_le_iff_le_mul, abs_div_comm]
    convert mabs_mul_le (b / a) a
    · rw [div_mul_cancel']
#align lattice_ordered_comm_group.abs_abs_div_abs_le LatticeOrderedCommGroup.abs_abs_div_abs_le
#align lattice_ordered_comm_group.abs_abs_sub_abs_le LatticeOrderedCommGroup.abs_abs_sub_abs_le

end LatticeOrderedCommGroup

section invertible

variable (α)
variable [Semiring α] [Invertible (2 : α)] [Lattice β] [AddCommGroup β] [Module α β]
  [CovariantClass β β (· + ·) (· ≤ ·)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf25bd27a15e1d1388b458266fe1267c0b1e7f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
