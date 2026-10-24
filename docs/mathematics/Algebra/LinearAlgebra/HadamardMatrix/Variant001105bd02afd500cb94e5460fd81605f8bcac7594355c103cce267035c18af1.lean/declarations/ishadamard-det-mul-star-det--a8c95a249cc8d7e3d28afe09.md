# IsHadamard.det_mul_star_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a9e6cea-1c0d-3e6d-0089-6997b7bb62eb",
  "kind": "theorem",
  "lexical_name": "IsHadamard.det_mul_star_det",
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
  "slug": "ishadamard-det-mul-star-det--a8c95a249cc8d7e3d28afe09",
  "source": {
    "blob": "96d28597998ad54c95d1f75c4a57946c4cfcfaff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 194,
    "path": "GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8c95a249cc8d7e3d28afe09532df0e67fc460407e0ec4418c23ff500ef67fe2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a9e6cea-1c0d-3e6d-0089-6997b7bb62eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsHadamard.det_mul_star_det (hA : A.IsHadamard) :
    A.det * star A.det = (Fintype.card n : R) ^ Fintype.card n := by
  have := congr_arg det hA.mul_conjTranspose
  rwa [det_mul, det_conjTranspose, det_smul, det_one, mul_one] at this

/-- The Hadamard determinant identity: `star (det A) * det A = (card n)^(card n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant001105bd02afd500cb94e5460fd81605f8bcac7594355c103cce267035c18af1.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d28597998ad54c95d1f75c4a57946c4cfcfaff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
