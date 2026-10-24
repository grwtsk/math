# toAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:698c7186d27c6f3a3a867925d2d9b5eb403d03ee38e6501661132e7a57b13abf",
  "kind": "def",
  "lexical_name": "toAlgebra",
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
  "slug": "toalgebra--f2226a0110990a3e87d0cdae",
  "source": {
    "blob": "8fc80468d7f2928a20f8f89bb005bc958d38134d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 104,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2226a0110990a3e87d0cdae51f90b41f73e680e0d3165fe694b021c78a952c8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:698c7186d27c6f3a3a867925d2d9b5eb403d03ee38e6501661132e7a57b13abf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAlgebra (f : ∀ i, A i →ₗ[R] B) (hone : f _ GradedMonoid.GOne.one = 1)
    (hmul : ∀ {i j} (ai : A i) (aj : A j), f _ (GradedMonoid.GMul.mul ai aj) = f _ ai * f _ aj)
    (hcommutes : ∀ r, (f 0) (GAlgebra.toFun r) = (algebraMap R B) r) : (⨁ i, A i) →ₐ[R] B :=
  { toSemiring (fun i => (f i).toAddMonoidHom) hone
      @hmul with
    toFun := toSemiring (fun i => (f i).toAddMonoidHom) hone @hmul
    commutes' := fun r => (DirectSum.toSemiring_of _ hone hmul _ _).trans (hcommutes r) }
#align direct_sum.to_algebra DirectSum.toAlgebra

/-- Two `AlgHom`s out of a direct sum are equal if they agree on the generators.

See note [partially-applied ext lemmas]. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant9ab6e60a7fefc0611f00107db37de5f2cdbab3e2f80de9564f5a9b046288916a.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fc80468d7f2928a20f8f89bb005bc958d38134d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
