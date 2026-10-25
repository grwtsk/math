# primitive_rootNumber_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c530828e-ec47-9085-e67b-a8778ccf8756",
  "kind": "theorem",
  "lexical_name": "primitive_rootNumber_ne_zero",
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
  "slug": "primitive-rootnumber-ne-zero--cc47229163c7b7f711ece34c",
  "source": {
    "blob": "c8d7f1e106da50c6734848a35308df021643cef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc47229163c7b7f711ece34c82e830292623801b4b064af860170fee3fee5999",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c530828e-ec47-9085-e67b-a8778ccf8756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_rootNumber_ne_zero
    {q : ℕ} [NeZero q] {chi : DirichletCharacter ℂ q}
    (hchi : DirichletCharacter.IsPrimitive chi) :
    DirichletCharacter.rootNumber chi ≠ 0 := by
  intro hroot
  have hFE := canonicalCompletedLFunction_one_sub hchi (-1 : ℂ)
  have hCompletedZero :
      canonicalCompletedLFunction chi (2 : ℂ) = 0 := by
    norm_num [hroot] at hFE
    exact hFE
  have hLZero : DirichletCharacter.LFunction chi (2 : ℂ) = 0 :=
    (canonicalCompletedLFunction_zero_iff_LFunction_zero chi
      (by norm_num : (0 : ℝ) < (2 : ℂ).re)).mp hCompletedZero
  exact (DirichletCharacter.LFunction_ne_zero_of_one_le_re chi
    (.inr (by norm_num : (2 : ℂ) ≠ 1)) (by norm_num)) hLZero

end

end Surface.Core.DirichletGRH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LFunctionConjugation/Variantf2a638e0875c2785f56fbcbbf5963434d4538c6c0c37bfc9d92c1f8bdab713e2.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d7f1e106da50c6734848a35308df021643cef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
