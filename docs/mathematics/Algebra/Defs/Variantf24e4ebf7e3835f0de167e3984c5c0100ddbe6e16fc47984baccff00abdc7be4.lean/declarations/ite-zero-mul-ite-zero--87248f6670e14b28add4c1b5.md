# ite_zero_mul_ite_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:356b8d70-ef2b-499a-7026-98b5c38d719c",
  "kind": "lemma",
  "lexical_name": "ite_zero_mul_ite_zero",
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
  "slug": "ite-zero-mul-ite-zero--87248f6670e14b28add4c1b5",
  "source": {
    "blob": "e6f9dd3e35cbf8c99c3e643c3c8bc1a1c6a361a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 209,
    "path": "GRWTSK/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87248f6670e14b28add4c1b5883047d729b8e6744f6b0ffb553b6276a9c5cc80",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:356b8d70-ef2b-499a-7026-98b5c38d719c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ite_zero_mul_ite_zero : ite P a 0 * ite Q b 0 = ite (P ∧ Q) (a * b) 0 := by
  simp only [← ite_and, ite_mul, mul_ite, mul_zero, zero_mul, and_comm]

end MulZeroClass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantf24e4ebf7e3835f0de167e3984c5c0100ddbe6e16fc47984baccff00abdc7be4.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6f9dd3e35cbf8c99c3e643c3c8bc1a1c6a361a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
