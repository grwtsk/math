# IsCompletelyMultiplicative.isMultiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 972,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a6e0994-eeab-af0b-680e-a83743945ad7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb6c2b2c-f246-0d34-13a9-3496b28fa3c6",
  "kind": "lemma",
  "lexical_name": "IsCompletelyMultiplicative.isMultiplicative",
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
  "slug": "iscompletelymultiplicative-ismultiplicative--53aaa50aa12cda0a8f1f898a",
  "source": {
    "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 972,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53aaa50aa12cda0a8f1f898a9c5b1d2380c926aeeeffee05aee2c378ade1a046",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6c2b2c-f246-0d34-13a9-3496b28fa3c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 972–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCompletelyMultiplicative.isMultiplicative {f : ArithmeticFunction ℝ} (hf : IsCompletelyMultiplicative f) : f.IsMultiplicative := by
  exact ⟨hf.1, fun {m n} _ => hf.2 m n⟩

/--
The Liouville function is completely multiplicative. -/
@[blueprint
  "isCompletelyMultiplicative_liouville"
  (title := "isCompletelyMultiplicative liouville")
  (statement := /-- The Liouville function is completely multiplicative. -/)
  (proof := /--
  The Liouville function $\lambda(n)$ is defined as $(-1)^{\Omega(n)}$, where $\Omega(n)$ counts the total number of prime factors of $n$ with multiplicity. To show that $\lambda$ is completely multiplicative, we need to verify that $\lambda(1) = 1$ and that $\lambda(ab) = \lambda(a)\lambda(b)$ for all natural numbers $a$ and $b$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean#L972).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b365865c3c2c3a2b16519910930a7370ed08f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
