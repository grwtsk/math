# center_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5c9582a-b667-0551-2f84-874112f46bf0",
  "kind": "theorem",
  "lexical_name": "center_pi",
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
  "slug": "center-pi--a6c5d84f39fbd45c4a301950",
  "source": {
    "blob": "6d3a4c6c0562701b903c42d78219ee82912378e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 234,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c5d84f39fbd45c4a30195053432ddd60163d4da562b3d6a229af00dbfef544",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5c9582a-b667-0551-2f84-874112f46bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem center_pi {ι : Type*} {A : ι → Type*} [Π i, Mul (A i)] :
    center (Π i, A i) = univ.pi fun i ↦ center (A i) := by
  classical
  ext x
  simp only [mem_pi, mem_center_iff, isMulCentral_iff, mem_univ, forall_true_left,
    commute_iff_eq, funext_iff, Pi.mul_def]
  refine ⟨fun ⟨h1, h2, h3⟩ i ↦ ?_, by grind⟩
  exact ⟨fun a ↦ by simpa using h1 (update x i a) i,
    fun b c ↦ by simpa using h2 (update x i b) (update x i c) i,
    fun a b ↦ by simpa using h3 (update x i a) (update x i b) i⟩

end Mul

section Semigroup
variable [Semigroup M] {a b : M}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3a4c6c0562701b903c42d78219ee82912378e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
