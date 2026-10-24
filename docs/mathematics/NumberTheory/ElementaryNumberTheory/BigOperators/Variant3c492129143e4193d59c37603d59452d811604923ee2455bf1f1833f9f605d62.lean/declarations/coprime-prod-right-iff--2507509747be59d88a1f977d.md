# coprime_prod_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48b9c3cd-e6fc-136b-2982-7eeb8b4d3be6",
  "kind": "theorem",
  "lexical_name": "coprime_prod_right_iff",
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
  "slug": "coprime-prod-right-iff--2507509747be59d88a1f977d",
  "source": {
    "blob": "2b49df5b427c0abac691e5605fb747af03b6d5da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2507509747be59d88a1f977d245f734f7af52cba8ff16cb11db7ecdcc79f0783",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48b9c3cd-e6fc-136b-2982-7eeb8b4d3be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_prod_right_iff {x : ℕ} {t : Finset ι} {s : ι → ℕ} :
    Coprime x (∏ i ∈ t, s i) ↔ ∀ i ∈ t, Coprime x (s i) := by
  simpa using coprime_multiset_prod_right_iff (m := t.val.map s)

/-- See `IsCoprime.prod_left` for the corresponding lemma about `IsCoprime` -/
alias ⟨_, Coprime.prod_left⟩ := coprime_prod_left_iff

/-- See `IsCoprime.prod_right` for the corresponding lemma about `IsCoprime` -/
alias ⟨_, Coprime.prod_right⟩ := coprime_prod_right_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/BigOperators/Variant3c492129143e4193d59c37603d59452d811604923ee2455bf1f1833f9f605d62.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b49df5b427c0abac691e5605fb747af03b6d5da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
