# _root_.GRWTSK.Algebra.LinearAlgebra.Unitization.Variant863f5773ac4f903e1bf7309282c707dd87292d3d56cdc6948885f1fb540298c7.NonUnitalAlgHom.toAlgHom_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e608beb7-26a2-b4bd-7703-6cd214d76540",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Unitization.Variant863f5773ac4f903e1bf7309282c707dd87292d3d56cdc6948885f1fb540298c7.NonUnitalAlgHom.toAlgHom_zero",
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
  "slug": "root-grwtsk-algebra-linearalgebra-unitization-variant863f5773ac4f903e1bf--4c72f31e49769d10cf43c2d4",
  "source": {
    "blob": "016ae7132182e92fb3ccd4618358a2e9bef2e9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 751,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c72f31e49769d10cf43c2d41246d7f769a93d5bcae00f187c5a079866ef6748",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e608beb7-26a2-b4bd-7703-6cd214d76540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.Unitization.Variant863f5773ac4f903e1bf7309282c707dd87292d3d56cdc6948885f1fb540298c7.NonUnitalAlgHom.toAlgHom_zero :
    ⇑(0 : A →ₙₐ[R] R).toAlgHom = Unitization.fst := by
  ext
  simp

end AlgHom

section StarAlgHom

variable {R A C : Type*} [CommSemiring R] [StarRing R] [NonUnitalSemiring A] [StarRing A]
variable [Module R A] [SMulCommClass R A A] [IsScalarTower R A A] [StarModule R A]
variable [Semiring C] [Algebra R C] [StarRing C] [StarModule R C]

/-- See note [partially-applied ext lemmas] -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant65b7675cfa819b1841621655dd140a83f7e39a44f41df5a396d20b3a020d0f64.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `016ae7132182e92fb3ccd4618358a2e9bef2e9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
