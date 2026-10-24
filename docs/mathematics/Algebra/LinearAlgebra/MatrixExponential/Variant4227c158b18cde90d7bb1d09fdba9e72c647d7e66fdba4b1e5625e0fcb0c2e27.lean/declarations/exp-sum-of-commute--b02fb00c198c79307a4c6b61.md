# exp_sum_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2a0dec8-c740-46a2-6083-12ccc09d0318",
  "kind": "theorem",
  "lexical_name": "exp_sum_of_commute",
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
  "slug": "exp-sum-of-commute--b02fb00c198c79307a4c6b61",
  "source": {
    "blob": "9a9c641b8a0847a3002e58fc5e184b4944f29a20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b02fb00c198c79307a4c6b6123a1102572f5a2098912c090878c0d541605b782",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a0dec8-c740-46a2-6083-12ccc09d0318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem exp_sum_of_commute {ι} (s : Finset ι) (f : ι → Matrix m m 𝔸)
    (h : (s : Set ι).Pairwise (Commute on f)) :
    exp (∑ i ∈ s, f i) =
      s.noncommProd (fun i => exp (f i)) fun _ hi _ hj _ => (h.forall₂ hi hj).exp :=
  open scoped Norms.Operator in exp_sum_of_commute s f h

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variant4227c158b18cde90d7bb1d09fdba9e72c647d7e66fdba4b1e5625e0fcb0c2e27.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a9c641b8a0847a3002e58fc5e184b4944f29a20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
