# algEquivToLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae3283d279d94c53a25d124c3f27a1bda31571c491a889a51ce38d68d20e1682",
  "kind": "def",
  "lexical_name": "algEquivToLimit",
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
  "slug": "algequivtolimit--336b9dc88eadae096643c0ad",
  "source": {
    "blob": "71abbfe0e8a5c17c7230711a10848b07eb8b9af8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:336b9dc88eadae096643c0ad4bb5739f255a5e74a47b04e64d30a105f489dda2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae3283d279d94c53a25d124c3f27a1bda31571c491a889a51ce38d68d20e1682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def algEquivToLimit : Gal(K/k) →* limit (asProfiniteGaloisGroupFunctor k K) where
  toFun σ := {
    val := fun L ↦ σ.restrictNormalHom L.unop
    property := fun {L₁ L₂} π ↦ by
      algebraize [Subsemiring.inclusion π.1.le]
      have : IsScalarTower k L₂.unop L₁.unop := IsScalarTower.of_algebraMap_eq (congrFun rfl)
      have : IsScalarTower L₂.unop L₁.unop K := IsScalarTower.of_algebraMap_eq (congrFun rfl)
      apply (IsScalarTower.AlgEquiv.restrictNormalHom_comp_apply L₂.unop L₁.unop σ).symm }
  map_one' := by
    simp only [map_one]
    rfl
  map_mul' x y := by
    simp only [map_mul]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant7b48f9673d2025ade853e6fba715629223fee0b914798b90d712bcebe43ea706.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71abbfe0e8a5c17c7230711a10848b07eb8b9af8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
