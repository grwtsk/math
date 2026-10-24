# IsPerfPair.of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a96ed57-9117-d2cf-1339-5547856b5285",
  "kind": "lemma",
  "lexical_name": "IsPerfPair.of_injective",
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
  "slug": "isperfpair-of-injective--4a74ce38b6aacf06314930ea",
  "source": {
    "blob": "03af5cd3d9d27c9f473f7507dc45c78a17363838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a74ce38b6aacf06314930ea36ead4f4c13b2ef0bbea3c0c8d7e59f0ac21af10",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a96ed57-9117-d2cf-1339-5547856b5285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPerfPair.of_injective [FiniteDimensional K M] (h : Injective p) (h' : Injective p.flip) :
    p.IsPerfPair where
  bijective_left := ⟨h, by rwa [← p.flip_injective_iff₁]⟩
  bijective_right := ⟨h', by
    have : FiniteDimensional K N := FiniteDimensional.of_injective p.flip h'
    rwa [← p.flip.flip_injective_iff₁, LinearMap.flip_flip]⟩

/-- If the coefficients are a field, and one of the spaces is finite-dimensional, it is sufficient
to check only injectivity instead of bijectivity of the bilinear pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fae9d2772ea270d9f9080e3d11017dda76104a3de5bbb7d5b2ffdc472f6d6c1.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03af5cd3d9d27c9f473f7507dc45c78a17363838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
