# ext_fourfold''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb262b0736d668a5626b766bb7de35e5ac5fa361",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a16b506-78a3-63ce-1ccf-898f8bf58abd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02c83b7c-8944-532d-af27-c67d8e23e5a8",
  "kind": "theorem",
  "lexical_name": "ext_fourfold''",
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
  "slug": "ext-fourfold--1a32f6dc486ddff3e3390ad3",
  "source": {
    "blob": "fb262b0736d668a5626b766bb7de35e5ac5fa361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 251,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a32f6dc486ddff3e3390ad3d4a72b388ef03cbfb2e6e57ea4aecd5becc42f02",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02c83b7c-8944-532d-af27-c67d8e23e5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_fourfold'' {φ ψ : M ⊗[R] (N ⊗[R] P) ⊗[R] Q →ₛₗ[σ₁₂] P₂}
    (H : ∀ w x y z, φ (w ⊗ₜ (x ⊗ₜ y) ⊗ₜ z) = ψ (w ⊗ₜ (x ⊗ₜ y) ⊗ₜ z)) : φ = ψ := by
  ext m n p q
  exact H m n p q

end UniversalProperty

variable {M N}
section

variable (R M N)

/-- The tensor product of modules is commutative, up to linear equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb262b0736d668a5626b766bb7de35e5ac5fa361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
