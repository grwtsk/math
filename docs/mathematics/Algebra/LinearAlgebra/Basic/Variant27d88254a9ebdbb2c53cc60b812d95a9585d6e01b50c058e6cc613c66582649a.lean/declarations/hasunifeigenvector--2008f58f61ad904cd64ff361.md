# HasUnifEigenvector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb381d21805125a8080dd36ef6578c02e94c5cdba5f15cd49959d167cf5a4d12",
  "kind": "def",
  "lexical_name": "HasUnifEigenvector",
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
  "slug": "hasunifeigenvector--2008f58f61ad904cd64ff361",
  "source": {
    "blob": "ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2008f58f61ad904cd64ff3619d726af3a00cb65d119c47bc4206f0fdb0e2344d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb381d21805125a8080dd36ef6578c02e94c5cdba5f15cd49959d167cf5a4d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasUnifEigenvector (f : End R M) (μ : R) (k : ℕ∞) (x : M) : Prop :=
  x ∈ f.genEigenspace μ k ∧ x ≠ 0

/-- Let `M` be an `R`-module, and `f` an `R`-linear endomorphism of `M`.
Then `μ : R` and `k : ℕ∞` satisfy `HasUnifEigenvalue f μ k` if
`f.genEigenspace μ k ≠ ⊥`.

For `k = 1`, this means that `μ` is an eigenvalue of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
