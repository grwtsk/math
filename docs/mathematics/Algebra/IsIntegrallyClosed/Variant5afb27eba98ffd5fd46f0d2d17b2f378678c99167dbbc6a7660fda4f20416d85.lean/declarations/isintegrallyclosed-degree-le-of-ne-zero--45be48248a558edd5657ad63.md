# IsIntegrallyClosed.degree_le_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d12d06b-54d2-6e5f-8fae-049493213fb5",
  "kind": "theorem",
  "lexical_name": "IsIntegrallyClosed.degree_le_of_ne_zero",
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
  "slug": "isintegrallyclosed-degree-le-of-ne-zero--45be48248a558edd5657ad63",
  "source": {
    "blob": "73355f0866bc13bb7e86dce47396c28e7aa443fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45be48248a558edd5657ad632dad53a5daee0384338660379357897e8746a3ab",
  "verification": {
    "reference": "docs/verification/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d12d06b-54d2-6e5f-8fae-049493213fb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegrallyClosed.degree_le_of_ne_zero {s : S} (hs : IsIntegral R s) {p : R[X]}
    (hp0 : p ≠ 0) (hp : Polynomial.aeval s p = 0) : degree (minpoly R s) ≤ degree p := by
  rw [degree_eq_natDegree (minpoly.ne_zero hs), degree_eq_natDegree hp0]
  norm_cast
  exact natDegree_le_of_dvd ((isIntegrallyClosed_dvd_iff hs _).mp hp) hp0
#align minpoly.is_integrally_closed.degree_le_of_ne_zero minpoly.IsIntegrallyClosed.degree_le_of_ne_zero

/-- The minimal polynomial of an element `x` is uniquely characterized by its defining property:
if there is another monic polynomial of minimal degree that has `x` as a root, then this polynomial
is equal to the minimal polynomial of `x`. See also `minpoly.unique` which relaxes the
assumptions on `S` in exchange for stronger assumptions on `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsIntegrallyClosed/Variant5afb27eba98ffd5fd46f0d2d17b2f378678c99167dbbc6a7660fda4f20416d85.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73355f0866bc13bb7e86dce47396c28e7aa443fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
