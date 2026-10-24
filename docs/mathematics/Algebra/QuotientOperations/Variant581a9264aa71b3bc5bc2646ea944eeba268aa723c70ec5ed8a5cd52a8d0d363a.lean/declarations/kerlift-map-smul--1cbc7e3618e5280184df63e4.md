# KerLift.map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e37043b08ba29f8c19d8a890d3e3667ce700414a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc475544-81f3-c583-9266-357fc2674f0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef7e44d3-8d23-ccf2-809d-3bf4a9056c4e",
  "kind": "theorem",
  "lexical_name": "KerLift.map_smul",
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
  "slug": "kerlift-map-smul--1cbc7e3618e5280184df63e4",
  "source": {
    "blob": "e37043b08ba29f8c19d8a890d3e3667ce700414a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 260,
    "path": "GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cbc7e3618e5280184df63e4097148088c2b893fc22bf5cb18c6b7ec8b53ac89",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef7e44d3-8d23-ccf2-809d-3bf4a9056c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KerLift.map_smul (f : A →ₐ[R₁] B) (r : R₁) (x : A ⧸ (RingHom.ker f.toRingHom)) :
    f.toRingHom.kerLift (r • x) = r • f.toRingHom.kerLift x := by
  obtain ⟨a, rfl⟩ := Quotient.mkₐ_surjective R₁ _ x
  exact f.map_smul _ _
#align ideal.ker_lift.map_smul Ideal.KerLift.map_smul

/-- The induced algebras morphism from the quotient by the kernel to the codomain.

This is an isomorphism if `f` has a right inverse (`quotientKerAlgEquivOfRightInverse`) /
is surjective (`quotientKerAlgEquivOfSurjective`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e37043b08ba29f8c19d8a890d3e3667ce700414a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
