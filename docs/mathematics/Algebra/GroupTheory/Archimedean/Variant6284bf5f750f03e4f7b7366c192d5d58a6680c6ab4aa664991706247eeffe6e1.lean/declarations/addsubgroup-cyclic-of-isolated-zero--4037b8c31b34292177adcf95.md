# AddSubgroup.cyclic_of_isolated_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:defb8df9-fe11-4133-cfd3-98bad6adb11f",
  "kind": "theorem",
  "lexical_name": "AddSubgroup.cyclic_of_isolated_zero",
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
  "slug": "addsubgroup-cyclic-of-isolated-zero--4037b8c31b34292177adcf95",
  "source": {
    "blob": "ccef7cdf2cd284f25863fda53347efa4bf38d917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4037b8c31b34292177adcf95019a8e00a38a5641d4b69d34c217471f73615dd9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:defb8df9-fe11-4133-cfd3-98bad6adb11f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubgroup.cyclic_of_isolated_zero {H : AddSubgroup G} {a : G} (h₀ : 0 < a)
    (hd : Disjoint (H : Set G) (Ioo 0 a)) : ∃ b, H = closure {b} := by
  rcases eq_or_ne H ⊥ with rfl | hbot
  · exact ⟨0, closure_singleton_zero.symm⟩
  · exact (exists_isLeast_pos hbot h₀ hd).imp fun _ => cyclic_of_min

/-- Every subgroup of `ℤ` is cyclic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccef7cdf2cd284f25863fda53347efa4bf38d917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
