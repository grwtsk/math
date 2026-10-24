# ofTendstoOfBoundedRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3178b7f296fad88d5ff100204b98355a3099852e23659b5b3a45626269d4a98",
  "kind": "def",
  "lexical_name": "ofTendstoOfBoundedRange",
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
  "slug": "oftendstoofboundedrange--41a986864df0bac529718891",
  "source": {
    "blob": "ecd0cd3e74a7869d8a5171d89f7cc81a4fcce7a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41a986864df0bac5297188916487fac6896fe21809be21972576cccf0ce94c24",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3178b7f296fad88d5ff100204b98355a3099852e23659b5b3a45626269d4a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofTendstoOfBoundedRange {α : Type*} {l : Filter α} [l.NeBot] (f : E' → F)
    (g : α → E' →SL[σ₁₂] F) (hf : Tendsto (fun a x => g a x) l (𝓝 f))
    (hg : IsBounded (Set.range g)) : E' →SL[σ₁₂] F :=
  ofMemClosureImageCoeBounded f hg <| mem_closure_of_tendsto hf <|
    Eventually.of_forall fun _ => mem_image_of_mem _ <| Set.mem_range_self _

/-- If a Cauchy sequence of continuous linear map converges to a continuous linear map pointwise,
then it converges to the same map in norm. This lemma is used to prove that the space of continuous
linear maps is complete provided that the codomain is a complete space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completeness/Variant1df880ce398ee03e28f0636b5b86866a87361778857de2bb7685546eb009a856.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd0cd3e74a7869d8a5171d89f7cc81a4fcce7a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
