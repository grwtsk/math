# PackingFactorTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5834483ad4d08b9cfe1689fad565ab7a25eedd3383413114539fda60620b08d",
  "kind": "def",
  "lexical_name": "PackingFactorTerminal",
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
  "slug": "packingfactorterminal--cb0147f6dbf510d33622c89c",
  "source": {
    "blob": "475720368a66d26fe49b426507cc009f9ea86bae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variant86c442d48635e913a4184fda3edd85a1ac75f63500ca436d3b647aa38c654533.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb0147f6dbf510d33622c89c4a14b983a413baf543df2ed466fdc9a940ea9081",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variant86c442d48635e913a4184fda3edd85a1ac75f63500ca436d3b647aa38c654533.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5834483ad4d08b9cfe1689fad565ab7a25eedd3383413114539fda60620b08d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PackingFactorTerminal : Prop :=
  (∀ (N : ℕ) (s : FactorState.State N),
    ¬(FactorState.ResidualOne s ∧ FactorState.PrimeResidual s)) ∧
  (∀ (N : ℕ) (s : FactorState.State N), 2 ≤ s.residual →
    (∀ p, p.Prime → p ≤ s.horizon → p ∈ s.excluded) → FactorState.PrimeResidual s) ∧
  (∀ (N : ℕ) (s : FactorState.State N) (c : FactorState.ResidualOne s),
    N.factorization = (FactorState.closeOne s c).factors) ∧
  (∀ (N : ℕ) (s : FactorState.State N) (c : FactorState.PrimeResidual s),
    N.factorization = (FactorState.closePrime s c).factors ∧
      (FactorState.closePrime s c).factors s.residual = 1)

/-- Both terminal routes use existing complete-factorization certificates.
A prime residual is appended with depth one, never silently merged into residual one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variant86c442d48635e913a4184fda3edd85a1ac75f63500ca436d3b647aa38c654533.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variant86c442d48635e913a4184fda3edd85a1ac75f63500ca436d3b647aa38c654533.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `475720368a66d26fe49b426507cc009f9ea86bae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
