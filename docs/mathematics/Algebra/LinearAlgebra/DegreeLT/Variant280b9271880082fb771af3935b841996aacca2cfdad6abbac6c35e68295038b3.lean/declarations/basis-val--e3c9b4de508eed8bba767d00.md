# basis_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faf1b5c1-2844-ae7d-1095-41e2e8aee593",
  "kind": "lemma",
  "lexical_name": "basis_val",
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
  "slug": "basis-val--e3c9b4de508eed8bba767d00",
  "source": {
    "blob": "8715ce3b0e0d6807062d40b3ee0c18a4a751f15d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3c9b4de508eed8bba767d004acb8425932961a61de540744493c89e9931447f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faf1b5c1-2844-ae7d-1095-41e2e8aee593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma basis_val : (basis R n i : R[X]) = X ^ (i : ℕ) := by
  change _ = ((⟨X ^ (i : ℕ), mem_degreeLT.2 <| (degree_X_pow_le i).trans_lt <|
      Nat.cast_lt.2 i.is_lt⟩ : R[X]_n) : R[X])
  refine congr_arg _ (Basis.apply_eq_iff.2 <| Finsupp.ext fun j ↦ ?_)
  simp only [basis_repr, coeff_X_pow, eq_comm, Finsupp.single_apply, Fin.ext_iff]

variable (R m n) in
/-- Basis for `R[X]_m × R[X]_n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8715ce3b0e0d6807062d40b3ee0c18a4a751f15d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
