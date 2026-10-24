# preKernelInner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6cc3e9fa6f0aaf9a544ad12cf3e9a4c97e1072e28fd66b015f1ae99c4120983",
  "kind": "def",
  "lexical_name": "preKernelInner",
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
  "slug": "prekernelinner--8e50209b5eb0c31a7ed5d51d",
  "source": {
    "blob": "a6c4b9d68541b8bfbd68d748ccaa511b93488458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e50209b5eb0c31a7ed5d51d6bf6519247433b27df29dba78049602a47fbaea2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6cc3e9fa6f0aaf9a544ad12cf3e9a4c97e1072e28fd66b015f1ae99c4120983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preKernelInner
    (left right : PreKernelSpace kernel) : ℂ :=
  Quotient.liftOn₂' left right (Raw.inner kernel)
    (rawInner_respects_quotient kernel)

/-- The descended form is represented by the raw kernel form and is therefore
independent of the selected representatives. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant987c48780aa1500111740277602f5370c14398eb2ae044a6816d8f149f56af42.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c4b9d68541b8bfbd68d748ccaa511b93488458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
