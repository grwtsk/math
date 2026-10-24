# commMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f151300be321bad315aba95cfc7567030af40251dbf788d33e395e278b7a07bc",
  "kind": "instance",
  "lexical_name": "commMonoid",
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
  "slug": "commmonoid--a1fcb3a51ef9888ef2b7dc1b",
  "source": {
    "blob": "85787176970648026ac23eb1e2206b448897bd7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 405,
    "path": "GRWTSK/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1fcb3a51ef9888ef2b7dc1b1bcb46e438252a4a228b6bbd3989046350e1ae91",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f151300be321bad315aba95cfc7567030af40251dbf788d33e395e278b7a07bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commMonoid : CommMonoid (A →*[n] β) where
  mul_assoc a b c := by
    ext
    apply mul_assoc
  one_mul a := by
    ext
    apply one_mul
  mul_one a := by
    ext
    apply mul_one
  mul_comm a b := by
    ext
    apply mul_comm
#align freiman_hom.comm_monoid FreimanHom.commMonoid
#align add_freiman_hom.add_comm_monoid AddFreimanHom.addCommMonoid

/-- If `β` is a commutative group, then `A →*[n] β` is a commutative group too. -/
@[to_additive
      "If `β` is an additive commutative group, then `A →*[n] β` is an additive commutative
      group too."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Freiman/Variantce26be2a90e3fa04e54b652af2fbf516f2cfd52515f6bbd54dab991e18adc4fb.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85787176970648026ac23eb1e2206b448897bd7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
