# lie_apply_proj_of_leftInverse_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:812ec2fb-bda1-7029-d668-a1f1699e46ba",
  "kind": "lemma",
  "lexical_name": "lie_apply_proj_of_leftInverse_eq",
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
  "slug": "lie-apply-proj-of-leftinverse-eq--732d65380ae2eaaecb9d2fb6",
  "source": {
    "blob": "ab9ba471259a2b2625021c90af021e73648d061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 382,
    "path": "GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:732d65380ae2eaaecb9d2fb638f88e9081d4f8751df98f73be7cc5a8fff250c0",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:812ec2fb-bda1-7029-d668-a1f1699e46ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_apply_proj_of_leftInverse_eq [IsLieAbelian M] (E : Extension R M L) {s : L →ₗ[R] E.L}
    (hs : LeftInverse E.proj s) (x : E.L) (y : E.proj.ker) :
    ⁅s (E.proj x), y⁆ = ⁅x, y⁆ := by
  rw [← sub_eq_zero, ← sub_lie]
  exact trivial_lie_zero E.proj.ker E.proj.ker ⟨_, (by simp [hs.eq])⟩ y

set_option backward.privateInPublic true in
/-- A preparatory function for making a 2-cocycle from a linear splitting of an extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variantcc9dfd4481d4bff0e3af92c1f6fb5731f4bc6345de7e343f61adbbb8e1fa1ba0.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9ba471259a2b2625021c90af021e73648d061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
