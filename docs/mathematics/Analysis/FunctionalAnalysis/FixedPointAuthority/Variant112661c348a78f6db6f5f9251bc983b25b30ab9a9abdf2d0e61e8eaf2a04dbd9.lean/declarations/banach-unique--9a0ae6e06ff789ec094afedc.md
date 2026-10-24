# banach_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23a5552f-e83b-fea7-396d-180efdebb2d0",
  "kind": "theorem",
  "lexical_name": "banach_unique",
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
  "slug": "banach-unique--9a0ae6e06ff789ec094afedc",
  "source": {
    "blob": "23b9bc53368338245d157a1034b08ad99cbd4946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a0ae6e06ff789ec094afedc235ad98083d9e7e035aeb48b5d70d94d9f8c5d6a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23a5552f-e83b-fea7-396d-180efdebb2d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem banach_unique (hf : ContractingWith K f) {x y : α}
    (hx : IsFixedPt f x) (hy : IsFixedPt f y) : x = y :=
  hf.fixedPoint_unique' hx hy

end BanachUniqueness

section BanachExistence

variable {α : Type u} [MetricSpace α] [CompleteSpace α] [Nonempty α]
variable {K : NNReal} {f : α → α}

/-- The canonical point selected by Mathlib's Banach fixed-point construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variant112661c348a78f6db6f5f9251bc983b25b30ab9a9abdf2d0e61e8eaf2a04dbd9.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b9bc53368338245d157a1034b08ad99cbd4946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
