# MonoidHom.ext_mnat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01f062b7b4e78d35cf033c09f64eeb0fe3988050",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:178f9461-fd47-aa97-6998-c6bcc840127a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6b6eda2-f39a-71dc-5c6f-3d89b5ed2762",
  "kind": "lemma",
  "lexical_name": "MonoidHom.ext_mnat",
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
  "slug": "monoidhom-ext-mnat--db3a73c49c9ce126befd387a",
  "source": {
    "blob": "01f062b7b4e78d35cf033c09f64eeb0fe3988050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db3a73c49c9ce126befd387a338a0066bd36048fed38e4a493678e6c834a9c6a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6b6eda2-f39a-71dc-5c6f-3d89b5ed2762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MonoidHom.ext_mnat ⦃f g : Multiplicative ℕ →* M⦄
    (h : f (Multiplicative.ofAdd 1) = g (Multiplicative.ofAdd 1)) : f = g :=
  MonoidHom.ext fun n ↦ by rw [f.apply_mnat, g.apply_mnat, h]

end Monoid

section AddCommMonoid
variable [AddCommMonoid M]

variable (M) in
/-- If `M` is commutative, `multiplesHom` is an additive equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantb982200a3802a64a6d06d416290c70d6fdc493e26dfa6e7667f0a7c5256f990b.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01f062b7b4e78d35cf033c09f64eeb0fe3988050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
