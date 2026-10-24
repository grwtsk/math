# multinomial_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02695baa287368c727e8dcb6f32530f4864cba4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f93c028-62f7-d532-cd05-c65b8d5d6d11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23aad4dc-a084-bf6b-f88a-b7dcac5fc856",
  "kind": "theorem",
  "lexical_name": "multinomial_congr",
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
  "slug": "multinomial-congr--026d7f0b951229f3bc37295a",
  "source": {
    "blob": "02695baa287368c727e8dcb6f32530f4864cba4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:026d7f0b951229f3bc37295affb6d1cdc84f189a6227346033402f57eb06b08f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23aad4dc-a084-bf6b-f88a-b7dcac5fc856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multinomial_congr {f g : α → ℕ} (h : ∀ a ∈ s, f a = g a) :
    multinomial s f = multinomial s g := by
  simp only [multinomial]; congr 1
  · rw [Finset.sum_congr rfl h]
  · exact Finset.prod_congr rfl fun a ha => by rw [h a ha]

/-! ### Connection to binomial coefficients

When `Nat.multinomial` is applied to a `Finset` of two elements `{a, b}`, the
result a binomial coefficient. We use `binomial` in the names of lemmas that
involves `Nat.multinomial {a, b}`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02695baa287368c727e8dcb6f32530f4864cba4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
