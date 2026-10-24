# finite_finsupp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:473f9534-0d67-b693-4953-c69db96333ec",
  "kind": "lemma",
  "lexical_name": "finite_finsupp_iff",
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
  "slug": "finite-finsupp-iff--6ba58081769cb9105af54ddf",
  "source": {
    "blob": "60267231ce4a7751d527f7a33eeea97a49e296bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 551,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba58081769cb9105af54ddf49d3b7df6e348ae916081d78962148e8a7ab2c5c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:473f9534-0d67-b693-4953-c69db96333ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma finite_finsupp_iff :
    Module.Finite R (ι →₀ M) ↔ IsEmpty ι ∨ Subsingleton M ∨ Module.Finite R M ∧ Finite ι where
  mp := by
    simp only [or_iff_not_imp_left, not_subsingleton_iff_nontrivial, not_isEmpty_iff]
    rintro h ⟨i⟩ _
    obtain ⟨s, hs⟩ := id h
    exact ⟨.of_surjective (Finsupp.lapply (R := R) (M := M) i) (Finsupp.apply_surjective i),
       finite_of_span_finite_eq_top_finsupp s.finite_toSet hs⟩
  mpr
  | .inl _ => inferInstance
  | .inr <| .inl h => inferInstance
  | .inr <| .inr h => by cases h; infer_instance

@[simp high]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variantf1a914ade5d09e5e036d09dfdc0344378d8552d9d66a748a15abbb3d341651d6.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60267231ce4a7751d527f7a33eeea97a49e296bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
