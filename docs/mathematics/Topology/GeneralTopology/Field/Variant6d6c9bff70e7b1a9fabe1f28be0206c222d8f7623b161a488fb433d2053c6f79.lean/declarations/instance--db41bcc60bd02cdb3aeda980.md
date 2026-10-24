# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1598c75159ec0c2dfe8802e5d765d672bb5f587ed83e32a56ad5881169abbc6a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--db41bcc60bd02cdb3aeda980",
  "source": {
    "blob": "f1429aec19e1335c715c65b508ab68b18e763232",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 306,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db41bcc60bd02cdb3aeda980923b37565127edb9011169fb3bd3d205eb1103e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1598c75159ec0c2dfe8802e5d765d672bb5f587ed83e32a56ad5881169abbc6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsStrictOrderedRing.toHasContinuousInv₀ {𝕜}
    [Semifield 𝕜] [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜]
    [TopologicalSpace 𝕜] [OrderTopology 𝕜] [ContinuousMul 𝕜] :
    HasContinuousInv₀ 𝕜 := .of_nhds_one <| tendsto_order.2 <| by
  refine ⟨fun x hx => ?_, fun x hx => ?_⟩
  · obtain ⟨x', h₀, hxx', h₁⟩ : ∃ x', 0 < x' ∧ x ≤ x' ∧ x' < 1 :=
      ⟨max x (1 / 2), one_half_pos.trans_le (le_max_right _ _), le_max_left _ _,
        max_lt hx one_half_lt_one⟩
    filter_upwards [Ioo_mem_nhds one_pos ((one_lt_inv₀ h₀).2 h₁)] with y hy
    exact hxx'.trans_lt <| lt_inv_of_lt_inv₀ hy.1 hy.2
  · filter_upwards [Ioi_mem_nhds (inv_lt_one_of_one_lt₀ hx)] with y hy
    exact inv_lt_of_inv_lt₀ (by positivity) hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1429aec19e1335c715c65b508ab68b18e763232` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
