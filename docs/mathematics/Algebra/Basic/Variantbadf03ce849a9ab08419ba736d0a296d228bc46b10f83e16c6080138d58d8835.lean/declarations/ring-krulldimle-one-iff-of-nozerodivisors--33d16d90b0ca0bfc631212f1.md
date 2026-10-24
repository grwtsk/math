# Ring.krullDimLE_one_iff_of_noZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db8fce74-8250-94a5-b400-949031af5f8c",
  "kind": "lemma",
  "lexical_name": "Ring.krullDimLE_one_iff_of_noZeroDivisors",
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
  "slug": "ring-krulldimle-one-iff-of-nozerodivisors--33d16d90b0ca0bfc631212f1",
  "source": {
    "blob": "047a73614471d777f9f5295a46d4ae82c24038be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 167,
    "path": "GRWTSK/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d16d90b0ca0bfc631212f1ba74493af9b23eef19a1141cb6ea2741b3f2e15e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8fce74-8250-94a5-b400-949031af5f8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ring.krullDimLE_one_iff_of_noZeroDivisors [NoZeroDivisors R] :
    Ring.KrullDimLE 1 R ↔ ∀ I : Ideal R, I ≠ ⊥ → I.IsPrime → I.IsMaximal := by
  cases subsingleton_or_nontrivial R
  · exact iff_of_true inferInstance fun I h ↦ (h <| Subsingleton.elim ..).elim
  have := Ideal.bot_prime (α := R)
  exact Ring.krullDimLE_one_iff_of_isPrime_bot

/-- Alternative constructor for `Ring.KrullDimLE 1`, convenient for domains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbadf03ce849a9ab08419ba736d0a296d228bc46b10f83e16c6080138d58d8835.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047a73614471d777f9f5295a46d4ae82c24038be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
