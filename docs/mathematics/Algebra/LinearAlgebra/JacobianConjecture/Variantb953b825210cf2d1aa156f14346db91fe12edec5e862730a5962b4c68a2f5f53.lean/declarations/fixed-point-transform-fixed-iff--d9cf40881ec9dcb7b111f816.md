# fixed_point_transform_fixed_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3be008e-78e3-122e-a5a1-95bdc28c9d0d",
  "kind": "theorem",
  "lexical_name": "fixed_point_transform_fixed_iff",
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
  "slug": "fixed-point-transform-fixed-iff--d9cf40881ec9dcb7b111f816",
  "source": {
    "blob": "22312e548a8b559a3ce3e66893250ff4c33311d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9cf40881ec9dcb7b111f81623922d1afa1d466a20a783b012e4d22e04f80d94",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3be008e-78e3-122e-a5a1-95bdc28c9d0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_point_transform_fixed_iff (A : V →ₗ[R] V) (F : V → V) (y x : V)
    (hA : Function.Injective A) :
    Function.IsFixedPt (fixedPointTransform A F y) x ↔ F x = y := by
  change x - A (F x - y) = x ↔ F x = y
  rw [sub_eq_self]
  constructor
  · intro h
    exact sub_eq_zero.mp (hA (by simpa using h))
  · intro h
    simp [h]

/-- The fixed-point set equals the complete fiber; this asserts no cardinality
or dynamical behavior of that set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22312e548a8b559a3ce3e66893250ff4c33311d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
