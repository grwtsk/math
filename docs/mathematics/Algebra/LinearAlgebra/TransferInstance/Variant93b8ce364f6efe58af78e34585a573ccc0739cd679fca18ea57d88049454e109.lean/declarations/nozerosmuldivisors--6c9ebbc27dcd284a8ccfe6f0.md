# noZeroSMulDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5ea58515e39ba091b6b4b9224a81e3eb50bbd8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4d7885b-c71b-db9a-1921-668735289edc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddd714a2-0bae-18c7-2bff-0d71788bb7ab",
  "kind": "lemma",
  "lexical_name": "noZeroSMulDivisors",
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
  "slug": "nozerosmuldivisors--6c9ebbc27dcd284a8ccfe6f0",
  "source": {
    "blob": "b5ea58515e39ba091b6b4b9224a81e3eb50bbd8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c9ebbc27dcd284a8ccfe6f05325b3ac6f1bcd554e8bb7ffa9c862a9f01327af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd714a2-0bae-18c7-2bff-0d71788bb7ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma noZeroSMulDivisors [Zero α] [Zero β] [SMul R β] [NoZeroSMulDivisors R β]
    (e : α ≃ β) (map_zero : e 0 = 0) :
    letI := e.smul R
    NoZeroSMulDivisors R α := by
  let := e.smul R
  refine ⟨fun {r} m ↦ ?_⟩
  simp_rw [e.eq_symm_apply.2 map_zero, eq_symm_apply, smul_def, apply_symm_apply]
  exact eq_zero_or_eq_zero_of_smul_eq_zero

end Equiv

variable [AddCommMonoid α] [AddCommMonoid β] [Module R β]

namespace AddEquiv

variable (e : α ≃+ β)

variable (R) in
/-- Transfer `Module` across an `Equiv` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5ea58515e39ba091b6b4b9224a81e3eb50bbd8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
