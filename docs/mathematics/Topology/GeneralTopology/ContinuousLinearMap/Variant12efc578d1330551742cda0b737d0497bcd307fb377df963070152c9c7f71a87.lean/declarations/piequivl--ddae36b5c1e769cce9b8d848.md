# piEquivL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e43afc4af07885583ae804a231b240ac0ad7444682e22dd4d832c4a10799ea6b",
  "kind": "def",
  "lexical_name": "piEquivL",
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
  "slug": "piequivl--ddae36b5c1e769cce9b8d848",
  "source": {
    "blob": "cf1ab6c17ed7bf07800d06ccf74a89a1055a88e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddae36b5c1e769cce9b8d848b2b4681127ddd63ccaf2632cde04769fc7f52a37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e43afc4af07885583ae804a231b240ac0ad7444682e22dd4d832c4a10799ea6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piEquivL :
    (Π i, E →L[𝕜] F i) ≃L[𝕜] (E →L[𝕜] Π i, F i) where
  toFun F := ContinuousLinearMap.pi F
  invFun f i := (ContinuousLinearMap.proj i).comp f
  __ := UniformConvergenceCLM.piEquivL _ _ _

end Pi

section BilinearMaps
variable {R 𝕜 𝕜₂ 𝕜₃ : Type*}
variable {E F G : Type*}

/-!
We prove some computation rules for continuous (semi-)bilinear maps in their first argument.
If `f` is a continuous bilinear map, to use the corresponding rules for the second argument, use
`(f _).map_add` and similar.
-/

section AddCommMonoid
variable
  [Semiring R] [NormedField 𝕜₂] [NormedField 𝕜₃]
  [AddCommMonoid E] [Module R E] [TopologicalSpace E]
  [AddCommGroup F] [Module 𝕜₂ F] [TopologicalSpace F]
  [AddCommGroup G] [Module 𝕜₃ G]
  [TopologicalSpace G] [IsTopologicalAddGroup G] [ContinuousConstSMul 𝕜₃ G]
  {σ₁₃ : R →+* 𝕜₃} {σ₂₃ : 𝕜₂ →+* 𝕜₃}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant12efc578d1330551742cda0b737d0497bcd307fb377df963070152c9c7f71a87.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1ab6c17ed7bf07800d06ccf74a89a1055a88e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
