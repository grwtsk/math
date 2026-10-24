# adjoin_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f6bb63a9900a3bd73a9505f959ac469b339aafc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13b22372-5650-e1b9-b310-2c723966bbab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a800a580-b32c-449d-3e1e-1b744d333210",
  "kind": "theorem",
  "lexical_name": "adjoin_top",
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
  "slug": "adjoin-top--4451b475cf56a5fd518f1b89",
  "source": {
    "blob": "4f6bb63a9900a3bd73a9505f959ac469b339aafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 104,
    "path": "GRWTSK/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4451b475cf56a5fd518f1b894c4700bf1efbd4a4dda789551700c862d65eea5e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a800a580-b32c-449d-3e1e-1b744d333210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_top {A} [Semiring A] [Algebra S A] (t : Set A) :
    adjoin (⊤ : Subalgebra R S) t = (adjoin S t).restrictScalars (⊤ : Subalgebra R S) :=
  let equivTop : Subalgebra (⊤ : Subalgebra R S) A ≃o Subalgebra S A :=
    { toFun := fun s => { s with algebraMap_mem' := fun r => s.algebraMap_mem ⟨r, trivial⟩ }
      invFun := fun s => s.restrictScalars _
      left_inv := fun _ => SetLike.coe_injective rfl
      right_inv := fun _ => SetLike.coe_injective rfl
      map_rel_iff' := @fun _ _ => Iff.rfl }
  le_antisymm
    (adjoin_le <| show t ⊆ adjoin S t from subset_adjoin)
    (equivTop.symm_apply_le.mpr <|
      adjoin_le <| show t ⊆ adjoin (⊤ : Subalgebra R S) t from subset_adjoin)

end Semiring

section CommSemiring

variable [CommSemiring R] [CommSemiring A]
variable [Algebra R A] {s t : Set A}
variable (R s t)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7fb7691d5b1c05a6355cba99953d4ef9ff8907d6aa8b739d4e835f3a5246fea1.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6bb63a9900a3bd73a9505f959ac469b339aafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
