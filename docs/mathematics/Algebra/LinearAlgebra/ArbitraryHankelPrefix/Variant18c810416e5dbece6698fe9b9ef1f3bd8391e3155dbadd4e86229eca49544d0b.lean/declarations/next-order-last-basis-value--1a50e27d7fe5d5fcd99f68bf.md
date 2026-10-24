# next_order_last_basis_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d242247f-79b8-dcea-23bf-b907d4469a58",
  "kind": "theorem",
  "lexical_name": "next_order_last_basis_value",
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
  "slug": "next-order-last-basis-value--1a50e27d7fe5d5fcd99f68bf",
  "source": {
    "blob": "53d6284b7a18af2d7b6743e7947fae334b0eb993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a50e27d7fe5d5fcd99f68bf4814ac520481714e9eb08c3845a74ac1a3fd2bbe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d242247f-79b8-dcea-23bf-b907d4469a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem next_order_last_basis_value (s : ℕ → ℝ) (d : ℕ) (c : ℝ) :
    (Pi.single (Fin.last (d+1)) (1 : ℝ) : Fin (d+2) → ℝ) ⬝ᵥ
      (Matrix.of (fun i j : Fin (d+2) => changeDiagonal s d c (i.val+j.val)) *ᵥ
        (Pi.single (Fin.last (d+1)) 1 : Fin (d+2) → ℝ)) = c := by
  rw [single_dotProduct, mulVec_single_one]
  simp [Matrix.col, changeDiagonal, show d+1+(d+1)=2*d+2 by omega]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ArbitraryHankelPrefix/Variant18c810416e5dbece6698fe9b9ef1f3bd8391e3155dbadd4e86229eca49544d0b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d6284b7a18af2d7b6743e7947fae334b0eb993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
