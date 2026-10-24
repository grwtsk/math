# prod_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:236f5e45-54bd-3b34-8f67-34b58877e535",
  "kind": "theorem",
  "lexical_name": "prod_filter",
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
  "slug": "prod-filter--3a792ed39c3da3c6d50eb226",
  "source": {
    "blob": "f11bde8f5333ce0ac0672c1ae913e7258bde0243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 341,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a792ed39c3da3c6d50eb226f8a17eb530e876b95e67cb5b46a703c3657097bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:236f5e45-54bd-3b34-8f67-34b58877e535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_filter (p : ι → Prop) [DecidablePred p] (f : ι → M) :
    ∏ a ∈ s with p a, f a = ∏ a ∈ s, if p a then f a else 1 :=
  calc
    ∏ a ∈ s with p a, f a = ∏ a ∈ s with p a, if p a then f a else 1 :=
      prod_congr rfl fun a h => by rw [ite_eq_left]; simpa using (mem_filter.1 h).2
    _ = ∏ a ∈ s, if p a then f a else 1 := by
      { refine prod_subset (filter_subset _ s) fun x hs h => ?_
        rw [mem_filter, not_and] at h
        exact ite_eq_right (by simpa using h hs) }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f11bde8f5333ce0ac0672c1ae913e7258bde0243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
