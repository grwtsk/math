# IsSubordinate.support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e5ea086-16fb-465a-5ee6-f58dfa0a6e1d",
  "kind": "theorem",
  "lexical_name": "IsSubordinate.support_subset",
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
  "slug": "issubordinate-support-subset--53ca85afb96159273b95bf99",
  "source": {
    "blob": "4fbe80846490fa0ce645fa8807e372f696f7cdaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 337,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53ca85afb96159273b95bf99f1c81214849be4206a329b4b2ba841bf93e8dd71",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e5ea086-16fb-465a-5ee6-f58dfa0a6e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubordinate.support_subset {fs : SmoothBumpCovering ι I M s} {U : M → Set M}
    (h : fs.IsSubordinate U) (i : ι) : support (fs i) ⊆ U (fs.c i) :=
  Subset.trans subset_closure (h i)
#align smooth_bump_covering.is_subordinate.support_subset SmoothBumpCovering.IsSubordinate.support_subset

variable (I)

/-- Let `M` be a smooth manifold with corners modelled on a finite dimensional real vector space.
Suppose also that `M` is a Hausdorff `σ`-compact topological space. Let `s` be a closed set
in `M` and `U : M → Set M` be a collection of sets such that `U x ∈ 𝓝 x` for every `x ∈ s`.
Then there exists a smooth bump covering of `s` that is subordinate to `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fbe80846490fa0ce645fa8807e372f696f7cdaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
