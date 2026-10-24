# algEquiv_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bbddf18-dd8f-0069-6c8a-a84af372926a",
  "kind": "lemma",
  "lexical_name": "algEquiv_deriv",
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
  "slug": "algequiv-deriv--4e571c184ccfc6a552c04878",
  "source": {
    "blob": "75ac7f3d0fd8c6898a46748649028a6a7e3aa085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 193,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e571c184ccfc6a552c04878b0034c2f9748671c3164b4fe5e02afeb940348a7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bbddf18-dd8f-0069-6c8a-a84af372926a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algEquiv_deriv (f : R ≃ₐ[A] R') (x : R) (h : IsSeparable A x) :
    f (x′) = (f x)′ :=
  haveI := f.nontrivial
  algHom_deriv f.toAlgHom f.injective x h

variable [Algebra.IsSeparable A R]

/--
`algHom_deriv` in a separable algebra
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant894fade06719f172afe7e5a77bcbdca43c96aa43b84e6e98022b3c5e9706ca7b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ac7f3d0fd8c6898a46748649028a6a7e3aa085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
