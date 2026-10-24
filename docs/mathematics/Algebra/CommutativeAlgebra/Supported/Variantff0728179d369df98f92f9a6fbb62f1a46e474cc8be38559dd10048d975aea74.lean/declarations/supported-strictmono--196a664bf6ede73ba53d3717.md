# supported_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41571fe1-60f5-c35f-526c-8e01e3af7fb6",
  "kind": "theorem",
  "lexical_name": "supported_strictMono",
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
  "slug": "supported-strictmono--196a664bf6ede73ba53d3717",
  "source": {
    "blob": "e824f1caefe451252b67edd196e7f988fec4237a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 116,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:196a664bf6ede73ba53d3717487c89c91e150ef0c3628e7e81feaef1b0b8b5f6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41571fe1-60f5-c35f-526c-8e01e3af7fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_strictMono [Nontrivial R] :
    StrictMono (supported R : Set σ → Subalgebra R (MvPolynomial σ R)) :=
  strictMono_of_le_iff_le fun _ _ ↦ supported_le_supported_iff.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Supported/Variantff0728179d369df98f92f9a6fbb62f1a46e474cc8be38559dd10048d975aea74.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e824f1caefe451252b67edd196e7f988fec4237a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
