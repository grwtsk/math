# algHom_mk_adjoin_splits'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa4337d-3f46-65ca-b146-5195728c019d",
  "kind": "theorem",
  "lexical_name": "algHom_mk_adjoin_splits'",
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
  "slug": "alghom-mk-adjoin-splits--601b0bc66057bf5c6af54bfb",
  "source": {
    "blob": "c3706b8a02530204e89d7161d83deebb527a9cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1188,
    "line": 1175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:601b0bc66057bf5c6af54bfbe1234623b5c884469c1c187100fe61539295285a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa4337d-3f46-65ca-b146-5195728c019d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1175–1188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algHom_mk_adjoin_splits' (hS : adjoin F S = ⊤)
    (hK : ∀ x ∈ S, IsIntegral F (x : E) ∧ (minpoly F x).Splits (algebraMap F K)) :
    Nonempty (E →ₐ[F] K) := by
  cases' algHom_mk_adjoin_splits hK with ϕ
  rw [hS] at ϕ
  exact ⟨ϕ.comp topEquiv.symm.toAlgHom⟩
#align intermediate_field.alg_hom_mk_adjoin_splits' IntermediateField.algHom_mk_adjoin_splits'

end AlgHomMkAdjoinSplits

section Supremum

variable {K L : Type*} [Field K] [Field L] [Algebra K L] (E1 E2 : IntermediateField K L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean#L1175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3706b8a02530204e89d7161d83deebb527a9cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
