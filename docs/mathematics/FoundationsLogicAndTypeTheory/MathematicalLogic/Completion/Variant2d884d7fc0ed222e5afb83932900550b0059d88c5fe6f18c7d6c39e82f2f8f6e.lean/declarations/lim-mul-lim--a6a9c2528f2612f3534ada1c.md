# lim_mul_lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6496f329-f0da-8ba5-2667-b90d60bbcda5",
  "kind": "theorem",
  "lexical_name": "lim_mul_lim",
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
  "slug": "lim-mul-lim--a6a9c2528f2612f3534ada1c",
  "source": {
    "blob": "6a0c9f761be276c1b397e45c5c99341fc6d9e26c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 336,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variant2d884d7fc0ed222e5afb83932900550b0059d88c5fe6f18c7d6c39e82f2f8f6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6a9c2528f2612f3534ada1c180b423c8415ab194de5bd1e212f6c83a435f98f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variant2d884d7fc0ed222e5afb83932900550b0059d88c5fe6f18c7d6c39e82f2f8f6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6496f329-f0da-8ba5-2667-b90d60bbcda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lim_mul_lim (f g : CauSeq β abv) : lim f * lim g = lim (f * g) :=
  eq_lim_of_const_equiv <|
    show LimZero (const abv (lim f * lim g) - f * g) by
      have h :
        const abv (lim f * lim g) - f * g =
          (const abv (lim f) - f) * g + const abv (lim f) * (const abv (lim g) - g) := by
              apply Subtype.ext
              rw [coe_add]
              simp [sub_mul, mul_sub]
      rw [h]
      exact
        add_limZero (mul_limZero_left _ (Setoid.symm (equiv_lim _)))
          (mul_limZero_right _ (Setoid.symm (equiv_lim _)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variant2d884d7fc0ed222e5afb83932900550b0059d88c5fe6f18c7d6c39e82f2f8f6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Completion/Variant2d884d7fc0ed222e5afb83932900550b0059d88c5fe6f18c7d6c39e82f2f8f6e.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a0c9f761be276c1b397e45c5c99341fc6d9e26c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
