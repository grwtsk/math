# IsIntegralClosure.isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee22177262b392aac5f15f3c74c2fa0fe76d6cc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62993442-5f3a-bfb3-f138-7d5dc38bd31d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d832f271-463e-e0d0-10d8-b49483be24b3",
  "kind": "theorem",
  "lexical_name": "IsIntegralClosure.isNoetherianRing",
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
  "slug": "isintegralclosure-isnoetherianring--6b68cada20997a7df51c8918",
  "source": {
    "blob": "ee22177262b392aac5f15f3c74c2fa0fe76d6cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 207,
    "path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b68cada20997a7df51c8918172c1f7cd7e412a916ca97fab631c40eab8e621f",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d832f271-463e-e0d0-10d8-b49483be24b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegralClosure.isNoetherianRing [IsIntegrallyClosed A] [IsNoetherianRing A] :
    IsNoetherianRing C :=
  isNoetherianRing_iff.mpr <| isNoetherian_of_tower A (IsIntegralClosure.isNoetherian A K L C)
#align is_integral_closure.is_noetherian_ring IsIntegralClosure.isNoetherianRing

/- If `L` is a finite separable extension of `K = Frac(A)`, where `A` is a principal ring
and `L` has no zero smul divisors by `A`, the integral closure `C` of `A` in `L` is
a free `A`-module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IntegralClosure/Variant703298c6845a8f3a6d9f5db526fd14f2b15d2f94228e6e7a21f43b14894eb094.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee22177262b392aac5f15f3c74c2fa0fe76d6cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
