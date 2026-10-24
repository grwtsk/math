# CharZero.of_noZeroSMulDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f782131e-8f36-3bf6-b4e7-e5b4f960eadf",
  "kind": "theorem",
  "lexical_name": "CharZero.of_noZeroSMulDivisors",
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
  "slug": "charzero-of-nozerosmuldivisors--151f0a167f93a7c7537b367e",
  "source": {
    "blob": "157d298aad6c988e1017f4ee50b7a0b830b832db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:151f0a167f93a7c7537b367edf97066f586aa1274c5e31a822677714be73da7a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f782131e-8f36-3bf6-b4e7-e5b4f960eadf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CharZero.of_noZeroSMulDivisors [Nontrivial M] [NoZeroSMulDivisors ℤ M] : CharZero R := by
  refine ⟨fun {n m h} ↦ ?_⟩
  obtain ⟨x, hx⟩ := exists_ne (0 : M)
  replace h : (n : ℤ) • x = (m : ℤ) • x := by simp [← Nat.cast_smul_eq_nsmul R, h]
  simpa using smul_left_injective ℤ hx h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Varianteb82321ebced96467b59ff7796ce1cdc19fe8af69020ab8f39642a2f00e722a5.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157d298aad6c988e1017f4ee50b7a0b830b832db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
