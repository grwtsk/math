# abs_abs_sub_abs_le_abs_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:064cdc72-574b-8814-be1a-751aad379b4d",
  "kind": "theorem",
  "lexical_name": "abs_abs_sub_abs_le_abs_sub",
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
  "slug": "abs-abs-sub-abs-le-abs-sub--f606e8c2220c56254e354232",
  "source": {
    "blob": "a10623931f148b40b4181b4a79772332b22a68b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 320,
    "path": "GRWTSK/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f606e8c2220c56254e354232f52cff655a042ac4e2d7e5cdb894853ba51821f5",
  "verification": {
    "reference": "docs/verification/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:064cdc72-574b-8814-be1a-751aad379b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_abs_sub_abs_le_abs_sub (a b : α) : |(|a| - |b|)| ≤ |a - b| :=
  abs_sub_le_iff.2
    ⟨abs_sub_abs_le_abs_sub _ _, by rw [abs_sub_comm]; apply abs_sub_abs_le_abs_sub⟩
#align abs_abs_sub_abs_le_abs_sub abs_abs_sub_abs_le_abs_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Abs/Variantfcc873fe40d757e00afe8a705e85a75ac0f9202b0f361465e080a428f42e481a.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10623931f148b40b4181b4a79772332b22a68b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
