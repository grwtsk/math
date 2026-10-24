# toScheduleFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80a48e3bd2670d9c9bda2673e3ba2e105c2bcae83af17d41aec2b47671ab4c28",
  "kind": "def",
  "lexical_name": "toScheduleFamily",
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
  "slug": "toschedulefamily--3afc359b9292af15ee8ce739",
  "source": {
    "blob": "18fea8a39f15a791f886bdbc4abb80d8224f0ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 290,
    "path": "GRWTSK/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3afc359b9292af15ee8ce739c271b5f7cd447d70571ff8a717f9ded844c723b2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80a48e3bd2670d9c9bda2673e3ba2e105c2bcae83af17d41aec2b47671ab4c28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toScheduleFamily
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (dynamics :
      ContractiveBitfieldDynamics system carrier) :
    ScheduleKernelFamily system carrier Unit where
  defaultSchedule := ()
  kernel := fun _ => dynamics.kernel
  invariantLaw := dynamics.invariantLaw
  contraction := dynamics.contraction
  contraction_lt_one := dynamics.contraction_lt_one
  commonInvariant := fun _ =>
    dynamics.invariant
  uniformlyWassersteinContractive :=
    fun _ left right =>
      dynamics.wassersteinContractive left right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dynamics/Variantd0edb476292c1d4198f43a9c6c59f1e2a5e71a98cc4e7dadfffd495f4d647607.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18fea8a39f15a791f886bdbc4abb80d8224f0ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
