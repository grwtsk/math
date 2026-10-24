# QuadraticSubactionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c969465a79532eef82ab8ac2960d50c2ec53290f119a0fd6b99d0a3e6d4736d",
  "kind": "def",
  "lexical_name": "QuadraticSubactionCertificate",
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
  "slug": "quadraticsubactioncertificate--b180daab7350a3f57d9c52e8",
  "source": {
    "blob": "1fa3e1caab0cc8bd04fd8935202d9fa4b8b16df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b180daab7350a3f57d9c52e891021c1e783860d226f0535cce6cac9ee5d73597",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c969465a79532eef82ab8ac2960d50c2ec53290f119a0fd6b99d0a3e6d4736d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def QuadraticSubactionCertificate (alpha beta a b u v c e : ℕ → ℝ)
    (N : ℕ) (L U : ℝ) : Prop :=
  ∀ j < N,
    let p := u (j + 1) * alpha j ^ 2 - u j
    let q := a j + 2 * u (j + 1) * alpha j * beta j + v (j + 1) * alpha j - v j
    let d := b j + u (j + 1) * beta j ^ 2 + v (j + 1) * beta j + c (j + 1) - c j
    p * L ^ 2 + q * L + d ≤ e j ∧
      p * L * U + q * (L + U) / 2 + d ≤ e j ∧
        p * U ^ 2 + q * U + d ≤ e j

/-- Quadratic interval certificates supply actual local subactions without inspecting the state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa3e1caab0cc8bd04fd8935202d9fa4b8b16df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
