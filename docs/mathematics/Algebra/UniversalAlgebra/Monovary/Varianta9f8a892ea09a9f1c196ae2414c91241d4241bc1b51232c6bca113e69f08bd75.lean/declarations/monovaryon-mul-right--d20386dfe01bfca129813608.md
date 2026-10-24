# MonovaryOn.mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69be8d86-6e87-fe9f-f933-af22bfcda417",
  "kind": "lemma",
  "lexical_name": "MonovaryOn.mul_right",
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
  "slug": "monovaryon-mul-right--d20386dfe01bfca129813608",
  "source": {
    "blob": "6ee615c2e3df1164b60f42e33509397bada1ea21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 147,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d20386dfe01bfca1298136086ea8935e0eb0b3de51eff1ca7800bbcdf1e7ca63",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69be8d86-6e87-fe9f-f933-af22bfcda417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma MonovaryOn.mul_right (h₁ : MonovaryOn f g₁ s) (h₂ : MonovaryOn f g₂ s) :
    MonovaryOn f (g₁ * g₂) s :=
  fun _i hi _j hj hij ↦ (lt_or_lt_of_mul_lt_mul hij).elim (h₁ hi hj) <| h₂ hi hj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Varianta9f8a892ea09a9f1c196ae2414c91241d4241bc1b51232c6bca113e69f08bd75.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee615c2e3df1164b60f42e33509397bada1ea21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
