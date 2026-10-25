# noZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d19cf09-65a3-4e20-73cc-68315f837f1f",
  "kind": "theorem",
  "lexical_name": "noZeroDivisors",
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
  "slug": "nozerodivisors--d3ef06a269469052bceca0a3",
  "source": {
    "blob": "eee231debdc4e76b6543bc30fb491225836eb48c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoidWithZero/Variant4d90b54e8daa45790f5e1e3357b2547db5a3c3735657246360486fb33ec38a6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ef06a269469052bceca0a39be36803de6ca78e42f2353d4f8915df8a4aa415",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoidWithZero/Variant4d90b54e8daa45790f5e1e3357b2547db5a3c3735657246360486fb33ec38a6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d19cf09-65a3-4e20-73cc-68315f837f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noZeroDivisors (f : LocalizationMap S N) [NoZeroDivisors M] : NoZeroDivisors N := by
  refine noZeroDivisors_iff_forall_mem_nonZeroDivisors.mpr fun n hn ↦ ?_
  have ⟨ms, eq⟩ := f.surj n
  have hs : ms.1 ≠ 0 := fun h ↦ hn (by rwa [h, f.map_zero, (f.map_units _).mul_left_eq_zero] at eq)
  exact And.left <| mul_mem_nonZeroDivisors.mp
    (eq ▸ f.map_nonZeroDivisors_le ⟨_, mem_nonZeroDivisors_of_ne_zero hs, rfl⟩)

end LocalizationMap

end Submonoid

end CommMonoidWithZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoidWithZero/Variant4d90b54e8daa45790f5e1e3357b2547db5a3c3735657246360486fb33ec38a6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoidWithZero/Variant4d90b54e8daa45790f5e1e3357b2547db5a3c3735657246360486fb33ec38a6e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eee231debdc4e76b6543bc30fb491225836eb48c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
