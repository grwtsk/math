# ScheduleKernelFamily.iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3f4078be66aefdd5949d5d14802a686ba71c3289713a15045c310ed0d7e9849",
  "kind": "def",
  "lexical_name": "ScheduleKernelFamily.iterate",
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
  "slug": "schedulekernelfamily-iterate--bff7cc2e41536d27dd2d78c4",
  "source": {
    "blob": "4fb9beb924e43ef641dcf736da38293cb3050d88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bff7cc2e41536d27dd2d78c42d6803d690b81aca2d1ae56d928dceccf15f1876",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3f4078be66aefdd5949d5d14802a686ba71c3289713a15045c310ed0d7e9849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ScheduleKernelFamily.iterate
    {Schedule X : Type}
    [Fintype X]
    {metric : LawMetric X}
    {admissible : X → Prop}
    {margin : UniformContractionMargin}
    (family :
      ScheduleKernelFamily
        Schedule X metric admissible margin)
    (scheduleSequence : Nat → Schedule)
    (initial : FiniteLaw X) :
    Nat → FiniteLaw X
  | 0 => initial
  | step + 1 =>
      (family.kernel (scheduleSequence step)).push
        (family.iterate scheduleSequence initial step)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variantf23eb5bbf33c2be2ea15739399d5c104b78245f57678207c998abe8d28aa6e86.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb9beb924e43ef641dcf736da38293cb3050d88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
