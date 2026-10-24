# Prod.pseudoMetricSpaceMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:452cbc619782b81a6767c95d93af06a088e7f727587419be012d5977d54e9453",
  "kind": "instance",
  "lexical_name": "Prod.pseudoMetricSpaceMax",
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
  "slug": "prod-pseudometricspacemax--d0dc0bb62e75f6e183f63c54",
  "source": {
    "blob": "70664b1c0bc6b68440f54304f1fe5f2cc01f2906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 146,
    "path": "GRWTSK/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0dc0bb62e75f6e183f63c5432404233baa3769209e4717e943d91c7ed122bca",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:452cbc619782b81a6767c95d93af06a088e7f727587419be012d5977d54e9453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.pseudoMetricSpaceMax : PseudoMetricSpace (α × β) :=
  let i := PseudoEMetricSpace.toPseudoMetricSpaceOfDist
    (fun x y : α × β => dist x.1 y.1 ⊔ dist x.2 y.2)
    (fun _ _ => (max_lt (edist_lt_top _ _) (edist_lt_top _ _)).ne) fun x y => by
      simp only [dist_edist, ← ENNReal.toReal_max (edist_ne_top _ _) (edist_ne_top _ _),
        Prod.edist_eq]
  i.replaceBornology fun s => by
    simp only [← isBounded_image_fst_and_snd, isBounded_iff_eventually, forall_mem_image, ←
      eventually_and, ← forall_and, ← max_le_iff]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70664b1c0bc6b68440f54304f1fe5f2cc01f2906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
