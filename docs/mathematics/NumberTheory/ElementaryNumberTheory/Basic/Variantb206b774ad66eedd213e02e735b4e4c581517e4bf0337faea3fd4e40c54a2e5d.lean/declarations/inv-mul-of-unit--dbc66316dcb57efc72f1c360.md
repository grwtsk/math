# inv_mul_of_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8a41775-4e7d-dab3-29b9-04f91d34d77a",
  "kind": "theorem",
  "lexical_name": "inv_mul_of_unit",
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
  "slug": "inv-mul-of-unit--dbc66316dcb57efc72f1c360",
  "source": {
    "blob": "c1d2973d2dd49d6121053b8c3457cdc768a6666c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 730,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbc66316dcb57efc72f1c3601f540f5cd7bb8b8970c5bb42f544e0bfccce93d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8a41775-4e7d-dab3-29b9-04f91d34d77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_mul_of_unit {n : ℕ} (a : ZMod n) (h : IsUnit a) : a⁻¹ * a = 1 := by
  rw [mul_comm, mul_inv_of_unit a h]
#align zmod.inv_mul_of_unit ZMod.inv_mul_of_unit

-- TODO: this equivalence is true for `ZMod 0 = ℤ`, but needs to use different functions.
/-- Equivalence between the units of `ZMod n` and
the subtype of terms `x : ZMod n` for which `x.val` is coprime to `n` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d2973d2dd49d6121053b8c3457cdc768a6666c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
