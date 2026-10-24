# distribMulAction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64efb9233d8d276c1cebb5c049fcd2bfc4156e77e35e2161105805a703b6cd1e",
  "kind": "instance",
  "lexical_name": "distribMulAction₂",
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
  "slug": "distribmulaction--8a03f0cc076586e6b4f77558",
  "source": {
    "blob": "3deed431b6ba3bf44f53472cc28dbbed86e43a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a03f0cc076586e6b4f775587df2a0105361e92b12542dadc6997dd843778fea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64efb9233d8d276c1cebb5c049fcd2bfc4156e77e35e2161105805a703b6cd1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance distribMulAction₂ [Monoid γ] [∀ i j, AddMonoid (δ i j)]
    [∀ i j, DistribMulAction γ (δ i j)] : DistribMulAction γ (Π₀ (i : ι) (j : α i), δ i j) :=
  @DFinsupp.distribMulAction ι _ (fun i => Π₀ j, δ i j) _ _ _

end SigmaCurry

variable {α : Option ι → Type v}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Variant42d85ceb4392050411c224be7eeb0a793833360c0cba94238eedeff12b6c25ca.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3deed431b6ba3bf44f53472cc28dbbed86e43a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
