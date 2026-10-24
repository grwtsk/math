# continuousMulEquivLimittoFiniteQuotientFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5be6e7b8c78afa7aef7125ec98e5f5a51680a0c7222282e35263616dbf715cb2",
  "kind": "def",
  "lexical_name": "continuousMulEquivLimittoFiniteQuotientFunctor",
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
  "slug": "continuousmulequivlimittofinitequotientfunctor--cf78fa76420b7a30de7e7ab2",
  "source": {
    "blob": "bc23998e6ffceb0d969face419f665964a2a9553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf78fa76420b7a30de7e7ab26fe3cf4f9ec77931166f8f6c821de1dce0705abd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5be6e7b8c78afa7aef7125ec98e5f5a51680a0c7222282e35263616dbf715cb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def continuousMulEquivLimittoFiniteQuotientFunctor (P : ProfiniteGrp.{u}) :
    P ≃ₜ* (limit <| diagram P) := {
  (Continuous.homeoOfEquivCompactToT2
    (f := Equiv.ofBijective _ ⟨toLimit_injective P, toLimit_surjective P⟩)
    P.toLimit.hom.continuous_toFun) with
  map_mul' := (toLimit P).hom.map_mul' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc23998e6ffceb0d969face419f665964a2a9553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
