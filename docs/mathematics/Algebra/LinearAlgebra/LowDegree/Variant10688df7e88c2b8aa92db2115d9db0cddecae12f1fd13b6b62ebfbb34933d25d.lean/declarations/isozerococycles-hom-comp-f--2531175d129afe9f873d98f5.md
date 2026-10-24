# isoZeroCocycles_hom_comp_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97ce4b2b-175a-a6bb-81f3-2e44e0f5ffbf",
  "kind": "lemma",
  "lexical_name": "isoZeroCocycles_hom_comp_f",
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
  "slug": "isozerococycles-hom-comp-f--2531175d129afe9f873d98f5",
  "source": {
    "blob": "b3cb1f0886281073156fcb019ba3bcdfce4170cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 815,
    "path": "GRWTSK/Algebra/LinearAlgebra/LowDegree/Variant10688df7e88c2b8aa92db2115d9db0cddecae12f1fd13b6b62ebfbb34933d25d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2531175d129afe9f873d98f57d09b50f703efe99cd7b526382b9ae2f647ad60e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LowDegree/Variant10688df7e88c2b8aa92db2115d9db0cddecae12f1fd13b6b62ebfbb34933d25d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97ce4b2b-175a-a6bb-81f3-2e44e0f5ffbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isoZeroCocycles_hom_comp_f :
    (isoZeroCocycles A).hom ≫ (shortComplexH0 A).f =
      iCocycles A 0 ≫ (zeroCochainsLequiv A).toModuleIso.hom := by
  dsimp [isoZeroCocycles]
  apply KernelFork.mapOfIsLimit_ι

@[deprecated (since := "2025-05-09")]
alias isoZeroCocycles_hom_comp_subtype := isoZeroCocycles_hom_comp_f

@[reassoc (attr := simp), elementwise (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LowDegree/Variant10688df7e88c2b8aa92db2115d9db0cddecae12f1fd13b6b62ebfbb34933d25d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LowDegree/Variant10688df7e88c2b8aa92db2115d9db0cddecae12f1fd13b6b62ebfbb34933d25d.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3cb1f0886281073156fcb019ba3bcdfce4170cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
