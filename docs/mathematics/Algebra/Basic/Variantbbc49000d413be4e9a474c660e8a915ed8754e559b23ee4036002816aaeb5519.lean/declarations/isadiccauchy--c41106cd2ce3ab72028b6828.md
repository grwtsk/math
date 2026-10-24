# IsAdicCauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9a6b48f1a51030a7a97652562acc059eb5f45015bfc0959961dd2b7a9d88157",
  "kind": "def",
  "lexical_name": "IsAdicCauchy",
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
  "slug": "isadiccauchy--c41106cd2ce3ab72028b6828",
  "source": {
    "blob": "cca4090bf3f9bb8b425ffdcd6e245f10e221b333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 434,
    "path": "GRWTSK/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c41106cd2ce3ab72028b68285e9e3b3c0bf92155508a4dcbb9449b56e4d1275c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9a6b48f1a51030a7a97652562acc059eb5f45015bfc0959961dd2b7a9d88157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsAdicCauchy (f : ℕ → M) : Prop :=
  ∀ {m n}, m ≤ n → f m ≡ f n [SMOD (I ^ m • ⊤ : Submodule R M)]

/-- The type of `I`-adic Cauchy sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca4090bf3f9bb8b425ffdcd6e245f10e221b333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
