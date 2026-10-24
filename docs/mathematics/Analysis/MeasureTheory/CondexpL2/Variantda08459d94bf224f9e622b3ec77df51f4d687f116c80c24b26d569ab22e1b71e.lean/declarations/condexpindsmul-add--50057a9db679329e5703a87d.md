# condExpIndSMul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21ad0285-9a5b-7c50-baee-44a00411c0e2",
  "kind": "theorem",
  "lexical_name": "condExpIndSMul_add",
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
  "slug": "condexpindsmul-add--50057a9db679329e5703a87d",
  "source": {
    "blob": "cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 442,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50057a9db679329e5703a87d63a5543fb6da324213ef9b87969f36c5b0b3e9bf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ad0285-9a5b-7c50-baee-44a00411c0e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExpIndSMul_add (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (x y : G) :
    condExpIndSMul hm hs hμs (x + y) = condExpIndSMul hm hs hμs x + condExpIndSMul hm hs hμs y := by
  simp_rw [condExpIndSMul]; rw [toSpanSingleton_add, add_compLpL, add_apply]

@[deprecated (since := "2025-01-21")] alias condexpIndSMul_add := condExpIndSMul_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL2/Variantda08459d94bf224f9e622b3ec77df51f4d687f116c80c24b26d569ab22e1b71e.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdabb6f6a5f2f247f40ce2d7eaf3d2b0f495e527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
