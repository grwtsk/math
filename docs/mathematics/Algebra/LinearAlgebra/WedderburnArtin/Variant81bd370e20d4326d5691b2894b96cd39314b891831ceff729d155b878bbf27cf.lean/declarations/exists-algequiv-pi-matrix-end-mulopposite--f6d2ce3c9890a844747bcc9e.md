# exists_algEquiv_pi_matrix_end_mulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80014f9616216239310b2e59bcdf6aa63e3ac771",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9467d217-d5ee-ff81-e0a6-5337e8c8b643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:304101d6-c367-79b2-36e8-7b04eec32bad",
  "kind": "theorem",
  "lexical_name": "exists_algEquiv_pi_matrix_end_mulOpposite",
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
  "slug": "exists-algequiv-pi-matrix-end-mulopposite--f6d2ce3c9890a844747bcc9e",
  "source": {
    "blob": "80014f9616216239310b2e59bcdf6aa63e3ac771",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6d2ce3c9890a844747bcc9e522b9b05b5979b9123ae4eb1617feb9641018d0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:304101d6-c367-79b2-36e8-7b04eec32bad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_algEquiv_pi_matrix_end_mulOpposite :
    ∃ (n : ℕ) (S : Fin n → Ideal R) (d : Fin n → ℕ),
      (∀ i, IsSimpleModule R (S i)) ∧ (∀ i, NeZero (d i)) ∧
      Nonempty (R ≃ₐ[R₀] Π i, Matrix (Fin (d i)) (Fin (d i)) (Module.End R (S i))ᵐᵒᵖ) :=
  have ⟨n, S, d, hS, hd, ⟨e⟩⟩ := IsSemisimpleModule.exists_end_algEquiv_pi_matrix_end R₀ R R
  ⟨n, S, d, hS, hd, ⟨.trans (.opOp R₀ R) <| .trans (.op <| .trans (.moduleEndSelf R₀) e) <|
    .trans (.piMulOpposite _ _) (.piCongrRight fun _ ↦ .symm .mopMatrix)⟩⟩

/-- The **Wedderburn–Artin Theorem**, algebra form: a semisimple algebra is isomorphic to a
product of matrix algebras over division algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80014f9616216239310b2e59bcdf6aa63e3ac771` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
