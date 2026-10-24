# exp_eq_exp_iff_exp_sub_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd737b1b-3779-d609-f0ae-e43708c0058c",
  "kind": "theorem",
  "lexical_name": "exp_eq_exp_iff_exp_sub_eq_one",
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
  "slug": "exp-eq-exp-iff-exp-sub-eq-one--22c2d596ecb6f1ab1b92324d",
  "source": {
    "blob": "40d9bf67fa360d69a9eab0cc9cea2fbe7418a534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22c2d596ecb6f1ab1b92324d72ad6a2000fbe307051ae843cfd13760461002ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd737b1b-3779-d609-f0ae-e43708c0058c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_eq_exp_iff_exp_sub_eq_one {x y : ℂ} : exp x = exp y ↔ exp (x - y) = 1 := by
  rw [exp_sub, div_eq_one_iff_eq (exp_ne_zero _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log/Variantcdd4e87abfcc3f8a6c7d35c06c75b7c31eaf10ecae0a912ccf0926186f7b7e1c.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d9bf67fa360d69a9eab0cc9cea2fbe7418a534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
