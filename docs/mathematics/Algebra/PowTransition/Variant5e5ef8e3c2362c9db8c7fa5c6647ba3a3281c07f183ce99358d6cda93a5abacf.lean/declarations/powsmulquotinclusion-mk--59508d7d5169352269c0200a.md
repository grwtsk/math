# powSMulQuotInclusion_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:290f6a0b-722c-625b-c013-4f32c19ce20e",
  "kind": "theorem",
  "lexical_name": "powSMulQuotInclusion_mk",
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
  "slug": "powsmulquotinclusion-mk--59508d7d5169352269c0200a",
  "source": {
    "blob": "e67b5b2ad7ac63e6326f5f2b95d9fe8e93bd8693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 206,
    "path": "GRWTSK/Algebra/PowTransition/Variant5e5ef8e3c2362c9db8c7fa5c6647ba3a3281c07f183ce99358d6cda93a5abacf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59508d7d5169352269c0200a1bb864b3fd11e43a2110525198b088a16f87af44",
  "verification": {
    "reference": "docs/verification/Algebra/PowTransition/Variant5e5ef8e3c2362c9db8c7fa5c6647ba3a3281c07f183ce99358d6cda93a5abacf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290f6a0b-722c-625b-c013-4f32c19ce20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powSMulQuotInclusion_mk (h : c = b + a) (N : Submodule R M)
    (x : ↑(I ^ a • N)) : powSMulQuotInclusion I M h N (Quotient.mk x) = Quotient.mk (x : M) := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowTransition/Variant5e5ef8e3c2362c9db8c7fa5c6647ba3a3281c07f183ce99358d6cda93a5abacf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowTransition/Variant5e5ef8e3c2362c9db8c7fa5c6647ba3a3281c07f183ce99358d6cda93a5abacf.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e67b5b2ad7ac63e6326f5f2b95d9fe8e93bd8693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
