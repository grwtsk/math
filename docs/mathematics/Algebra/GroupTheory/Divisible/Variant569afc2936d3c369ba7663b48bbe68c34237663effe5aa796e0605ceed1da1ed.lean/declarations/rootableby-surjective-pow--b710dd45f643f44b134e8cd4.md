# RootableBy.surjective_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecb0bcfd386290793d7f960bef5800a8970244ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f5674f1-2c82-e2c0-c576-dc44896bc662",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5790ec4d-4c85-b6f8-1db4-735437d2699e",
  "kind": "theorem",
  "lexical_name": "RootableBy.surjective_pow",
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
  "slug": "rootableby-surjective-pow--b710dd45f643f44b134e8cd4",
  "source": {
    "blob": "ecb0bcfd386290793d7f960bef5800a8970244ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 265,
    "path": "GRWTSK/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b710dd45f643f44b134e8cd4b26fe8fae6b8a2611019c01f1d6348746577df91",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5790ec4d-4c85-b6f8-1db4-735437d2699e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RootableBy.surjective_pow (A α : Type*) [Monoid A] [Pow A α] [Zero α] [RootableBy A α]
    {n : α} (hn : n ≠ 0) : Function.Surjective fun a : A => a ^ n := fun a =>
  ⟨RootableBy.root a n, RootableBy.root_cancel a hn⟩
#align rootable_by.surjective_pow RootableBy.surjective_pow
#align divisible_by.surjective_smul DivisibleBy.surjective_smul

end Hom

section Quotient

variable (α : Type*) {A : Type*} [CommGroup A] (B : Subgroup A)

/-- Any quotient group of a rootable group is rootable. -/
@[to_additive "Any quotient group of a divisible group is divisible"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb0bcfd386290793d7f960bef5800a8970244ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
