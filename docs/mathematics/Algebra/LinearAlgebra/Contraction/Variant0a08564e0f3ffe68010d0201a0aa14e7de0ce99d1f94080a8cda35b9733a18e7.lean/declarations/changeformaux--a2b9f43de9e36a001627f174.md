# changeFormAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:327d04bef0e1a10c53c107b9e8ef8de23b1b85b5f063b914c80811980f52f343",
  "kind": "def",
  "lexical_name": "changeFormAux",
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
  "slug": "changeformaux--a2b9f43de9e36a001627f174",
  "source": {
    "blob": "bafb9fcb6027b48328eff0d23bdfc81bd5dd28e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 245,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b9f43de9e36a001627f17494f8f6ae120b6f2496b173cc109405adb888e35b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:327d04bef0e1a10c53c107b9e8ef8de23b1b85b5f063b914c80811980f52f343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def changeFormAux (B : BilinForm R M) : M →ₗ[R] CliffordAlgebra Q →ₗ[R] CliffordAlgebra Q :=
  haveI v_mul := (Algebra.lmul R (CliffordAlgebra Q)).toLinearMap ∘ₗ ι Q
  v_mul - contractLeft ∘ₗ (BilinForm.toLin B)
#align clifford_algebra.change_form_aux CliffordAlgebra.changeFormAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0a08564e0f3ffe68010d0201a0aa14e7de0ce99d1f94080a8cda35b9733a18e7.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafb9fcb6027b48328eff0d23bdfc81bd5dd28e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
