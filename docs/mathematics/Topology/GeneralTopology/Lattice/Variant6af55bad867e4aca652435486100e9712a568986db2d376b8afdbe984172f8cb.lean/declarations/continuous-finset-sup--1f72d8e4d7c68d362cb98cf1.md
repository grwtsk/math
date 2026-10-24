# Continuous.finset_sup'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:554303ec-ae88-c44f-1526-76acbe96c853",
  "kind": "lemma",
  "lexical_name": "Continuous.finset_sup'",
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
  "slug": "continuous-finset-sup--1f72d8e4d7c68d362cb98cf1",
  "source": {
    "blob": "cef99923ac853304dfd0437dacf766ceeabfa2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 296,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f72d8e4d7c68d362cb98cf1815a9e6fa96f6550c5406ab25de1d48cbf25b195",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:554303ec-ae88-c44f-1526-76acbe96c853`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Continuous.finset_sup' (hne : s.Nonempty) (hs : ∀ i ∈ s, Continuous (f i)) :
    Continuous (s.sup' hne f) :=
  continuous_iff_continuousAt.2 fun _ ↦ ContinuousAt.finset_sup' _ fun i hi ↦ (hs i hi).continuousAt

end FinsetSup'

section FinsetSup

variable {ι : Type*} [SemilatticeSup L] [OrderBot L] [ContinuousSup L] {s : Finset ι}
  {f : ι → X → L} {t : Set X} {x : X}

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef99923ac853304dfd0437dacf766ceeabfa2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
