# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a3cc77c8657031d10e954abbd420b6a22c12064205cd5b73a201ed3fc12a6fe",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--aa2ba22dc32f8cdee61e3653",
  "source": {
    "blob": "d8a23f0e182d2f8ee5127758ea351c75308fc164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 628,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa2ba22dc32f8cdee61e365344532b4b1f70dd55c59da6f59eff64e7050680b2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a3cc77c8657031d10e954abbd420b6a22c12064205cd5b73a201ed3fc12a6fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [DistribMulActionSemiHomClass F φ A B] :
  CoeTC F (A →ₑ+[φ] B) :=
  ⟨DistribMulActionSemiHomClass.toDistribMulActionHom⟩

/-- If `DistribMulAction` of `M` and `N` on `A` commute,
  then for each `c : M`, `(c • ·)` is an `N`-action additive homomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant1f700979c1e3e62af4d5c0096762cc59bb34f760998a0508a1fbeb4611d7c158.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8a23f0e182d2f8ee5127758ea351c75308fc164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
