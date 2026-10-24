# commute_rmul_rmul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4be2685c-a1aa-b14a-c63f-8f8a8234ad6d",
  "kind": "theorem",
  "lexical_name": "commute_rmul_rmul_sq",
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
  "slug": "commute-rmul-rmul-sq--58c1a868ecb1394fb16fbcb0",
  "source": {
    "blob": "0784f9133207218dc302ef9db7c7ab5c74655d3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58c1a868ecb1394fb16fbcb0181291afdbb1a8c7ed6a3b7f19ab285ec2fb85af",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4be2685c-a1aa-b14a-c63f-8f8a8234ad6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_rmul_rmul_sq (a : A) : Commute (R a) (R (a * a)) :=
  AddMonoidHom.ext fun _ => (IsJordan.rmul_comm_rmul_rmul _ _).symm

end Commute

variable {A} [NonUnitalNonAssocCommRing A]

attribute [local instance 100] LieRing.ofAssociativeRing

/-!
The endomorphisms on an additive monoid `AddMonoid.End` form a `Ring`, and this may be equipped
with a Lie Bracket via `Ring.bracket`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4af7b1c4dcefcab13ada152d2dd579229a4c3aacce5df97b1d924f7c9bf88e7f.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0784f9133207218dc302ef9db7c7ab5c74655d3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
