# mod_X_sub_C_eq_C_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:734c74a9-07d8-a9c2-422a-7061fdfdc39d",
  "kind": "theorem",
  "lexical_name": "mod_X_sub_C_eq_C_eval",
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
  "slug": "mod-x-sub-c-eq-c-eval--3a71c3e5f3da480c506bda74",
  "source": {
    "blob": "dbc692ff8d7ef4ee8629d8b434fc334e119b8211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 343,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a71c3e5f3da480c506bda744da1741d93e1065ca2025abf78ad977af9c6f530",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:734c74a9-07d8-a9c2-422a-7061fdfdc39d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_X_sub_C_eq_C_eval (p : R[X]) (a : R) : p % (X - C a) = C (p.eval a) :=
  modByMonic_eq_mod p (monic_X_sub_C a) ▸ modByMonic_X_sub_C_eq_C_eval _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant51c3b4783ced08e231f1b208a7d081d96c542c9d4791c9251b490a5a747884fa.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc692ff8d7ef4ee8629d8b434fc334e119b8211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
