# IsLongestMatchAtChain.eq_of_isLongestMatchAt_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fce87c5e-b715-6cc2-a75f-bb47013da610",
  "kind": "theorem",
  "lexical_name": "IsLongestMatchAtChain.eq_of_isLongestMatchAt_self",
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
  "slug": "islongestmatchatchain-eq-of-islongestmatchat-self--0c36f9d27a6fb9aeeefa9700",
  "source": {
    "blob": "be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 454,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c36f9d27a6fb9aeeefa9700d821075144f0ca9f7957998b18ec8866d9a0399d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fce87c5e-b715-6cc2-a75f-bb47013da610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLongestMatchAtChain.eq_of_isLongestMatchAt_self {pat : ρ} [PatternModel pat] {s : Slice}
    {startPos endPos : s.Pos} (h : IsLongestMatchAtChain pat startPos endPos) (h' : IsLongestMatchAt pat startPos startPos) :
    startPos = endPos := by
  induction h with
  | nil => rfl
  | cons p₁ p₂ p₃ h₁ h₂ ih =>
    obtain rfl : p₁ = p₂ := h'.eq h₁
    exact ih h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0ed13f03d904e2ff1d2ff49cc8a75b84c9b38497eece4c96c1b685bf7c60a923.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be753e249f36e5d5eccbafe7cbaaa486ecc5eaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
