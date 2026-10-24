# intCast_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79802da9-13df-f988-d20e-2dbbde82658d",
  "kind": "theorem",
  "lexical_name": "intCast_add",
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
  "slug": "intcast-add--20fb55c8f62db3a7a8df341b",
  "source": {
    "blob": "3f4e11fa8d49fd9de908d845bdffc55407fc5c49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 265,
    "path": "GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20fb55c8f62db3a7a8df341bd981b5fdf45bf62844bf093c2b7517cee5542dc2",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79802da9-13df-f988-d20e-2dbbde82658d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_add {R} [CommRing R] {b₁ b₂ : R} {a₁ a₂ : ℤ}
    (_ : ((a₁ : ℤ) : R) = b₁) (_ : ((a₂ : ℤ) : R) = b₂) : ((a₁ + a₂ : ℤ) : R) = b₁ + b₂ := by
  subst_vars; simp


mutual

variable {v : Lean.Level} {β : Q(Type v)} (sβ : Q(CommSemiring $β))
  (_ : v =QL 0) (_ : $β =Q ℤ) (_ : $sβ =Q inferInstance)

/-- Applies `Int.cast` to an int polynomial to produce a polynomial in `α`.

* An atom `e` causes `↑e` to be allocated as a new atom.
* A sum delegates to `ExSum.evalIntCast`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantecb0f4f30792359900bc38a151f86a56f14cbcd2bc49f9a09bf3954ac25eda4c.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4e11fa8d49fd9de908d845bdffc55407fc5c49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
