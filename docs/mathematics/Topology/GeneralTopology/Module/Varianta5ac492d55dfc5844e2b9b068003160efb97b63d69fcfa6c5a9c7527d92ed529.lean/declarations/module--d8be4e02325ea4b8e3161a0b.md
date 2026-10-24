# module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd4bc35ca43745817e2884b5ce25ce8c27ea69d61bad619e4242ac02d90f7cd7",
  "kind": "instance",
  "lexical_name": "module",
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
  "slug": "module--d8be4e02325ea4b8e3161a0b",
  "source": {
    "blob": "57d3a1c3b8195dccb556c15fdf39d3ab865acdd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8be4e02325ea4b8e3161a0b77f809c19839bc86710cd0be9094c8ecbbf6d7c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd4bc35ca43745817e2884b5ce25ce8c27ea69d61bad619e4242ac02d90f7cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module [Semiring γ] [∀ i, AddCommMonoid (β i)] [∀ i, Module γ (β i)] :
    Module γ (Π₀ i, β i) :=
  { inferInstanceAs (DistribMulAction γ (Π₀ i, β i)) with
    zero_smul := fun c => ext fun i => by simp only [smul_apply, zero_smul, zero_apply]
    add_smul := fun c x y => ext fun i => by simp only [add_apply, smul_apply, add_smul] }

end Algebra

variable (γ) in
/-- Coercion from a `DFinsupp` to a pi type is a `LinearMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Varianta5ac492d55dfc5844e2b9b068003160efb97b63d69fcfa6c5a9c7527d92ed529.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d3a1c3b8195dccb556c15fdf39d3ab865acdd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
