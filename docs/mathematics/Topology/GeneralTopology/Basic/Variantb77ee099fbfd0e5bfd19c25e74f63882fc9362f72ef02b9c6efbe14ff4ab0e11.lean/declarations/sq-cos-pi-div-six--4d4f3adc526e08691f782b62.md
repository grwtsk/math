# sq_cos_pi_div_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e138ede7-d8d8-ab51-11af-a1bd198664cf",
  "kind": "theorem",
  "lexical_name": "sq_cos_pi_div_six",
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
  "slug": "sq-cos-pi-div-six--4d4f3adc526e08691f782b62",
  "source": {
    "blob": "5c84b8eebb2df23e71dc909f7a8610dbad8c32bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 805,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d4f3adc526e08691f782b625bafa589f42b2b7890af89d3b3c5324f92072c17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e138ede7-d8d8-ab51-11af-a1bd198664cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 805–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_cos_pi_div_six : cos (π / 6) ^ 2 = 3 / 4 := by
  rw [cos_pi_div_six, div_pow, sq_sqrt] <;> norm_num

/-- The sine of `π / 6` is `1 / 2`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean#L805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c84b8eebb2df23e71dc909f7a8610dbad8c32bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
