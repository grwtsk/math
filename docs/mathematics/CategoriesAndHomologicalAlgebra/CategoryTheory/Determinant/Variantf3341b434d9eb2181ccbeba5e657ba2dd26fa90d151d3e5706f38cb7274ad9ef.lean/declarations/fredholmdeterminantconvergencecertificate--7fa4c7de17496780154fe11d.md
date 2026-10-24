# fredholmDeterminantConvergenceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38cb5daa07810a42cc8aa0f0e384f39ae2fac08a9633488493762b0fe5b305a4",
  "kind": "def",
  "lexical_name": "fredholmDeterminantConvergenceCertificate",
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
  "slug": "fredholmdeterminantconvergencecertificate--7fa4c7de17496780154fe11d",
  "source": {
    "blob": "b7b1114b0ae9a896c41a0ab1105b0a1a8bc6f003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 305,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fa4c7de17496780154fe11d08aa7663b2c86ff1546035fd38ae997a00d47a9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38cb5daa07810a42cc8aa0f0e384f39ae2fac08a9633488493762b0fe5b305a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fredholmDeterminantConvergenceCertificate
    (A : FredholmDeterminantConvergenceAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.fredholmDeterminantConvergence
  label := "Fredholm determinant convergence certificate"
  publicHash := 0
  sound :=
    A.traceClassPerturbationSound ∧
      A.determinantConvergesSound ∧
      A.finiteApproximationSound
  soundProof := fredholm_determinant_convergence_authorized A

/-- Convert a trace-log expansion authority into an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Determinant/Variantf3341b434d9eb2181ccbeba5e657ba2dd26fa90d151d3e5706f38cb7274ad9ef.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7b1114b0ae9a896c41a0ab1105b0a1a8bc6f003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
