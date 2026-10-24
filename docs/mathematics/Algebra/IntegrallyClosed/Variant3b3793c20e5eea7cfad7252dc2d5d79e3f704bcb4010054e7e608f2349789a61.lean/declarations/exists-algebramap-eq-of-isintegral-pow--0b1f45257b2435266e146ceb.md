# exists_algebraMap_eq_of_isIntegral_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7c11ca5-76b0-ea80-3774-251a1886c82c",
  "kind": "theorem",
  "lexical_name": "exists_algebraMap_eq_of_isIntegral_pow",
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
  "slug": "exists-algebramap-eq-of-isintegral-pow--0b1f45257b2435266e146ceb",
  "source": {
    "blob": "a3b2c3fe97eec48df615cc5229fbc9200ab40b45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 147,
    "path": "GRWTSK/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b1f45257b2435266e146ceb47a86666149b1f958b5b113d34e3bbd16983cb19",
  "verification": {
    "reference": "docs/verification/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7c11ca5-76b0-ea80-3774-251a1886c82c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_algebraMap_eq_of_isIntegral_pow [IsIntegrallyClosedIn R A]
    {x : A} {n : ℕ} (hn : 0 < n)
    (hx : IsIntegral R <| x ^ n) : ∃ y : R, algebraMap R A y = x :=
  isIntegral_iff.mp <| hx.of_pow hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IntegrallyClosed/Variant3b3793c20e5eea7cfad7252dc2d5d79e3f704bcb4010054e7e608f2349789a61.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b2c3fe97eec48df615cc5229fbc9200ab40b45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
