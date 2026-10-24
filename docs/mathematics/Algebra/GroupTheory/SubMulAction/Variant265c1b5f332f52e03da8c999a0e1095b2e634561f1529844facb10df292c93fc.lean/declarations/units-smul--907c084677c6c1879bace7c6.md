# units_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:472f20af-6517-0578-2bb5-2b0342c1d805",
  "kind": "theorem",
  "lexical_name": "units_smul",
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
  "slug": "units-smul--907c084677c6c1879bace7c6",
  "source": {
    "blob": "2d049158fe1f7259eabec286d2b7607675cb0fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:907c084677c6c1879bace7c67a36ea78bae319f73f0412671187aa0aa88ab81d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:472f20af-6517-0578-2bb5-2b0342c1d805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem units_smul {S R M : Type*} [SetLike S M] [Monoid R] [MulAction R M] [SMulMemClass S R M]
    (s : S) (r : Rˣ) : r • s = (s : Set M) := by
  apply subset_antisymm (smul_subset_self _ s)
  rintro x hx
  exact ⟨r⁻¹ • x, SMulMemClass.smul_mem (↑r⁻¹ : R) hx, by simp [← Units.smul_def]⟩

end SMul

section OfTower

variable {N α : Type*} [SetLike S α] [SMul M N] [SMul M α] [Monoid N]
    [MulAction N α] [SMulMemClass S N α] [IsScalarTower M N α] (s : S)

-- lower priority so other instances are found first
/-- A subset closed under the scalar action inherits that action. -/
@[to_additive /-- A subset closed under the additive action inherits that action. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d049158fe1f7259eabec286d2b7607675cb0fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
