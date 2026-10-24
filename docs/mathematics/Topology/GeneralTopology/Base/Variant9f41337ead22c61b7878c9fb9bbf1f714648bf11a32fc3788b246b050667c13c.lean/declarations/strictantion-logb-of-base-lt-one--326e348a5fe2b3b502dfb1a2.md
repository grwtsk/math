# strictAntiOn_logb_of_base_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:131763e8-ab95-6c31-d04e-7f484537adbe",
  "kind": "theorem",
  "lexical_name": "strictAntiOn_logb_of_base_lt_one",
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
  "slug": "strictantion-logb-of-base-lt-one--326e348a5fe2b3b502dfb1a2",
  "source": {
    "blob": "3ee5470937fbb52c07b61ef294bdd7721d55b5ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 355,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:326e348a5fe2b3b502dfb1a2d563a9fdd84c5341fe89664aed7d62bccce5fb5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:131763e8-ab95-6c31-d04e-7f484537adbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictAntiOn_logb_of_base_lt_one : StrictAntiOn (logb b) (Set.Ioi 0) := fun _ hx _ _ hxy =>
  logb_lt_logb_of_base_lt_one b_pos b_lt_one hx hxy
#align real.strict_anti_on_logb_of_base_lt_one Real.strictAntiOn_logb_of_base_lt_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variant9f41337ead22c61b7878c9fb9bbf1f714648bf11a32fc3788b246b050667c13c.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ee5470937fbb52c07b61ef294bdd7721d55b5ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
