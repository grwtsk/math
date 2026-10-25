# sup_not_succ_of_ne_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b58ab67-8b2c-d557-ea6b-b2be441fa16f",
  "kind": "theorem",
  "lexical_name": "sup_not_succ_of_ne_sup",
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
  "slug": "sup-not-succ-of-ne-sup--0e4ae80f0ce7f59aba43f763",
  "source": {
    "blob": "64e97358485682fd00f0b272b24006d21d912de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e4ae80f0ce7f59aba43f76318c2fc6e4c087f39bc52d880a6b461933e81446f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b58ab67-8b2c-d557-ea6b-b2be441fa16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_not_succ_of_ne_sup {ι : Type u} {f : ι → Ordinal.{max u v}}
    (hf : ∀ i, f i ≠ sup.{_, v} f) {a} (hao : a < sup.{_, v} f) : succ a < sup.{_, v} f := by
  by_contra! hoa
  exact
    hao.not_le (sup_le fun i => le_of_lt_succ <| (lt_of_le_of_ne (le_sup _ _) (hf i)).trans_le hoa)

-- TODO: generalize to conditionally complete lattices.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Family/Variantcca96043b5c1bb2edb7fd8faabbbcf33cc3ae6a7874f0cc1834d272c60a123f1.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e97358485682fd00f0b272b24006d21d912de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
