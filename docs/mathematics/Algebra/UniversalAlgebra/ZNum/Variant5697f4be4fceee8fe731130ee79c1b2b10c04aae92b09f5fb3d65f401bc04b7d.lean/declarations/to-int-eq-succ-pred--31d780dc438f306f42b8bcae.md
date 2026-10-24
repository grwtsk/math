# to_int_eq_succ_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23e44db3-43c5-e81e-0608-56ab5ad3d378",
  "kind": "theorem",
  "lexical_name": "to_int_eq_succ_pred",
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
  "slug": "to-int-eq-succ-pred--31d780dc438f306f42b8bcae",
  "source": {
    "blob": "df0d1f2d31e8fdc9d954932682693054b726890e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 194,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31d780dc438f306f42b8bcaea10792efac3c163e0562eac7f78827a796e4ccf4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23e44db3-43c5-e81e-0608-56ab5ad3d378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_int_eq_succ_pred (n : PosNum) : (n : ℤ) = (n.pred' : ℕ) + 1 := by
  rw [← n.to_nat_to_int, to_nat_eq_succ_pred]; rfl

end PosNum

namespace Num

variable {α : Type*}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ZNum/Variant5697f4be4fceee8fe731130ee79c1b2b10c04aae92b09f5fb3d65f401bc04b7d.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0d1f2d31e8fdc9d954932682693054b726890e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
