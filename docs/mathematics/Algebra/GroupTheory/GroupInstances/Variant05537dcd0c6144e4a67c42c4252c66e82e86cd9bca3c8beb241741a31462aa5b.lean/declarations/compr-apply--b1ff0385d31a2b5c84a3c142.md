# compr₂_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bebdf05c-ec4f-14b2-3c8d-8e6844a0f39e",
  "kind": "theorem",
  "lexical_name": "compr₂_apply",
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
  "slug": "compr-apply--b1ff0385d31a2b5c84a3c142",
  "source": {
    "blob": "8d2ce610938f028ee3888da55c4e944a1fd480ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 282,
    "path": "GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1ff0385d31a2b5c84a3c142f0ee7ee7f56b7cc45c12ec9e6ec8845c7c644bc0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebdf05c-ec4f-14b2-3c8d-8e6844a0f39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compr₂_apply [MulOneClass M] [MulOneClass N] [CommMonoid P] [CommMonoid Q] (f : M →* N →* P)
    (g : P →* Q) (m : M) (n : N) : (compr₂ f g) m n = g (f m n) :=
  rfl
#align monoid_hom.compr₂_apply MonoidHom.compr₂_apply
#align add_monoid_hom.compr₂_apply AddMonoidHom.compr₂_apply

end MonoidHom

/-!
### Miscellaneous definitions

Due to the fact this file imports `Algebra.GroupPower.Basic`, it is not possible to import it in
some of the lower-level files like `Algebra.Ring.Basic`. The following lemmas should be rehomed
if the import structure permits them to be.
-/


section Semiring

variable {R S : Type*} [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S]

/-- Multiplication of an element of a (semi)ring is an `AddMonoidHom` in both arguments.

This is a more-strongly bundled version of `AddMonoidHom.mulLeft` and `AddMonoidHom.mulRight`.

Stronger versions of this exists for algebras as `LinearMap.mul`, `NonUnitalAlgHom.mul`
and `Algebra.lmul`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2ce610938f028ee3888da55c4e944a1fd480ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
