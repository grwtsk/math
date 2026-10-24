# cast_div_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cad17f4-87b7-1306-4a92-7bbab0f3ad91",
  "kind": "lemma",
  "lexical_name": "cast_div_of_ne_zero",
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
  "slug": "cast-div-of-ne-zero--cc1396e4b8d30d1bc366d0a8",
  "source": {
    "blob": "d90ad5f80b2f1cade997f93335de07427817b417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 191,
    "path": "GRWTSK/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc1396e4b8d30d1bc366d0a809c243232806d09ef7a3e7adef4982ff24aa2049",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cad17f4-87b7-1306-4a92-7bbab0f3ad91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_cast] lemma cast_div_of_ne_zero (hp : (p.den : α) ≠ 0) (hq : (q.num : α) ≠ 0) :
    ↑(p / q) = (p / q : α) := by
  rw [div_def', cast_divInt_of_ne_zero, cast_def, cast_def, div_eq_mul_inv (_ / _), inv_div,
    (Int.commute_cast _ _).div_mul_div_comm (Nat.commute_cast _ _)]
  · push_cast
    rfl
  · push_cast
    exact mul_ne_zero hp hq

end Rat

open Rat

variable [FunLike F α β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variante9eea32ae22da1655b8c7cb4feada37153291a0d972fbeaa8451274a4b40254f.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90ad5f80b2f1cade997f93335de07427817b417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
