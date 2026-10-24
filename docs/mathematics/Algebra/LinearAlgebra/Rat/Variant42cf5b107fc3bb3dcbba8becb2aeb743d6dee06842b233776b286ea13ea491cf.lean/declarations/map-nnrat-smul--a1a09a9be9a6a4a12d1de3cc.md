# map_nnrat_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a196343-6da8-f729-b5f3-6cc8b56fef10",
  "kind": "theorem",
  "lexical_name": "map_nnrat_smul",
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
  "slug": "map-nnrat-smul--a1a09a9be9a6a4a12d1de3cc",
  "source": {
    "blob": "91c4ff6d3562e32b1fa8b08cec7158859ff64fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a09a9be9a6a4a12d1de3cce5f267bad5e7a4c5c8d22a4f56449ae222281a15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a196343-6da8-f729-b5f3-6cc8b56fef10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_nnrat_smul [AddCommMonoid M] [AddCommMonoid M₂]
    [_instM : Module ℚ≥0 M] [_instM₂ : Module ℚ≥0 M₂]
    {F : Type*} [FunLike F M M₂] [AddMonoidHomClass F M M₂]
    (f : F) (c : ℚ≥0) (x : M) : f (c • x) = c • f x :=
  map_nnratCast_smul f ℚ≥0 ℚ≥0 c x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variant42cf5b107fc3bb3dcbba8becb2aeb743d6dee06842b233776b286ea13ea491cf.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c4ff6d3562e32b1fa8b08cec7158859ff64fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
