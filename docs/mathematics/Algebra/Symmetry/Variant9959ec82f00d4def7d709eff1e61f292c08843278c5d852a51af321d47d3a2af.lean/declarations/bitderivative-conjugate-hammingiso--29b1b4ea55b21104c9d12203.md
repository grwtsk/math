# bitDerivative_conjugate_hammingIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b208d281-6506-e3e0-fff7-e4aaceb21ee0",
  "kind": "theorem",
  "lexical_name": "bitDerivative_conjugate_hammingIso",
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
  "slug": "bitderivative-conjugate-hammingiso--29b1b4ea55b21104c9d12203",
  "source": {
    "blob": "7485cdf53c855ccabd410ce7351ea37ed0a77c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 399,
    "path": "GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29b1b4ea55b21104c9d12203a6ae79cb6db53d2f953bd7e5fb0da78d9ead8508",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b208d281-6506-e3e0-fff7-e4aaceb21ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitDerivative_conjugate_hammingIso {n : Nat}
    (g : HammingIso n)
    (H : BitPerm n)
    (i : Fin n)
    (x : Bits n) :
    bitDerivative (conjugate g.toPerm H) i x =
      coordinatePermutation g.coordinates
        (bitDerivative H (g.coordinates.symm i) (g.toPerm.symm x)) := by
  rw [bitDerivative, derivative]
  rw [conjugate_apply, conjugate_apply]
  rw [HammingIso.toPerm_symm_xor_basis]
  rw [HammingIso.toPerm_xor_cancel]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variant9959ec82f00d4def7d709eff1e61f292c08843278c5d852a51af321d47d3a2af.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7485cdf53c855ccabd410ce7351ea37ed0a77c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
