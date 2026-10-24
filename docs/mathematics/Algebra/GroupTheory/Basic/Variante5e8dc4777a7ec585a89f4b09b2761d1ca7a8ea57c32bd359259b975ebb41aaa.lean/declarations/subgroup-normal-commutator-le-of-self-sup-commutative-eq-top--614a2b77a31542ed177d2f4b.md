# Subgroup.Normal.commutator_le_of_self_sup_commutative_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:045ac7ad-4934-6bde-2828-ae3ed1cace44",
  "kind": "theorem",
  "lexical_name": "Subgroup.Normal.commutator_le_of_self_sup_commutative_eq_top",
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
  "slug": "subgroup-normal-commutator-le-of-self-sup-commutative-eq-top--614a2b77a31542ed177d2f4b",
  "source": {
    "blob": "baa949e1fd5a74609ff23fb18b890208fd90625e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 592,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:614a2b77a31542ed177d2f4b58f1a2d2a7557df2cfb356e39ba73ba34e8511a4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045ac7ad-4934-6bde-2828-ae3ed1cace44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.Normal.commutator_le_of_self_sup_commutative_eq_top {N : Subgroup G} [N.Normal]
    {H : Subgroup G} (hHN : N ⊔ H = ⊤) (hH : IsMulCommutative H) : _root_.GRWTSK.Algebra.GroupTheory.ConjEqCommutatorElementMul.Variant8b2344c44b8867c41e283c912a874b7c6df5e9bebc7902543ba46eec84c7f621.commutator G ≤ N := by
  -- It is enough to prove that Q = G ⧸ N is commutative
  apply quotient_commutative_iff_commutator_le.mp
  -- Q is a quotient of H
  let φ : H →ₙ* G ⧸ N := MonoidHom.comp (QuotientGroup.mk' N) (Subgroup.subtype H)
  -- It is enough to prove that φ is surjective
  apply Function.Surjective.isMulCommutative (f := φ) _ hH
  -- We have to prove that `MonoidHom.range φ = ⊤`
  have : Subgroup.map (QuotientGroup.mk' N) ⊤ = ⊤ := by
    rw [Subgroup.map_top, MonoidHom.range_eq_top]
    exact QuotientGroup.mk'_surjective N
  rw [MulHom.coe_coe, ← MonoidHom.range_eq_top, MonoidHom.range_eq_map, ← Subgroup.map_map, ← this,
    Subgroup.map_eq_map_iff, QuotientGroup.ker_mk', sup_comm, ← hHN, Subgroup.map_top]
  simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante5e8dc4777a7ec585a89f4b09b2761d1ca7a8ea57c32bd359259b975ebb41aaa.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baa949e1fd5a74609ff23fb18b890208fd90625e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
