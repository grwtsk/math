# MeromorphicOn.codiscreteWithin_setOfPred_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc392e93-e7e5-6625-55bb-7a127895af7b",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.codiscreteWithin_setOfPred_ne_zero",
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
  "slug": "meromorphicon-codiscretewithin-setofpred-ne-zero--5c6b026f3951410d9f17b16d",
  "source": {
    "blob": "b8311a48194dfb183775268ec7675cebc40f49f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6b026f3951410d9f17b16dad35bb536c77f5d97636405fb265557c6057d5b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc392e93-e7e5-6625-55bb-7a127895af7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.codiscreteWithin_setOfPred_ne_zero (h₁f : MeromorphicOn f U)
    (h₂f : ∀ u ∈ U, meromorphicOrderAt f u ≠ ⊤) :
    ∀ᶠ x in codiscreteWithin U, f x ≠ 0 := by
  filter_upwards [h₁f.analyticAt_mem_codiscreteWithin,
    h₁f.codiscreteWithin_setOfPred_meromorphicOrderAt_eq_zero_or_top h₂f] with x h₁x h₂x
  have := h₂f x h₂x.1
  simp_all [← h₁x.analyticOrderAt_eq_zero, h₁x.meromorphicOrderAt_eq]

@[deprecated (since := "2026-07-09")]
alias MeromorphicOn.codiscreteWithin_setOf_ne_zero :=
  MeromorphicOn.codiscreteWithin_setOfPred_ne_zero

/-!
## Identity Principles
-/

/--
Formulation of `MeromorphicAt.frequently_zero_iff_eventuallyEq_zero` as an identity principle: If
`f` and `g` are meromorphic at `x`, then `f` and `g` agree eventually in a punctured neighborhood of
`x` iff they agree at points arbitrarily close to (but different from) `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variantb45905a463241c26bcc57c334c97528f8077aa6dc0995c221ab67e83b074e882.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8311a48194dfb183775268ec7675cebc40f49f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
