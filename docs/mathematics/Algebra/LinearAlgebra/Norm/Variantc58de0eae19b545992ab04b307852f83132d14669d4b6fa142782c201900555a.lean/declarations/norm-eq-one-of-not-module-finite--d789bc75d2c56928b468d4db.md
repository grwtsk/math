# norm_eq_one_of_not_module_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70a9cb29-3ba1-3ba1-9b21-65aa22b10bd6",
  "kind": "theorem",
  "lexical_name": "norm_eq_one_of_not_module_finite",
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
  "slug": "norm-eq-one-of-not-module-finite--d789bc75d2c56928b468d4db",
  "source": {
    "blob": "08f80e2ac0915662f4461e2b1a6395ceda0c4778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d789bc75d2c56928b468d4dbc3a2242abd5850e84ab0667ca76803b2018bcb22",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a9cb29-3ba1-3ba1-9b21-65aa22b10bd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_one_of_not_module_finite (h : ¬Module.Finite R S) (x : S) : norm R x = 1 := by
  refine norm_eq_one_of_not_exists_basis _ (mt ?_ h) _
  rintro ⟨s, ⟨b⟩⟩
  exact Module.Finite.of_basis b
#align algebra.norm_eq_one_of_not_module_finite Algebra.norm_eq_one_of_not_module_finite

-- Can't be a `simp` lemma because it depends on a choice of basis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variantc58de0eae19b545992ab04b307852f83132d14669d4b6fa142782c201900555a.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f80e2ac0915662f4461e2b1a6395ceda0c4778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
