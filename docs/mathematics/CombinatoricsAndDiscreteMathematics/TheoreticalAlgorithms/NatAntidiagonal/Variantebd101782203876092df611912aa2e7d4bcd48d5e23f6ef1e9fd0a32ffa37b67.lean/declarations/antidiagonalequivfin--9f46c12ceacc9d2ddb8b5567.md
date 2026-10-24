# antidiagonalEquivFin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a439883a493f6aec560d4ca515a5ccc691def91219a6d2f971dfe8046d79aee",
  "kind": "def",
  "lexical_name": "antidiagonalEquivFin",
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
  "slug": "antidiagonalequivfin--9f46c12ceacc9d2ddb8b5567",
  "source": {
    "blob": "3c426ccfe858215afcaccfe4d9169353fb01f3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 219,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f46c12ceacc9d2ddb8b55676cd07dc838e6158ae833f1ee192b3ef1e3ac14bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a439883a493f6aec560d4ca515a5ccc691def91219a6d2f971dfe8046d79aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def antidiagonalEquivFin (n : ℕ) : antidiagonal n ≃ Fin (n + 1) where
  toFun := fun ⟨⟨i, j⟩, h⟩ ↦ ⟨i, antidiagonal.fst_lt h⟩
  invFun := fun ⟨i, h⟩ ↦ ⟨⟨i, n - i⟩, by
    rw [mem_antidiagonal, add_comm, tsub_add_cancel_iff_le]
    exact Nat.le_of_lt_succ h⟩
  left_inv := by rintro ⟨⟨i, j⟩, h⟩; ext; rfl
  right_inv x := rfl

end Nat

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c426ccfe858215afcaccfe4d9169353fb01f3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
