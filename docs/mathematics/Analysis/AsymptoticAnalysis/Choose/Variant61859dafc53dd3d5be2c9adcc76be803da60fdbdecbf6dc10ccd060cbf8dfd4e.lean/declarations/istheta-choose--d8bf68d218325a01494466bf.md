# isTheta_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75493315-8781-f45f-31db-b3fe6e905c22",
  "kind": "theorem",
  "lexical_name": "isTheta_choose",
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
  "slug": "istheta-choose--d8bf68d218325a01494466bf",
  "source": {
    "blob": "24c5b7e04cff82ca8e2300e64da8a8d9e2f07996",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 56,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8bf68d218325a01494466bf0102d35bbef8871e4bd7de83f75c5a7883e385e2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75493315-8781-f45f-31db-b3fe6e905c22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTheta_choose (k : ℕ) :
    (fun (n : ℕ) ↦ (n.choose k : ℝ)) =Θ[atTop] (fun (n : ℕ) ↦ (n^k : ℝ)) := by
  apply (isEquivalent_choose k).trans_isTheta
  simp_rw [div_eq_mul_inv, mul_comm _ (_⁻¹)]
  exact isTheta_rfl.const_mul_left <| inv_ne_zero (mod_cast k.factorial_ne_zero)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Choose/Variant61859dafc53dd3d5be2c9adcc76be803da60fdbdecbf6dc10ccd060cbf8dfd4e.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24c5b7e04cff82ca8e2300e64da8a8d9e2f07996` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
