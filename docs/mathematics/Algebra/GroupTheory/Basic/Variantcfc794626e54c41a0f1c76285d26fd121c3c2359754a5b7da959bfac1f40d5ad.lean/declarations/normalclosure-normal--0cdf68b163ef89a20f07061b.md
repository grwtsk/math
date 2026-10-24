# normalClosure_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ab877402568b66c1b363e5a8fd234a789637d5321f71d22fbc6b66b6165e00b",
  "kind": "instance",
  "lexical_name": "normalClosure_normal",
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
  "slug": "normalclosure-normal--0cdf68b163ef89a20f07061b",
  "source": {
    "blob": "a474c7cf46814df47fea56e9698a77834bf8c717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 651,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cdf68b163ef89a20f07061bf039ccd3bcef45a7bde01307f372e61fd4f7ce62",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ab877402568b66c1b363e5a8fd234a789637d5321f71d22fbc6b66b6165e00b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normalClosure_normal : (normalClosure s).Normal :=
  ⟨fun n h g => by
    refine Subgroup.closure_induction (fun x hx => ?_) ?_ (fun x y _ _ ihx ihy => ?_)
      (fun x _ ihx => ?_) h
    · exact conjugatesOfSet_subset_normalClosure (conj_mem_conjugatesOfSet hx)
    · simp
    · rw [← conj_mul]
      exact mul_mem ihx ihy
    · rw [← conj_inv]
      exact inv_mem ihx⟩

/-- The normal closure of `s` is the smallest normal subgroup containing `s`. -/
@[to_additive /-- The normal closure of `s` is the smallest normal additive subgroup containing`s`.
-/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a474c7cf46814df47fea56e9698a77834bf8c717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
