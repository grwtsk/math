# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33b4400b43ebd3ba6f99a966c1eea5e55c6cf9486ed17212d4358e94b3c32550",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--61d83f3a5bca6be60868df68",
  "source": {
    "blob": "9618025b8281bb3eb3fca9e41aa8b7c208793801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 634,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61d83f3a5bca6be60868df6849180a98c0a9c2405bbf0a7949f0ac6ba5bfc0e1",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33b4400b43ebd3ba6f99a966c1eea5e55c6cf9486ed17212d4358e94b3c32550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X : ι → Type*} [∀ i, TopologicalSpace (X i)] [∀ i, MeasureSpace (X i)]
    [∀ i, IsOpenPosMeasure (volume : Measure (X i))] [∀ i, SigmaFinite (volume : Measure (X i))] :
    IsOpenPosMeasure (volume : Measure (∀ i, X i)) :=
  pi.isOpenPosMeasure _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9618025b8281bb3eb3fca9e41aa8b7c208793801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
