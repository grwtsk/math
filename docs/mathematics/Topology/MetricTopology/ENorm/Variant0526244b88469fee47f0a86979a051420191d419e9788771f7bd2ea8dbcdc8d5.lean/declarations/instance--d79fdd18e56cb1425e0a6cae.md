# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e67a93a43ab8e2a2874895c978639d03ff380644fdaa5447b89aa371d94db0b",
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
  "slug": "instance--d79fdd18e56cb1425e0a6cae",
  "source": {
    "blob": "6192915b9c0861be6168f6397300ca082fda6be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 169,
    "path": "GRWTSK/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d79fdd18e56cb1425e0a6cae94618529199c9e63a341146a81feb8057a817f5b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e67a93a43ab8e2a2874895c978639d03ff380644fdaa5447b89aa371d94db0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : SemilatticeSup (ENorm 𝕜 V) :=
  { ENorm.partialOrder with
    le := (· ≤ ·)
    lt := (· < ·)
    sup := fun e₁ e₂ =>
      { toFun := fun x => max (e₁ x) (e₂ x)
        eq_zero' := fun x h => e₁.eq_zero_iff.1 (ENNReal.max_eq_zero_iff.1 h).1
        map_add_le' := fun x y =>
          max_le (le_trans (e₁.map_add_le _ _) <| add_le_add (le_max_left _ _) (le_max_left _ _))
            (le_trans (e₂.map_add_le _ _) <| add_le_add (le_max_right _ _) (le_max_right _ _))
        map_smul_le' := fun c x => le_of_eq <| by simp only [map_smul, ENNReal.mul_max] }
    le_sup_left := fun e₁ e₂ x => le_max_left _ _
    le_sup_right := fun e₁ e₂ x => le_max_right _ _
    sup_le := fun e₁ e₂ e₃ h₁ h₂ x => max_le (h₁ x) (h₂ x) }

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6192915b9c0861be6168f6397300ca082fda6be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
