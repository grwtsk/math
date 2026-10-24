# sin_nonpos_of_nonpos_of_neg_pi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d062cfa-382b-2bca-5a6b-5b5053e03289",
  "kind": "theorem",
  "lexical_name": "sin_nonpos_of_nonpos_of_neg_pi_le",
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
  "slug": "sin-nonpos-of-nonpos-of-neg-pi-le--a4f036c4b98b82a2344fcd6f",
  "source": {
    "blob": "5c84b8eebb2df23e71dc909f7a8610dbad8c32bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 438,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f036c4b98b82a2344fcd6fd75da298efc87cde1fcccdd7a7f74a1f94e5edd0",
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

Occurrence: `result:3d062cfa-382b-2bca-5a6b-5b5053e03289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_nonpos_of_nonpos_of_neg_pi_le {x : ℝ} (hx0 : x ≤ 0) (hpx : -π ≤ x) : sin x ≤ 0 :=
  neg_nonneg.1 <| sin_neg x ▸ sin_nonneg_of_nonneg_of_le_pi (neg_nonneg.2 hx0) (neg_le.1 hpx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c84b8eebb2df23e71dc909f7a8610dbad8c32bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
