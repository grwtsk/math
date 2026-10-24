# ne_neg_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "257e065352ec69d77ab4f8d94ea59abe8a4e2960",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e722f343-eff1-d60c-aff6-e38af5261c5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8edd0c29-c532-2315-2b5b-0bd79f805c86",
  "kind": "theorem",
  "lexical_name": "ne_neg_self",
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
  "slug": "ne-neg-self--5a32059da9efddc3478684b5",
  "source": {
    "blob": "257e065352ec69d77ab4f8d94ea59abe8a4e2960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 428,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a32059da9efddc3478684b5ff3720ded738b442baed39bba030fdd315da4bf7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8edd0c29-c532-2315-2b5b-0bd79f805c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_neg_self [IsDomain R] [IsTorsionFree R M] (x : Module.Ray R M) : x ≠ -x := by
  induction x using Module.Ray.ind with | h x hx =>
  rw [neg_rayOfNeZero, Ne, ray_eq_iff]
  exact mt eq_zero_of_sameRay_self_neg hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `257e065352ec69d77ab4f8d94ea59abe8a4e2960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
