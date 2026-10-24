# CancelMonoidWithZero.faithfulSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ff596c9de083e227f349056c126731798f88dd2165f5f4d0ddef6fc478487bc",
  "kind": "instance",
  "lexical_name": "CancelMonoidWithZero.faithfulSMul",
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
  "slug": "cancelmonoidwithzero-faithfulsmul--6db8df72478ba19edf43789c",
  "source": {
    "blob": "9bd0c46487d39e6a07029c7b4e20c6a4690f960d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 28,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Faithful/Variant87683733beb5f85a27bb2d22af537158a3b769682640b92cf3812415e9d8eda2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6db8df72478ba19edf43789cbcc37319a636c8d7248ffe84fd60a3578d0a1d3c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Faithful/Variant87683733beb5f85a27bb2d22af537158a3b769682640b92cf3812415e9d8eda2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ff596c9de083e227f349056c126731798f88dd2165f5f4d0ddef6fc478487bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CancelMonoidWithZero.faithfulSMul [CancelMonoidWithZero α] [Nontrivial α] :
    FaithfulSMul α α where eq_of_smul_eq_smul  h := mul_left_injective₀ one_ne_zero (h 1)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Faithful/Variant87683733beb5f85a27bb2d22af537158a3b769682640b92cf3812415e9d8eda2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Faithful/Variant87683733beb5f85a27bb2d22af537158a3b769682640b92cf3812415e9d8eda2.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd0c46487d39e6a07029c7b4e20c6a4690f960d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
