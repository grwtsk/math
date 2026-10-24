# LatticeAdditiveModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc7047083ffc606b092e48fdf99abdcaaa05c4320c8e19a4bb3baa95a8d6c390",
  "kind": "structure",
  "lexical_name": "LatticeAdditiveModel",
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
  "slug": "latticeadditivemodel--dac2f8930008b09a6800f6a5",
  "source": {
    "blob": "1fb5477fd631b2ce238090f1e7a7fb38cdf86109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variantb23cfe85f25e9887f51b0f32583de3862e116507019434c55d9f07eae339ac97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dac2f8930008b09a6800f6a5289c23e32afd79c5d578d4e468fe60c8200b7170",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variantb23cfe85f25e9887f51b0f32583de3862e116507019434c55d9f07eae339ac97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc7047083ffc606b092e48fdf99abdcaaa05c4320c8e19a4bb3baa95a8d6c390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LatticeAdditiveModel (L : Type u) where
  zero : L
  add : L → L → L
  neg : L → L
  add_assoc : ∀ a b c : L, add (add a b) c = add a (add b c)
  zero_add : ∀ a : L, add zero a = a
  add_zero : ∀ a : L, add a zero = a
  add_left_neg : ∀ a : L, add (neg a) a = zero
  add_comm : ∀ a b : L, add a b = add b a

/-- A finite quotient of an additive lattice, such as `Λ / pΛ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variantb23cfe85f25e9887f51b0f32583de3862e116507019434c55d9f07eae339ac97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/AdditiveThetaZetaCarrier/Variantb23cfe85f25e9887f51b0f32583de3862e116507019434c55d9f07eae339ac97.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb5477fd631b2ce238090f1e7a7fb38cdf86109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
