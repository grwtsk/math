# eq_liftRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f32ec2-84fe-cd2d-96e7-4a0105b9e697",
  "kind": "theorem",
  "lexical_name": "eq_liftRingHom",
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
  "slug": "eq-liftringhom--41f38fe1de4be15d7efa657b",
  "source": {
    "blob": "8856591f7ef54d0b140045e8034d923af75aa2eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 192,
    "path": "GRWTSK/Algebra/RingHom/Variant021dc3ecb4a056cb656f691b59cee8b4deda9aef78e6faa92c4320048c79b8e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41f38fe1de4be15d7efa657b75b074a3b0e0442d419d4f226173c06f857b78bb",
  "verification": {
    "reference": "docs/verification/Algebra/RingHom/Variant021dc3ecb4a056cb656f691b59cee8b4deda9aef78e6faa92c4320048c79b8e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f32ec2-84fe-cd2d-96e7-4a0105b9e697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_liftRingHom {F : R →+* S}
    (hF : ∀ n, (Ideal.Quotient.mk _).comp F = f n) : F = liftRingHom I ha f hf := by
  apply DFunLike.coe_injective
  apply IsHausdorff.StrictMono.funext' I ha
  intro n m
  simp [← hF n]

end StrictMono

end IsAdicComplete
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingHom/Variant021dc3ecb4a056cb656f691b59cee8b4deda9aef78e6faa92c4320048c79b8e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingHom/Variant021dc3ecb4a056cb656f691b59cee8b4deda9aef78e6faa92c4320048c79b8e8.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8856591f7ef54d0b140045e8034d923af75aa2eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
