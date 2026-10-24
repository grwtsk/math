# genWeightSpace_chainTopCoeff_add_one_zsmul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcd0fa9d-f98d-2267-cc9b-9a628d8b4135",
  "kind": "lemma",
  "lexical_name": "genWeightSpace_chainTopCoeff_add_one_zsmul_add",
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
  "slug": "genweightspace-chaintopcoeff-add-one-zsmul-add--73891e26efda76e4ce721dd0",
  "source": {
    "blob": "a978d1e35a2bdc257fb51a394b572f3b4e492609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 312,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant8a9a1875b4ac4d1b2bf1a5abd126b383fe93572a70f10c5cc388364b6dfdb2e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73891e26efda76e4ce721dd06e4423573b2377e3501e957d8f128308b31e8f35",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variant8a9a1875b4ac4d1b2bf1a5abd126b383fe93572a70f10c5cc388364b6dfdb2e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcd0fa9d-f98d-2267-cc9b-9a628d8b4135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma genWeightSpace_chainTopCoeff_add_one_zsmul_add :
    genWeightSpace M ((chainTopCoeff α β + 1 : ℤ) • α + β : L → R) = ⊥ := by
  rw [← genWeightSpace_chainTopCoeff_add_one_nsmul_add α β hα, ← Nat.cast_smul_eq_nsmul ℤ,
    Nat.cast_add, Nat.cast_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variant8a9a1875b4ac4d1b2bf1a5abd126b383fe93572a70f10c5cc388364b6dfdb2e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variant8a9a1875b4ac4d1b2bf1a5abd126b383fe93572a70f10c5cc388364b6dfdb2e5.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a978d1e35a2bdc257fb51a394b572f3b4e492609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
