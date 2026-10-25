# constantReferences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30cd768dbfa8fa65bc6232fdf8dad5c7671bc6c49f25a0d8ac0a5b328d7ac0ef",
  "kind": "def",
  "lexical_name": "constantReferences",
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
  "slug": "constantreferences--7fb57036ba324be89c31b9a0",
  "source": {
    "blob": "5d4c9d2dd6e90a8f9467601f7e0df00e46faa147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fb57036ba324be89c31b9a03141300f800a5f03b46126b52e16305774669b61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30cd768dbfa8fa65bc6232fdf8dad5c7671bc6c49f25a0d8ac0a5b328d7ac0ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantReferences {K : KernelPresentation.{u}} {J : K.Judgment}
    (plan : TreePlan K J) : Finset K.ConstantName :=
  (Eval plan).constantReferences

/--
**Architectural problem:** Plans must distinguish root variables from binders.
**Important data and indices:** Classifications and names come from `K` at root `J`.
**Type-enforced invariant:** Accounting traverses only the exact indexed plan.
**Layer boundary:** This is presentation metadata, not free-variable inference.
**Worked example:** The private identity plan reports no root variable.
**Used by:** Root-boundary diagnostics and `rootVariables_comp`.
**Proof idea:** Evaluate and reuse raw root-variable accounting.
**Equality notion:** Results are exact finite sets.
**Boundary cases:** Local-only plans may return `∅`.
**Validation consequence:** Compilation cannot silently change classifications.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CompileEval/Variant1ddfb5e8d799a14b40def35f7a1a1853d4eaaf2c052929d9de40cf8c8a8ce263.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4c9d2dd6e90a8f9467601f7e0df00e46faa147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
