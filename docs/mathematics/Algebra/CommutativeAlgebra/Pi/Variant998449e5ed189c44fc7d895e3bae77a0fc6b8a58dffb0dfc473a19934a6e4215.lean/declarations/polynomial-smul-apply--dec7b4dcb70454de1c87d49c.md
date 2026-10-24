# polynomial_smul_apply'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beaeccd2-1f8f-0f2a-fdf4-c66839c59734",
  "kind": "theorem",
  "lexical_name": "polynomial_smul_apply'",
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
  "slug": "polynomial-smul-apply--dec7b4dcb70454de1c87d49c",
  "source": {
    "blob": "8c0165dd378b87f53e8126e5d115d5bbf6ad47d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 51,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dec7b4dcb70454de1c87d49c3d900deb8aa3c739e15ff781417be6d4472bea04",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beaeccd2-1f8f-0f2a-fdf4-c66839c59734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_smul_apply' [CommSemiring R] [Semiring S] [Algebra R S] [SMul S T]
    (p : R[X]) (f : S → T) (x : S) : (p • f) x = aeval x p • f x :=
  rfl

variable [CommSemiring R] [CommSemiring S] [CommSemiring T] [Algebra R S] [Algebra S T]

-- Porting note: the proofs in this definition used `funext` in term-mode, but I was not able
-- to get them to work anymore.
/-- This is not an instance for the same reasons as `Polynomial.hasSMulPi'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pi/Variant998449e5ed189c44fc7d895e3bae77a0fc6b8a58dffb0dfc473a19934a6e4215.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0165dd378b87f53e8126e5d115d5bbf6ad47d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
