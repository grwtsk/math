# pullbackConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ae3f67c35a6a6293b2a9320c292fc05b5f426728913028511914b3d94d5c362",
  "kind": "def",
  "lexical_name": "pullbackConeIsLimit",
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
  "slug": "pullbackconeislimit--248b973a0d64b0a99a3e9134",
  "source": {
    "blob": "bfc70abc933b035a68c19f0c3a826921e3c3ec1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 306,
    "path": "GRWTSK/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:248b973a0d64b0a99a3e9134acf69fd8d01f9234c73dda474b1b69403cc4edac",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ae3f67c35a6a6293b2a9320c292fc05b5f426728913028511914b3d94d5c362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackConeIsLimit {A B C : CommRingCat.{u}} (f : A ⟶ C) (g : B ⟶ C) :
    IsLimit (pullbackCone f g) := by
  fapply PullbackCone.IsLimit.mk
  · intro s
    apply (s.fst.prod s.snd).codRestrict
    intro x
    exact congr_arg (fun f : s.pt →+* C => f x) s.condition
  · intro s
    ext x
    rfl
  · intro s
    ext x
    rfl
  · intro s m e₁ e₂
    refine RingHom.ext fun (x : s.pt) => Subtype.ext ?_
    change (m x).1 = (_, _)
    have eq1 := (congr_arg (fun f : s.pt →+* A => f x) e₁ : _)
    have eq2 := (congr_arg (fun f : s.pt →+* B => f x) e₂ : _)
    rw [←eq1, ←eq2]
    rfl
set_option linter.uppercaseLean3 false in
#align CommRing.pullback_cone_is_limit CommRingCat.pullbackConeIsLimit

end Pullback

end CommRingCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant87635b3d353e62e0afff934aa8bb0673c0d30f2fca2799032e24ed9eb228c6cf.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc70abc933b035a68c19f0c3a826921e3c3ec1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
