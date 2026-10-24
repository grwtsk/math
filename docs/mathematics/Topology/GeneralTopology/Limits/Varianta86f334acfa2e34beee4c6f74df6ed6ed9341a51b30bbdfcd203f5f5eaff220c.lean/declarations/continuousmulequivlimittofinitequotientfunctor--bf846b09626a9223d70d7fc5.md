# continuousMulEquivLimittoFiniteQuotientFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc1556f2cd0db6eba8a341c09c4dedc0977e83b276ffc7f31dde2380581e5d84",
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
  "slug": "continuousmulequivlimittofinitequotientfunctor--bf846b09626a9223d70d7fc5",
  "source": {
    "blob": "a36ad6240f15b03c1038f538854444c5dbb4f68b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf846b09626a9223d70d7fc5bb99cc520226d5934e61763bbb045d054dc290c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc1556f2cd0db6eba8a341c09c4dedc0977e83b276ffc7f31dde2380581e5d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def continuousMulEquivLimittoFiniteQuotientFunctor (P : ProfiniteGrp.{u}) :
    P ≃ₜ* (limit (toFiniteQuotientFunctor P ⋙ forget₂ FiniteGrp ProfiniteGrp)) := {
  (Continuous.homeoOfEquivCompactToT2
    (f := Equiv.ofBijective _ ⟨toLimit_injective P, toLimit_surjective P⟩)
    P.toLimit.hom.continuous_toFun) with
  map_mul' := (toLimit P).hom.map_mul' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a36ad6240f15b03c1038f538854444c5dbb4f68b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
