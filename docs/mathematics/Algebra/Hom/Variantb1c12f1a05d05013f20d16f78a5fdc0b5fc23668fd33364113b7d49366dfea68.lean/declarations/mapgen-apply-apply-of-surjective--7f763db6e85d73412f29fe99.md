# mapGen_apply_apply_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64f794e0-82c8-1a39-7568-cf0c73af2b7d",
  "kind": "theorem",
  "lexical_name": "mapGen_apply_apply_of_surjective",
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
  "slug": "mapgen-apply-apply-of-surjective--7f763db6e85d73412f29fe99",
  "source": {
    "blob": "b1013e724ba6516769caa820a77dd75ffc2a276d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f763db6e85d73412f29fe9972ddf4f84ec73d49afed8681f9a8c3c9d84825e8",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64f794e0-82c8-1a39-7568-cf0c73af2b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapGen_apply_apply_of_surjective
    {c : RingCon M} (f : M →+* N) (h : ker f ≤ c) (hf : Surjective f) {x y : M} :
    c.mapGen f (f x) (f y) ↔ c x y := by
  rw [mapGen_eq_map_of_surjective f h hf, Relation.map_apply]
  refine ⟨fun ⟨a, b, h₁, h₂, h₃⟩ ↦ ?_, by grind⟩
  exact c.trans (h h₂.symm) <| c.trans h₁ <| h h₃

/-- Given a ring congruence relation `c` on a semiring `M`, the order-preserving
bijection between the set of ring congruence relations containing `c` and the
ring congruence relations on the quotient of `M` by `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1013e724ba6516769caa820a77dd75ffc2a276d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
