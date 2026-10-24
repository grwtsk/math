# mdifferentiableAt_of_coeff_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d4443c6-80f2-08ff-d356-b3b9878e8c2a",
  "kind": "lemma",
  "lexical_name": "mdifferentiableAt_of_coeff_aux",
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
  "slug": "mdifferentiableat-of-coeff-aux--ca726fa44b297c9141a01d5a",
  "source": {
    "blob": "249a23c9c37f4b144266620bcd7ea9f8eb27b350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 322,
    "path": "GRWTSK/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca726fa44b297c9141a01d5a88dc322bcdad8bf951d3f238c8e88a6f8446aca4",
  "verification": {
    "reference": "docs/verification/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d4443c6-80f2-08ff-d356-b3b9878e8c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mdifferentiableAt_of_coeff_aux [FiniteDimensional 𝕜 F]
    (h : ∀ i, MDiffAt ((LinearMap.piApply (hs.coeff i)) t) x)
    (hu : IsOpen u) (hx : x ∈ u) : MDiffAt (T% t) x :=
  hs.mdifferentiableAt_of_coeff h (hu.mem_nhds hx)

end

end IsLocalFrameOn

end IsLocalFrame

namespace Bundle.Trivialization

variable [VectorBundle 𝕜 F V] [ContMDiffVectorBundle n F V I] {ι : Type*} {x : M}
  (e : Trivialization F (TotalSpace.proj : TotalSpace F V → M)) [MemTrivializationAtlas e]
  (b : Basis ι 𝕜 F)

/-- Given a compatible local trivialisation `e` of `V` and a basis `b` of the model fiber `F`,
return the corresponding basis of `V x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalFrame/Variantcf689053f7d32f5d52813ac2ddcbd7af23d4df99609e2e8d6ccbfccd0211eb0f.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249a23c9c37f4b144266620bcd7ea9f8eb27b350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
