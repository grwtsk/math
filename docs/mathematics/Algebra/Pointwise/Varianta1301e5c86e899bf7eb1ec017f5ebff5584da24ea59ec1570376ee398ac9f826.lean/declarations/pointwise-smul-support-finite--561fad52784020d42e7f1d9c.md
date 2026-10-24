# pointwise_smul_support_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f0a5c3c-840a-014f-a2d5-d42b629594cc",
  "kind": "lemma",
  "lexical_name": "pointwise_smul_support_finite",
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
  "slug": "pointwise-smul-support-finite--561fad52784020d42e7f1d9c",
  "source": {
    "blob": "c6c643cf3f1e449e977595af48fd20716af866b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 107,
    "path": "GRWTSK/Algebra/Pointwise/Varianta1301e5c86e899bf7eb1ec017f5ebff5584da24ea59ec1570376ee398ac9f826.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561fad52784020d42e7f1d9c7474cfbcb4e283cb2bbe810de59d8fafd598fc2f",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Varianta1301e5c86e899bf7eb1ec017f5ebff5584da24ea59ec1570376ee398ac9f826.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f0a5c3c-840a-014f-a2d5-d42b629594cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pointwise_smul_support_finite [Zero γ] [SMulZeroClass β γ] (f : α → β)
    (g : α →₀ γ) : (fun x ↦ f x • g x).support.Finite :=
  Set.Finite.subset g.hasFiniteSupport (by simp; grind [smul_zero])

-- TODO(Paul-Lez): add a `DFinsupp` version of this.
-- Note: this creates an instance diamond with `SMul (α → β) (α →₀ (α → β))`, so this is an
-- def rather than an instance.
/-- Pointwise scalar multiplication given by `(f • g) x = f x • g x`. -/
-- see Note [reducible non-instances]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Varianta1301e5c86e899bf7eb1ec017f5ebff5584da24ea59ec1570376ee398ac9f826.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Varianta1301e5c86e899bf7eb1ec017f5ebff5584da24ea59ec1570376ee398ac9f826.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c643cf3f1e449e977595af48fd20716af866b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
