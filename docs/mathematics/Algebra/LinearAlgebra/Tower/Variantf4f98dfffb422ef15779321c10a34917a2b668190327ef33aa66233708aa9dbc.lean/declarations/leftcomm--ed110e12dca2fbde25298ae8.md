# leftComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5cd73d2e1d09251e47efe5859f0c49095d1ac2172b89e9073e429d89b782fbe",
  "kind": "def",
  "lexical_name": "leftComm",
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
  "slug": "leftcomm--ed110e12dca2fbde25298ae8",
  "source": {
    "blob": "624f1927be2eb375292dafce54cd1d30eba01e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 458,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed110e12dca2fbde25298ae8f064ff32a3af7bfabf97bd8b7b1b6f6871609de2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5cd73d2e1d09251e47efe5859f0c49095d1ac2172b89e9073e429d89b782fbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftComm : M ⊗[A] (P ⊗[R] Q) ≃ₗ[A] P ⊗[A] (M ⊗[R] Q) :=
  let e₁ := (assoc R A A M P Q).symm
  let e₂ := congr (TensorProduct.comm A M P) (1 : Q ≃ₗ[R] Q)
  let e₃ := assoc R A A P M Q
  e₁ ≪≫ₗ e₂ ≪≫ₗ e₃

variable {M N P Q}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624f1927be2eb375292dafce54cd1d30eba01e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
