# isStrictlyPositive_iff_posDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5648c83-d8fd-7953-7b4c-f1ccdac1fe95",
  "kind": "theorem",
  "lexical_name": "isStrictlyPositive_iff_posDef",
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
  "slug": "isstrictlypositive-iff-posdef--c224ab6e610c57d5075016bc",
  "source": {
    "blob": "945e9b211cb510f26e81a84734f78a399563eb19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 198,
    "path": "GRWTSK/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c224ab6e610c57d5075016bcd07af93933a0a904c0c14336d525cd61d26f39ab",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5648c83-d8fd-7953-7b4c-f1ccdac1fe95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStrictlyPositive_iff_posDef [DecidableEq n] {x : Matrix n n 𝕜} :
    IsStrictlyPositive x ↔ x.PosDef :=
  ⟨fun h => h.nonneg.posSemidef.posDef_iff_isUnit.mpr h.isUnit,
  fun h => h.isUnit.isStrictlyPositive h.posSemidef.nonneg⟩

alias ⟨IsStrictlyPositive.posDef, PosDef.isStrictlyPositive⟩ := isStrictlyPositive_iff_posDef

attribute [aesop safe forward (rule_sets := [CStarAlgebra])] PosDef.isStrictlyPositive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945e9b211cb510f26e81a84734f78a399563eb19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
