# tendsto_zero_of_tendsto_mul_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff08b4ec-5b0c-409c-0787-0be0739f2d4e",
  "kind": "lemma",
  "lexical_name": "tendsto_zero_of_tendsto_mul_atTop",
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
  "slug": "tendsto-zero-of-tendsto-mul-attop--9fb4919573418b164ce1a7de",
  "source": {
    "blob": "2a7cfd73464fe4e3392dd21a053e94b591b8848d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb4919573418b164ce1a7de94aeffe4f5ab53780730b8d539587e8f4bfcfbbb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff08b4ec-5b0c-409c-0787-0be0739f2d4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_zero_of_tendsto_mul_atTop (hr : Tendsto (fun n => n * p n) atTop (𝓝 r)) :
    Tendsto p atTop (𝓝 0) := by
  have : (fun n => (n * p n) * (1 / n)) =ᶠ[atTop] p := by
    filter_upwards [eventually_ge_atTop 1] with n hn
    field
  simpa using (hr.mul tendsto_one_div_atTop_nhds_zero_nat).congr' this

open Asymptotics in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a7cfd73464fe4e3392dd21a053e94b591b8848d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
